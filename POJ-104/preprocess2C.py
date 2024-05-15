# Copyright (c) Microsoft Corporation.
# Licensed under the MIT License.
import os
import shutil

fold = "src"
header = ""
header += "#include <stdio.h>\n"
header += "#include <math.h>\n"

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

    for i in range(1,105):
        items=files("ProgramData/{}".format(i))
        for item in items:
            num = item.split('/')[2].split('.')[0]
            if li[int(num)]: continue
            
            code = open(item, encoding='latin-1').read()
            isC = True
            
            for line in code.split('\n'):
                if "cin" in line or "cout" in "line":
                    isC = False
                    break  
                
            if isC:
                f = open(f"{fold}/{cnt}.c", "w")
                code = header + code
                f.write(code)
                cnt += 1
            
            li[int(num)] = True
            
if __name__ == "__main__":
    main()