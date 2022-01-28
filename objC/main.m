//
//  main.m
//  objC
//
//  Created by Константин Надоненко on 19.04.2021.
//

#import <Foundation/Foundation.h>
#import "Student.h"

double calculateNums(int operationNum, float a, float b ) {
    
    int result = 0;
    switch (operationNum) {
        case 1:
            result = a + b;
            break;
        case 2:
            result = a - b;
            break;
        case 3:
            result = a * b;
            break;
        case 4:
            result = a / b;
            break;
    }
    
    return result;
    
}

void checkSymbol(char character) {
    int intChar = character;
    if ((intChar >= 65 && intChar <= 90) || (intChar >= 97 && intChar <= 122)){
        printf("Буква %c есть в английском алфавите \n", character);
    } else {
        printf("Буква или символ %c отсутствует в английском алфавите \n", character);
    }
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
//        float a = 0;
//        float b = 0;
//        int operation = 1;
//
//        NSLog(@"Введите операцию");
//        NSLog(@"1 - сложение");
//        NSLog(@"2 - вычитание");
//        NSLog(@"3 - умножение");
//        NSLog(@"4 - деление");
//        scanf("%d", &operation);
//
//        NSLog(@"Введите число a");
//        scanf("%f", &a);
//        NSLog(@"Введите число b");
//        scanf("%f", &b);
//
//        float result = calculateNums(operation, a, b);
//
//        NSLog(@"Результат вычислений: %.f", result);
//
//        checkSymbol('A');
        
        Student *student = [[Student alloc] initName: @"Ivan" initLastName: @"Ivanov" initAge: 20];

        NSLog(@"%ld", student.age);
        [student print];
        student.name = @"Petr";
        student.lastName = @"Petrov";
        [student print];
        [student increaseAge];
        [student print];
        
    }
    return 0;
}
