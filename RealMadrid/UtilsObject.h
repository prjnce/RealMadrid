//
//  UtilsObject.h
//  RealMadrid
//
//  Created by Nguyễn Duy Phúc on 4/1/14.
//  Copyright (c) 2014 Nguyễn Duy Phúc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface UtilsObject : NSObject

-(int)generateRandomNumberBetweenMin: (int)min Max: (int)max;
-(NSString *) formatCurrency: (float) salary;

@end
