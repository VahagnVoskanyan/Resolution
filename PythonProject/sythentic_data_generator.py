import re
import os
from itertools import combinations
import random
import numpy as np

# Step 1: Load TPTP CNF Axioms from File
def load_tptp_axioms(folder_path):
    """Reads all .ax files in a folder and extracts CNF clauses."""
    cnf_clauses = []
    file_paths = [os.path.join(folder_path, f) for f in os.listdir(folder_path) if f.endswith('.ax')]

    for file_path in file_paths:
        with open(file_path, 'r') as f:
            clause_lines = []
            in_clause = False
            for line in f:
                line = line.strip()
                if line.startswith('%') or not line:
                    continue  # Skip comments and empty lines
                
                if line.startswith('cnf('):
                    in_clause = True
                    clause_lines = [line]
                elif in_clause:
                    clause_lines.append(line)
                    if line.endswith(').'):  # End of clause
                        full_clause = ' '.join(clause_lines)
                        clause = extract_cnf_clause(full_clause)
                        if clause:
                            cnf_clauses.append(clause)
                        clause_lines = []
                        in_clause = False
    return cnf_clauses

# Step 2: Extract CNF Clause from a Line
def extract_cnf_clause(line):
    """Parses a CNF clause from a TPTP format line."""
    # More robust regex pattern to handle multi-line clauses
    match = re.search(r'cnf\([^,]*,[^,]*,\s*\((.*?)\)\s*\)\s*\.', line, re.DOTALL)
    if match:
        clause_content = match.group(1)
        # Remove whitespace and newlines, then split on |
        clause_content = re.sub(r'\s+', '', clause_content)
        clause = clause_content.split('|')
        return set(clause)
    return None

# Step 3: Apply Resolution (Linear Resolution Strategy)
def resolve(clauses, max_steps=5, softmax_temp=0.5):
    """Performs linear resolution with size control and uniqueness check."""
    new_clauses = clauses.copy()
    seen_clauses = set(map(frozenset, new_clauses))
    
    for step in range(max_steps):
        last_clause = new_clauses[-1] if new_clauses else random.choice(clauses)
        partner_clause = random.choice(clauses)
        
        resolvents = binary_resolution(last_clause, partner_clause)
        resolvents = [c for c in resolvents if len(" | ".join(c)) <= 64]  # Clause size limit
        
        if resolvents:
            chosen_clause = softmax_select(resolvents, temp=softmax_temp)
            if frozenset(chosen_clause) not in seen_clauses:
                new_clauses.append(chosen_clause)
                seen_clauses.add(frozenset(chosen_clause))
    
    return new_clauses

# Step 4: Binary Resolution
def binary_resolution(clause1, clause2):
    """Performs binary resolution between two clauses."""
    resolvents = []
    for l1 in clause1:
        for l2 in clause2:
            if l1 == '~' + l2 or l2 == '~' + l1:
                new_clause = (clause1 - {l1}) | (clause2 - {l2})
                if new_clause:
                    resolvents.append(new_clause)
    return resolvents

# Step 5: Softmax Selection to Avoid Large Clauses
def softmax_select(clauses, temp=0.5):
    """Selects a clause based on softmax weighting (favoring smaller ones)."""
    sizes = np.array([len(c) for c in clauses])
    weights = np.exp(-sizes / temp)
    probs = weights / weights.sum()
    return random.choices(clauses, weights=probs, k=1)[0]

# Step 6: Save Generated Theorems
def save_generated_clauses(clauses, output_file):
    """Appends the generated clauses to an existing TPTP file."""
    with open(output_file, 'a') as f:  # Append mode
        for i, clause in enumerate(clauses):
            f.write(f'cnf(generated_{i}, conjecture, ({" | ".join(clause)})).\n')

def grid_search_fwdp(clauses, n_values, t_values):
    """Finds the best N (steps) and T (temperature) for theorem generation."""
    best_n, best_t, best_score = None, None, float('-inf')
    
    for N in n_values:
        for T in t_values:
            generated_clauses = resolve(clauses, max_steps=N, softmax_temp=T)
            unique_ratio = len(set(map(frozenset, generated_clauses))) / len(generated_clauses)
            
            if unique_ratio >= 0.5:  # Ensure at least 50% uniqueness
                difficulty_score = len(generated_clauses)  # Placeholder for complexity measure
                
                if difficulty_score > best_score:
                    best_n, best_t, best_score = N, T, difficulty_score
    
    return best_n, best_t

# Example Usage
if __name__ == "__main__":
    input_folder = "TPTP/AxiomsGEO"  # Specify the folder with .ax files
    output_file = "TPTP/generated_theorems_GEO.p"  # Output file (appends results)

    axioms = load_tptp_axioms(input_folder)
    n_values = [3, 5, 7, 10]
    t_values = [0.2, 0.5, 1.0]
    best_n, best_t = grid_search_fwdp(axioms, n_values, t_values)
    
    print(f"Best parameters: N={best_n}, T={best_t}")
    optimized_theorems = resolve(axioms, max_steps=best_n, softmax_temp=best_t)
    save_generated_clauses(optimized_theorems, output_file)
