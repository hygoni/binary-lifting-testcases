// llvm-mctoll binary-lifting-testcases/bin/struct_2 -I /usr/include/stdio.h -I /usr/include/stdlib.h

#include <stdio.h>
#include <stdlib.h>

typedef struct {
    int id;
    double score;
} Student;

Student *createStudent(int id, double score) {
    Student *newStudent = malloc(sizeof(Student));
    newStudent->id = id;
    newStudent->score = score;
    return newStudent;
}

int main() {
    Student *students[5];
    students[0] = createStudent(101, 86.5);
    students[1] = createStudent(102, 90.5);
    students[2] = createStudent(103, 82.5);
    students[3] = createStudent(104, 88.5);
    students[4] = createStudent(105, 92.5);

    for (int i = 0; i < 5; i++) {
        printf("학생 ID: %d, 점수: %.1f\n", students[i]->id, students[i]->score);
        free(students[i]);  // 메모리 해제
    }
    return 0;
}
