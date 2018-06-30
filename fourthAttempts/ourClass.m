//
//  ourClass.m
//  fourthAttempts
//
//  Created by Eduana on 6/28/18.
//  Copyright © 2018 Eduana. All rights reserved.
//

#import "ourClass.h"

static NSString *emriKey=@"EmriKey";
static NSString *mbiemriKey=@"MbiemriKey";
static NSString *ratingKey=@"RatingKey";
static NSString *akomodimetKey=@"AkomodimetKey";

@implementation ourClass

-(id) initWithCoder:(NSCoder *)coder
{
    self=[super init];
    self.emri=[coder decodeObjectForKey:emriKey];
    self.mbiemri=[coder decodeObjectForKey:mbiemriKey];
    //self.rating=[coder decodeObjectForKey:ratingKey];
    self.akomodimet=[coder decodeObjectForKey:akomodimetKey];    return self;
}
-(void)encodeWithCoder:(NSCoder *)coder
{
    [coder encodeObject:self.emri forKey:emriKey];
    [coder encodeObject:self.mbiemri forKey:mbiemriKey];
    [coder encodeInteger:self.rating forKey:ratingKey];
    [coder encodeBool:self.akomodimet forKey:akomodimetKey];
    
}


@end
