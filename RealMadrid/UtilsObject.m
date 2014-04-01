//
//  UtilsObject.m
//  RealMadrid
//
//  Created by Nguyễn Duy Phúc on 4/1/14.
//  Copyright (c) 2014 Nguyễn Duy Phúc. All rights reserved.
//

#import "UtilsObject.h"

@implementation UtilsObject

-(int) generateRandomNumberBetweenMin:(int)min Max:(int)max{
    
    int _randNumber =  ( (arc4random() % (max-min+1)) + min );
    
    return _randNumber;
}

-(NSString *) formatCurrency: (float) salary{
    
    NSNumber *number = [NSNumber numberWithInt:salary];
    
    NSNumberFormatter *nf = [[NSNumberFormatter alloc] init];
    [nf setLocale:[[NSLocale alloc] initWithLocaleIdentifier:@"vi_VN"]];
    [nf setNumberStyle:NSNumberFormatterCurrencyStyle];
    NSString *currency = [nf stringFromNumber:number];
    
    return currency;
}

@end
