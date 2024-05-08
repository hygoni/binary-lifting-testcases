# Copyright (c) Microsoft Corporation.
# Licensed under the MIT License.
import os
import json
from tqdm import tqdm

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
    li = [False for _ in range(10000)]
    cnt = 1
    
    with open("POJ-104.jsonl",'w') as f:
        for i in tqdm(range(1,105),total=104):
            items=files("ProgramData/{}".format(i))
            for item in items:
                num = item.split('/')[2].split('.')[0]
                if li[int(num)]: continue
                
                js={}
                js['label'] = cnt
                js['code'] = header + open(item, encoding='latin-1').read()
                f.write(json.dumps(js)+'\n')
                
                li[int(num)] = True
                cnt += 1
                
if __name__ == "__main__":
    main()