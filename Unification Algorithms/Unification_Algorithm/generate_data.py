import random
import json
from Robinson_Alg import unify

# Define possible symbols
VARIABLES = ["X", "Y", "Z", "W"]
CONSTANTS = ["a", "b", "c", "d"]
FUNCTIONS = ["f", "g", "h"]
PREDICATES = ["p", "q", "r"]

def random_term(depth=0):
    """Generate a random term recursively (variable, constant, or function)."""
    if depth > 2 or random.random() < 0.4:  # Base case (variable or constant) /// increase 'depth'
        return random.choice(VARIABLES + CONSTANTS)
    
    func = random.choice(FUNCTIONS)
    num_args = random.randint(1, 2)  # Limit to 2 arguments for simplicity   /// increase 'a2' 
    args = [random_term(depth + 1) for _ in range(num_args)]
    
    return (func, args)

def random_predicate():
    """Generate a random predicate with arguments."""
    pred = random.choice(PREDICATES)
    num_args = random.randint(1, 2)
    args = [random_term() for _ in range(num_args)]
    return (pred, args)

def generate_training_examples(n=1000, file_path="training_data.json"):
    """Generate n pairs of logical expressions and their unifiers."""
    data = []
    
    for _ in range(n):
        term1 = random_predicate()
        term2 = random_predicate()
        
        # Get the most general unifier (MGU)
        mgu = unify(term1, term2)
        
        # Store only successful unifications
        if mgu is not None:
            data.append({"term1": term1, "term2": term2, "mgu": mgu})
    
    # Save dataset to a JSON file
    with open(file_path, "w") as f:
        json.dump(data, f, indent=1)

    print(f"Generated {len(data)} training examples.")

if __name__ == "__main__":
    file_path = "Generated_data/training_data_1_d3_a3.json"
    generate_training_examples(100000, file_path)