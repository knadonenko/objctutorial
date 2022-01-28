//
//  Student.h
//  objC
//
//  Created by Константин Надоненко on 16.05.2021.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Student: NSObject

- (instancetype) initName:(NSString *)name initLastName:(NSString *) surname initAge:(NSInteger)age;

- (NSString *)fullName;
- (void)print;
- (void)increaseAge;

@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *lastName;
@property (nonatomic, strong) NSString *fullName;

@property (assign, readonly) NSInteger age;

@end

NS_ASSUME_NONNULL_END
