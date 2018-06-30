//
//  ourClass.h
//  fourthAttempts
//
//  Created by Eduana on 6/28/18.
//  Copyright © 2018 Eduana. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ourClass : NSObject <NSCoding>
@property (nonatomic,strong)NSString *emri;
@property(nonatomic,strong)NSString *mbiemri;
@property(nonatomic,assign) int rating;
@property(nonatomic,assign)BOOL akomodimet;
@end
