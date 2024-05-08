# [POJ-104](https://github.com/microsoft/CodeXGLUE/tree/main/Code-Code/Clone-detection-POJ-104)

## Dataset

### Download and Preprocess

1. download dataset

```
cd POJ-104
pip install gdown
gdown https://drive.google.com/uc?id=0B2i-vWnOu7MxVlJwQXN6eVNONUU
tar -xvf programs.tar.gz
cd ..
```

2. Preprocess data

    - TXT to Jsonl
        ```
        cd dataset
        python preprocess2jsonl.py
        cd ..
        ```

    - TXT to C
        ```
        cd dataset
        python preprocess2C.py
        cd ..
        ```