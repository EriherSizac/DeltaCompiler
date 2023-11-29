import wasmtime
import time
import os

wasm_file_dir = "results"
file_to_skip = "README.txt"
store = wasmtime.Store()

for file in os.listdir(wasm_file_dir):
    if file != file_to_skip:    
        file_path = os.path.join(wasm_file_dir, file)

        start_time = time.time()

        with open(file_path, "rb") as wasm_file:
            module = wasmtime.Module(store.engine, wasm_file.read())
        wasm_file.close()

        instance = wasmtime.Instance(store, module, [])
        start_function = instance.exports(store)["_start"]

        result = start_function(store)

        end_time = time.time()
        execution_time = end_time - start_time

        print(f"The execution time for {file_path} is: {execution_time} seconds")
        print(f"Result of the execution of the WASM code: {result}")