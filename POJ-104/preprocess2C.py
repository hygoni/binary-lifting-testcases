# Copyright (c) Microsoft Corporation.
# Licensed under the MIT License.
import os
import shutil
from tqdm import tqdm

fold = "testdata"
header = ""
header += "#include \"iostream\"\n"
header += "#include \"stdio.h\"\n"
header += "using namespace std;\n"

def files(path):
    g = os.walk(path) 
    file=[]
    for path, dir_list, file_list in g:  
        for file_name in file_list:  
            file.append(os.path.join(path, file_name))
    return file

def main():

    if os.path.exists(fold):
        shutil.rmtree(fold)
        
    os.makedirs(fold)

    li = [False for _ in range(10000)]
    cnt = 1

    for i in tqdm(range(1,105),total=104):
        items=files("ProgramData/{}".format(i))
        for item in items:
            num = item.split('/')[2].split('.')[0]
            if li[int(num)]: continue
            
            f = open(f"testdata/{cnt}.cpp", "w")
            code = header + open(item, encoding='latin-1').read()
            f.write(code)
            
            li[int(num)] = True
            cnt += 1
            
if __name__ == "__main__":
    main()