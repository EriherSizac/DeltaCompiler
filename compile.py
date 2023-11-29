from delta import Compiler, Phase
import time
import os

path = "dataset"
result_folder = "results"

for file in os.listdir(path):
    file_path = os.path.join(path, file);
    
    with open(file_path, 'r') as code:
        code_content = code.read();
    code.close();

    compiler = Compiler('program_start')
    start_time = time.time()

    compiler.realize(code_content, Phase.EVALUATION)

    result_path = os.path.join(result_folder, file.strip(".js") + ".wat")

    with open(result_path, 'w') as result_file:
        result_file.write(compiler.wat_code)
    result_file.close()

    end_time = time.time()
    execution_time = end_time - start_time

    print(f"The compilation time for {file_path} is: {execution_time} seconds")
    print(f"\nResult WASM code:\n {compiler.wat_code}")