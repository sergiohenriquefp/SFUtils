//
//  UserDefaultsUtils.m
//  TMDB_Objc
//
//  Created by Sergio Freire on 19/11/16.
//  Copyright © 2016 Sergio Freire. All rights reserved.
//

#import "UserDefaultsUtils.h"

@implementation UserDefaultsUtils

//String
+(NSString*)savedStringInfo:(NSString *)key{
    
    return (NSString *)[[NSUserDefaults standardUserDefaults] objectForKey:key];
}
+(void)setStringInfo:(NSString *)info key:(NSString *)key{
    
    [[NSUserDefaults standardUserDefaults] setObject:info forKey:key];
    [[NSUserDefaults standardUserDefaults] synchronize];
}

//Int
+(int)savedIntInfo:(NSString *)key{
    
    return (int)[[NSUserDefaults standardUserDefaults] integerForKey:key];
}
+(void)setIntInfo:(int)info key:(NSString *)key{
    
    [[NSUserDefaults standardUserDefaults] setInteger:info forKey:key];
    [[NSUserDefaults standardUserDefaults] synchronize];
}

//Boolean
+(BOOL)savedBoolInfo:(NSString *)key{
    
    return [[NSUserDefaults standardUserDefaults] boolForKey:key];
}
+(void)setBoolInfo:(BOOL)info key:(NSString *)key{
    
    [[NSUserDefaults standardUserDefaults] setBool:info forKey:key];
    [[NSUserDefaults standardUserDefaults] synchronize];
}

@end
