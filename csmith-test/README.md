# Test Automatic

## Testcase Creation

1. CSmith를 사용하여 랜덤으로 C program을 생성한다.

2. 생성한 C program을 LLVM IR(CIR)과 실행파일로 컴파일한다.

3. 생성한 C program의 실행파일을 리프팅하여 LLVM IR(HIR)을 얻는다.

    - 추가사항: Debin을 사용하여 debug info가 복구된 실행파일을 리프팅하여 LLVM IR(HIR)을 얻는다.

### Dependency

- [CSmith](https://github.com/csmith-project/csmith)

- 추가사항: [Debin](https://github.com/eth-sri/debin)

## Similarity Measurement

1. IR2Vec를 사용하여 CIR과 HIR을 Vector로 변환한다.

    - 컴파일되지 않는 llvm IR은 vector가 형성되지 않는다.

    - 즉, lift되어 컴파일되지 않는 llvm IR은 vector로 변환되지 않는다.

    - csmith로 생성한 대부분의 파일을 lift하면 컴파일되지 않음...

2. Consine Similarity를 사용하여 Vector의 Cosine 유사도를 평가한다.

### Dependency

- [IR2Vec](https://github.com/IITH-Compilers/IR2Vec)