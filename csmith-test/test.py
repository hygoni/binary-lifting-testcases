import ir2vec
import numpy as np
from numpy import dot
from numpy.linalg import norm

def cos_sim(A, B):
  return dot(A, B)/(norm(A)*norm(B))

compiled_IR = ir2vec.initEmbedding("./compiled_random.ll", "sym", "p")
lifted_IR = ir2vec.initEmbedding("./lifted_random.ll", "sym", "p")

compiled_IR_vector = compiled_IR.getProgramVector()
# IR 중에 컴파일되지 않는 형태는 vector가 생성되지 않음
lifted_IR_vector = lifted_IR.getProgramVector()

print(np.allclose(compiled_IR_vector, lifted_IR_vector))