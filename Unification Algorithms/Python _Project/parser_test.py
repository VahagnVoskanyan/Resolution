from tptp_lark_parser import TPTPParser

tptp_parser = TPTPParser()
parsed_text = tptp_parser.parse("cnf(test, axiom, ~ p(Y, X) | q(X, Y)).")
clause_literals = parsed_text[0].literals 