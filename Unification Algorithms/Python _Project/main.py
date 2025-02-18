from RobinsonUnifier import robOccursCheck
from TPTP_Parser import parse_tptp_fof, parse_term

def process_tptp_file(file_path):
    clauses = parse_tptp_fof(file_path)
    
    if not clauses:
        print("No clauses found in the file.")
        return
    
    sigma = {}

    for clause in clauses:
        print(f"Processing clause: {clause}")
        # Parse the clause into terms
        terms = clause.split()  # Simple split for now; adjust based on your clause structure
        for term_str in terms:
            term = parse_term(term_str)
            print(f"Processing term: {term}")
            if isinstance(term, str) and term.isalpha():  # Assuming variables are alphabetic strings
                x = term
                print(f"Checking variable {x} in clause {clause}")
                if robOccursCheck(x, clause, sigma):
                    print(f"Variable {x} does not occur in the term {clause}")
                else:
                    print(f"Variable {x} occurs in the term {clause}")
            else:
                print(f"Skipping non-variable term: {term}")


def main():
    # Example usage:
    file_path = 'CAT001-1-s.p'  # Replace with your TPTP file path
    process_tptp_file(file_path)

if __name__ == "__main__":
    main()