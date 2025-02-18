import re

def parse_tptp_fof(file_path):
    clauses = []
    
    with open(file_path, 'r') as file:
        content = file.readlines()
    
    for line in content:
        line = line.strip()

        # Skip comments and empty lines
        if line.startswith('%') or not line:
            continue
        
        # Check for 'fof' statements that are the start of a formula
        if line.startswith('fof'):
            # Extract the term inside the fof clause
            match = re.match(r'fof\([^\)]*\)\s*,\s*(.*)', line)
            if match:
                clause = match.group(1).strip().rstrip('.')  # Clean up the clause
                clauses.append(clause)
    
    return clauses

def parse_term(term_str):
    term_str = term_str.strip()
    # Match function and arguments using regular expression
    match = re.match(r'(\w+)\((.*)\)', term_str)
    if match:
        functor = match.group(1)
        arguments = match.group(2).split(',')
        arguments = [arg.strip() for arg in arguments]
        return (functor, *arguments)
    else:
        # Handle simple terms (variables or constants)
        return term_str

# Function to parse a term from TPTP format (e.g., ifeq(A,A,B,C))
def parse_term1(term_str):
    # Remove any whitespace
    term_str = term_str.strip()
    # Match function and arguments using regular expression
    match = re.match(r'(\w+)\((.*)\)', term_str)
    if match:
        functor = match.group(1)
        arguments = match.group(2).split(',')
        arguments = [arg.strip() for arg in arguments]
        # Return a tuple representing the term
        return (functor, *arguments)
    return term_str  # Return as string if not a function