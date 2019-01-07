//
//  JBChecker.m
//  Jailbreak me
//
//  Created by Adis on 03/01/2019.
//  Copyright © 2019 Infinum. All rights reserved.
//

#import "JBChecker.h"
#import "DTTJailbreakDetection.h"

// Separated class and method for easy overriding
@implementation JBChecker

+ (BOOL)isJailbroken
{
    // Lib used can be found at https://github.com/thii/DTTJailbreakDetection
    return [DTTJailbreakDetection isJailbroken];
}

@end
