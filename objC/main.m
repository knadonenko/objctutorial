//
//  main.m
//  objC
//
//  Created by Константин Надоненко on 19.04.2021.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        float a = 0;
        float b = 0;
        int operation = 1;
        NSString *operationText = @"";
        
        NSLog(@"Введите операцию");
        NSLog(@"1 - сложение");
        NSLog(@"2 - вычитание");
        NSLog(@"3 - умножение");
        NSLog(@"4 - деление");
        scanf("%d", &operation);
        
        NSLog(@"Введите число a");
        scanf("%f", &a);
        NSLog(@"Введите число b");
        scanf("%f", &b);
        
        switch (operation) {
            case 1:
                NSLog(@"%f", a + b);
                operationText = @"сложение";
                break;
            case 2:
                NSLog(@"%f", a - b);
                operationText = @"вычитание";
                break;
            case 3:
                NSLog(@"%f", a * b);
                operationText = @"умножение";
                break;
            case 4:
                NSLog(@"%f", a / b);
                operationText = @"деление";
                break;
            default:
                NSLog(@"1 - сложение\n2-вычитание\n3-умножение\n4-деление");
                break;
        }
        
        NSLog(@"Первая переменная - %.f,\nВторая переменная - %.f,\nОперация - %@", a, b, operationText);
        
    }
    return 0;
}
