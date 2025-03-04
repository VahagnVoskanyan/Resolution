from typing import Dict, Tuple, List, Union

Term = Union[str, Tuple[str, List["Term"]]]  # Variable or Function (f(x, y))

def is_variable(x: Term) -> bool:
    """Check if a term is a variable (string starting with an uppercase letter)."""
    return isinstance(x, str) and x[0].isupper()

def apply_substitution(subst: Dict[str, Term], term: Term) -> Term:
    """Apply substitution σ to a term."""
    if is_variable(term):
        return subst.get(term, term)
    elif isinstance(term, tuple):
        func, args = term
        return (func, [apply_substitution(subst, arg) for arg in args])
    return term

def occurs_check(var: str, term: Term, subst: Dict[str, Term]) -> bool:
    """Check if variable occurs in term (to avoid infinite loops)."""
    term = apply_substitution(subst, term)
    if var == term:
        return True
    if isinstance(term, tuple):
        return any(occurs_check(var, arg, subst) for arg in term[1])
    return False

def unify(term1: Term, term2: Term, subst: Dict[str, Term] = None) -> Union[Dict[str, Term], None]:
    """Unifies two terms using Robinson's algorithm and returns the most general unifier (MGU)."""
    if subst is None:
        subst = {}

    term1 = apply_substitution(subst, term1)
    term2 = apply_substitution(subst, term2)

    if term1 == term2:
        return subst

    if is_variable(term1):
        if occurs_check(term1, term2, subst):
            return None  # Failure due to occurs check
        subst[term1] = term2
        return subst

    if is_variable(term2):
        return unify(term2, term1, subst)  # Swap for consistency

    if isinstance(term1, tuple) and isinstance(term2, tuple):
        f1, args1 = term1
        f2, args2 = term2
        if f1 != f2 or len(args1) != len(args2):
            return None  # Failure due to different functions or arity mismatch

        for a1, a2 in zip(args1, args2):
            subst = unify(a1, a2, subst)
            if subst is None:
                return None  # Failure if unification fails at any step

        return subst

    return None  # No unification possible

# Example Usage
term1 = ("p", [("f", ["X"]), "Y"])
term2 = ("p", [("f", ["a"]), "b"])

mgu = unify(term1, term2)
print("Most General Unifier:", mgu)
