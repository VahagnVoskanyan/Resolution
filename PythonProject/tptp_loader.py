import re

def load_tptp_problems(file_path):
    """
    Load and parse TPTP problem files (.p files) into logical formulas.

    Args:
        file_path (str): Path to the TPTP problem file.

    Returns:
        list: A list of dictionaries, where each dictionary represents a logical formula.
              Each dictionary contains:
              - 'name': The name of the formula.
              - 'type': The type of the formula (e.g., axiom, conjecture).
              - 'formula': The logical formula as a string.
    """
    formulas = []
    with open(file_path, 'r') as file:
        lines = file.readlines()

    # Regular expression to match TPTP formula lines (both fof and tff formats)
    formula_pattern = re.compile(r'(fof|tff)\((?P<name>[^,]+),\s*(?P<type>[^,]+),\s*(?P<formula>.*)\)\.')

    for line in lines:
        match = formula_pattern.match(line.strip())
        if match:
            formula_info = {
                'name': match.group('name').strip(),
                'type': match.group('type').strip(),
                'formula': match.group('formula').strip()
            }
            formulas.append(formula_info)

    return formulas