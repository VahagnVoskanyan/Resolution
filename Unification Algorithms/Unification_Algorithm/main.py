# Run data generation
from generate_data import generate_training_examples


if __name__ == "__main__":
    file_path = "Generated_data/training_data_1_d3_a3.json"
    generate_training_examples(100000, file_path)
