from tptp_lark_parser import TPTPParser

tptp_parser = TPTPParser()
parsed_text = tptp_parser.parse("cnf(test, axiom, ~ p(Y, X) | q(X, Y)).")
clause_literals = parsed_text[0].literals

print(tptp_parser.cnf_parser.pretty_print("cnf(test, axiom, ~ p(Y, X) | q(X, Y))."))

for d in parsed_text:
    print(d)   


# If you want to count the literals, you can use len() instead of .count
print(f"Number of literals: {len(clause_literals)}")