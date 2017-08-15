//
//  main.m
//  Lesson_3
//
//  Created by Nikita Vintonovich on 8/15/17.
//  Copyright © 2017 Vint-Rock. All rights reserved.
//

#import <Foundation/Foundation.h>

static NSString *const cofeKey = @"key1";
static NSString *const teaKey = @"key2";
static NSString *const teaKey3 = @"key2";

int main(int argc, const char * argv[])
{
    @autoreleasepool
    {
//        NSArray *array1 = @[nil, nil, nil]; // нельзя создавать с нулевыми объектами
        NSArray *array2 = @[[NSNull null], [NSNull null], [NSNull null]];
        
        NSArray *arry3 = @[@"text", @"text 2"];
        // инициализация
        
        NSMutableArray *mutableArray1 = [NSMutableArray new];        
        NSMutableArray *mutableArray2 = [NSMutableArray array];
        NSMutableArray *mutableArray3 = [[NSMutableArray alloc] init];
        
        
        NSMutableArray *mutableArray4 = [[NSMutableArray alloc] initWithArray:array2];
        NSMutableArray *mutableArray5 = [NSMutableArray arrayWithObjects:mutableArray1, mutableArray2, mutableArray3, nil];
        
        
        
        NSMutableArray *mutArray = [NSMutableArray new];
        
        NSString *text = @"someText";
        
        NSString *formatedString = [NSString stringWithFormat:@"%@ + ", text];
        
        for (NSInteger i = 0; i < 3; i++)
        {
            NSString *tempStr = @"coffee";
            formatedString = [NSString stringWithFormat:@"%@ %@", formatedString, tempStr];
        }
        
        NSMutableString *mutString = [NSMutableString new];
        [mutString appendString:@"hi apple!"];
        [mutString appendString:@" i am ios dev"];
        
        [mutString appendString:[NSString stringWithFormat:@" %d,", 100]];
        
        NSRange range = NSMakeRange(3, 6);
        
        NSString *resultString = [mutString substringWithRange:range];
        
        
        NSLog(@"%@", formatedString);
        
        [mutArray addObject:text];
        [mutArray addObject:text];
        [mutArray addObject:text];
        [mutArray addObject:text];
        [mutArray addObject:text];
        
        [mutArray replaceObjectAtIndex:1 withObject:@"hi"];
        
//        [mutArray removeObject:text];
        
        NSString *str_1 = [mutArray firstObject];
        NSString *str_2 = [mutArray lastObject];
//        NSString *str_3;
        
//        str_2 = (NSString *)mutArray[2];
//        str_3 = (NSString *)mutArray[3];
        
        NSSet *set1 = [NSSet setWithArray:array2];
        
        NSArray *arrFromSet = [set1 allObjects];
        
        NSMutableSet *mutableSet1 = [NSMutableSet set];
        
        [mutableSet1 addObject:mutableArray1];
        [mutableSet1 addObject:mutableArray1];
        
        BOOL hasValue = [mutableSet1 containsObject:mutableArray1];
        
        NSDictionary *dictionary1 = @{@"key" : @"value"};
        
        NSArray *cofeeTypes = @[@"late", @"espresso"];
        NSArray *teaTypes = @[@"green", @"black"];
        
        NSDictionary *coffeeShop = @{@"coffe"   : cofeeTypes,
                                     @"tea"     : teaTypes};
        
        
        NSDictionary *pcShop = @{@"note books"  : @[@"assus", @"lenovo", @"hp"],
                                 @"pc"          : @[@"lenovo", @"bravo"],
                                 @"monoblocks"  : @[@"msi", @"mac mini"]};
        
        
        NSDictionary *kharkivShop = @{@"note books"  : @[@"assus", @"lenovo"],
                                      @"pc"          : @[@"lenovo"]};
        
        NSInteger lenovoCount = 0;
        
        NSArray *shops = @[pcShop, kharkivShop];
        
        for (NSInteger i = 0; i < shops.count; i++)
        {
            NSDictionary *currentShop = (NSDictionary *)shops[i];
            
            NSArray *pc = (NSArray *)currentShop[@"pc"];
            
        }
        
        NSMutableDictionary *mutableDictionary = [NSMutableDictionary dictionary];
        [mutableDictionary setObject:array2 forKey:@"keyOfArray2"];
        
        NSString *stringValue1 = @"some string";
        NSString *stringValue2 = @"text";
        
        [mutableDictionary setObject:stringValue1 forKey:cofeKey];
        [mutableDictionary setObject:stringValue2 forKey:teaKey];
        
        NSLog(@"");
        
        
        // сортировка
        
        NSMutableArray *arrayOfRandomNumbers = [NSMutableArray array];
        
        for (NSInteger i = 0; i < 20; i++)
        {
            NSInteger value = arc4random() % 99;
            [arrayOfRandomNumbers addObject:@(value)];
        }
        
        
        for (NSInteger i = 0; i < arrayOfRandomNumbers.count - 1; i++)
        {
            for (NSInteger j = 0; j < arrayOfRandomNumbers.count - 1; j++)
            {
                NSInteger currentValue = [arrayOfRandomNumbers[j] integerValue];
                NSInteger nextValue = [arrayOfRandomNumbers[j+1] integerValue];
                
                if (nextValue < currentValue)
                {
                    [arrayOfRandomNumbers replaceObjectAtIndex:j withObject:@(nextValue)];
                    [arrayOfRandomNumbers replaceObjectAtIndex:(j+1) withObject:@(currentValue)];
                }
            }
        }
        
        NSLog(@"result");
        
    }
    return 0;
}
