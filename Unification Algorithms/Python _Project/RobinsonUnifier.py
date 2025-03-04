# Function to check if variable x occurs in term t given a substitution σ
def robOccursCheck(x, t, sigma):
    stack = [t]
    while stack:
        t = stack.pop()
        if isinstance(t, str) and t == x:
            return False
        if isinstance(t, str) and t in sigma:  # Correct condition
            stack.append(sigma[t])  # Follow the substitution
            continue
        if isinstance(t, tuple):
            for y in t[1:]:
                stack.append(y)
    return True

# Function to perform the Robinson unification algorithm
def ROB(s, t):
    stack = [(s, t)]  # Initial stack containing pair of terms (s, t)
    sigma = {}  # Start with an empty substitution σ
    
    while stack:
        s, t = stack.pop()
        
        # Apply the current substitution to s and t
        while isinstance(s, str) and s in sigma:
            s = sigma[s]
        while isinstance(t, str) and t in sigma:
            t = sigma[t]
        
        if s != t:
            if isinstance(s, str) and isinstance(t, str):
                sigma[s] = t  # Direct unification of two variables
            elif isinstance(s, str):  # s is a variable, t is a term
                if robOccursCheck(s, t, sigma):
                    sigma[s] = t
                else:
                    return "failure"  # Occurs check fails
            elif isinstance(t, str):  # t is a variable, s is a term
                if robOccursCheck(t, s, sigma):
                    sigma[t] = s
                else:
                    return "failure"  # Occurs check fails
            elif isinstance(s, tuple) and isinstance(t, tuple):
                if s[0] == t[0]:  # Both are function terms with the same name
                    for s_sub, t_sub in zip(s[1:], t[1:]):
                        stack.append((s_sub, t_sub))
                else:
                    return "failure"  # Functions are not the same
        else:
            continue
    
    return sigma  # Return the substitution σ


# Example usage:
# s = ('f', 'x', 'y')  # A term
# t = ('f', 'a', 'b')  # Another term

# result = ROB(s, t)
# print("Substitution: ", result)
