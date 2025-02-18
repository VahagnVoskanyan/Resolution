import re
import json

def preprocess_formula(file_path):
    """
    Reads the TPTP file and extracts the formula and name.

    Args:
        file_path (str): Path to the TPTP file.

    Returns:
        dict: A dictionary containing the name and formula.
    """
    with open(file_path, "r", encoding="utf-8") as file:
        content = file.read()

    # Regex to find tff formula
    match = re.search(r"tff\((.*?),\s*conjecture,\s*(.*?)\)\.", content, re.DOTALL)
    
    if match:
        name = match.group(1)  # Name of the conjecture
        formula = match.group(2)  # Formula
        
        # Clean the formula (remove any extra whitespace, symbols, etc.)
        cleaned_formula = formula.replace(" ", "").replace("\n", "")
        
        # Create a dictionary with the processed data
        data = {
            "name": name,
            "formula": cleaned_formula
        }
        
        return data
    else:
        print("No Match Found")
        return None

def save_data_as_json(data, output_path="preprocessed_data.json"):
    """
    Saves the preprocessed data to a JSON file.

    Args:
        data (dict): The data to save.
        output_path (str): Path to save the JSON file.
    """
    with open(output_path, "w", encoding="utf-8") as json_file:
        json.dump(data, json_file, indent=4, ensure_ascii=False)


