//
//  BadMouthMaps.x
//  BadMouthMaps
//
//  Created by Tyler Hoffman on 01.04.2014.
//  Copyright (c) 2014 Tyler Hoffman. All rights reserved.
//

#import <Foundation/Foundation.h>
#include <substrate.h>

typedef void (^CDUnknownBlockType)(void); // return type and parameters are unknown

@interface MNVoiceController : NSObject
- (void)_speak:(id)arg1;
@end


%hook MNVoiceController 
- (void)_speak:(id)arg1
{
    arg1 = [NSString stringWithFormat:@"%@ you piece of shit", arg1];
    %orig;
}
%end
