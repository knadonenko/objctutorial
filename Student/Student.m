//
//  Student.m
//  objC
//
//  Created by Константин Надоненко on 16.05.2021.
//

#import "Student.h"

@interface Student()

@property (assign, readwrite) NSInteger age;

@end

@implementation Student

@synthesize name = studentName;
@synthesize lastName = studentLastName;
@synthesize fullName = studentFullName;
@synthesize age;

- (NSString *)fullName {
    return [NSString stringWithFormat:@"%@ %@", self.name, self.lastName];
}

-(void)increaseAge {
    self.age += 1;
}

- (void)print {
    NSLog(@"\nStudent name: %@ \nStudent surname: %@ \nStudent fullname: %@\nStudent age: %ld", self.name, self.lastName, self.fullName, self.age);
}

- (instancetype) initName:(NSString *)name initLastName:(NSString *) lastName initAge:(NSInteger)age
{
    self = [super init];
    if (self) {
        self.name = name;
        self.lastName = lastName;
        self.age = age;
    }
    return self;
}

@end
