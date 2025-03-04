import os
from preprocess import preprocess_formula, save_data_as_json

def process_all_files(directory):
    """
    Process all TPTP files in the given directory.

    Args:
        directory (str): Path to the directory containing TPTP files.
    """
    # List all .p files in the directory
    tptp_files = [f for f in os.listdir(directory) if f.endswith('.p')]
    
    all_preprocessed_data = []
    
    for file_name in tptp_files:
        file_path = os.path.join(directory, file_name)
        
        # Preprocess each TPTP file
        preprocessed_data = preprocess_formula(file_path)
        
        if preprocessed_data:
            all_preprocessed_data.append(preprocessed_data)
            print(f"Processed: {file_name}")
        else:
            print(f"No data found for: {file_name}")
    
    # Save all preprocessed data to a JSON file
    if all_preprocessed_data:
        save_data_as_json(all_preprocessed_data, output_path="Preprocessed_datas/all_preprocessed_data.json")
        print("All data saved to all_preprocessed_data.json")
    else:
        print("No data to save.")

# def main():
#     directory = "ARI_Problems"  # Path to the directory containing TPTP files
#     process_all_files(directory)

# if __name__ == "__main__":
#     main()