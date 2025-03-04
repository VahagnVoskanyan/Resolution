# Function to check if a variable x occurs in term t given a substitution sigma
def occurs_check(x, t, sigma):
    """Returns True if x occurs in t (checking through sigma)."""
    stack = [t]
    while stack:
        t = stack.pop()
        if isinstance(t, str) and t == x:  # Direct occurrence found
            return True
        if isinstance(t, str) and t in sigma:  # Follow substitutions
            stack.append(sigma[t])
        elif isinstance(t, list):  # Function application (list form)
            stack.extend(t[1:])
    return False  # No occurrence found

# Function to apply a substitution recursively
def apply_subst(sigma, term):
    """Recursively applies substitution sigma to term."""
    if isinstance(term, str):
        while term in sigma:  # Keep replacing until fully substituted
            term = sigma[term]
        return term
    elif isinstance(term, list):
        return [apply_subst(sigma, subterm) for subterm in term]
    return term  # Return as is (for constants)

# Function to compose two substitutions
def compose(sigma1, sigma2):
    """Composes two substitutions."""
    new_sigma = {var: apply_subst(sigma1, val) for var, val in sigma2.items()}
    new_sigma.update(sigma1)  # sigma1 has priority
    return new_sigma

# Main Unification Function
def unify(E1, E2, sigma=None):
    """Attempts to unify E1 and E2 under substitution sigma."""
    if sigma is None:
        sigma = {}  # Initialize substitution map

    E1 = apply_subst(sigma, E1)  # Apply existing substitutions
    E2 = apply_subst(sigma, E2)  # Apply existing substitutions

    if E1 == E2:  # Base case: identical terms
        return sigma

    if isinstance(E1, str):  # E1 is a variable
        if occurs_check(E1, E2, sigma):  # Check if it occurs in E2
            return "FAIL"
        sigma[E1] = E2  # Add substitution {E1 -> E2}
        return sigma

    if isinstance(E2, str):  # E2 is a variable
        if occurs_check(E2, E1, sigma):  # Check if it occurs in E1
            return "FAIL"
        sigma[E2] = E1  # Add substitution {E2 -> E1}
        return sigma

    if isinstance(E1, list) and isinstance(E2, list):  # Both are compound terms (lists)
        if len(E1) != len(E2):  # Mismatched function arity
            return "FAIL"
        new_sigma = sigma  # Start with current substitutions
        for sub1, sub2 in zip(E1, E2):  # Unify corresponding elements
            new_sigma = unify(sub1, sub2, new_sigma)
            if new_sigma == "FAIL":  # If any unification fails, return failure
                return "FAIL"
        return new_sigma  # Return resulting substitution

    return "FAIL"  # If terms are incompatible, fail unification

# Example Test Cases
print(unify(["p", "foo", "X"], ["p", "a", "b"]))  # Expected: {'X': 'b'}
print(unify(["p", "Y", "Y"], ["p", "a", "Y"]))  # Expected: FAIL
print(unify(["parents", "X", ["father", "X"], ["mother", "bill"]], 
            ["parents", "bill", ["father", "bill"], "Y"]))  # Expected: {'X': 'bill', 'Y': ['mother', 'bill']}

