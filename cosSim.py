import os
import sys
import ir2vec
import numpy as np
from numpy import dot
from numpy.linalg import norm

def cosSim(A, B):
  return dot(A, B)/(norm(A)*norm(B))

def files(path):
    g = os.walk(path) 
    file=[]
    for path, dir_list, file_list in g:  
        for file_name in file_list:  
            file.append(os.path.join(file_name))
    return file

def main():
    
    items=files("./bin")
    retdecItems = []
    for item in items:
        try:
            compiled_IR = ir2vec.initEmbedding("./ir/{0}.ll".format(item), "sym", "p")
            mctoll_IR = ir2vec.initEmbedding("./mctoll-output/{0}/{1}-dis.ll".format(item, item), "sym", "p")
            retdec_IR = ir2vec.initEmbedding("./retdec-output/{0}/{1}.ll".format(item, item), "sym", "p")

            compiled_IR_vector = compiled_IR.getProgramVector()
            mctoll_IR_vector = mctoll_IR.getProgramVector()

            print("{0}".format(item))
            print("CIR MCTOLL: {0}".format(cosSim(compiled_IR_vector, mctoll_IR_vector)))
            
            if item not in retdecItems:
                retdec_IR_vector = retdec_IR.getProgramVector()
                print("CIR RETDEC: {0}".format(cosSim(compiled_IR_vector, retdec_IR_vector)))
            
        except:
            continue
    
if __name__ == "__main__":
    main()