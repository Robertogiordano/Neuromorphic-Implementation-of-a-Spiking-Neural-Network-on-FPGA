import os

# Directory dei file da rinominare
directory = "/Users/robertogiordano/Library/CloudStorage/OneDrive-Personale/universita/anno2/tirocinio/fpga_implementation/project_1/periods"

# Prefisso da aggiungere al nome del file
prefix = "time_periods"

# Numero di cifre per il conteggio
num_digits = 4

# Rinomina i file nella directory
for filename in os.listdir(directory):
    if filename.endswith(".txt"):  # Puoi specificare altre estensioni se necessario
        file_number = "".join(filter(str.isdigit, filename))
        if file_number:
            file_number = int(file_number)
            new_file_number = str(file_number).zfill(num_digits)
            new_filename = f"{prefix}_{new_file_number}.txt"
            old_file_path = os.path.join(directory, filename)
            new_file_path = os.path.join(directory, new_filename)
            os.rename(old_file_path, new_file_path)

print("Rinominazione completata!")

