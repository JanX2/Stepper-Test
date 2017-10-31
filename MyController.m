//
//  MyController.m
//  Stepper Test
//
//  Created by Jan on 29.01.10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "MyController.h"


@implementation MyController

@synthesize editValue = _editValue;

- (BOOL)validateEditValue:(id *)ioValue error:(NSError **)outError 
{
    if (*ioValue == nil) {
        // trap this in setNilValueForKey
        // alternative might be to create new NSNumber with value 0 here
        return YES;
    }
    if ([*ioValue floatValue] <= 0.0) {
		*ioValue = @0.0f;
        return YES;
    }
	else if ([*ioValue floatValue] > 100.0) {
		*ioValue = @100.0f;
        return YES;
    }
	else {
		return YES;
    }
}

- (int)editValue2 {
    return _editValue2;
}

- (void)setEditValue2:(int)value {
    if (_editValue2 != value) {
		if (value <= 0) {
			_editValue2 = 0;
		}
		else if (value > 100) {
			_editValue2 = 100;
		}
		else {
			_editValue2 = value;
		}
    }
}


@end
