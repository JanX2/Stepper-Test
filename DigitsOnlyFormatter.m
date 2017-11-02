//
//  DigitsOnlyFormatter.m
//  Stepper Test
//
//  Created by Jan on 30.10.09.
//  Copyright 2009 __MyCompanyName__. All rights reserved.
//

#import "DigitsOnlyFormatter.h"

@implementation DigitsOnlyFormatter 

- (NSString *)stringForObjectValue:(id)obj 
{ 
    return [obj description]; 
} 

- (BOOL)getObjectValue:(id *)obj forString:(NSString *)string 
	  errorDescription:(NSString **)error 
{ 
    *obj = [NSString stringWithString:string];
    return YES; 
}

- (BOOL)isPartialStringValid:(NSString *)partialString
			newEditingString:(NSString **)newString
			errorDescription:(NSString **)error 
{ 
	NSCharacterSet *nonNumbers; 
	nonNumbers = [NSCharacterSet decimalDigitCharacterSet].invertedSet;

	if ([partialString rangeOfCharacterFromSet:nonNumbers options:NSLiteralSearch].location != NSNotFound) { 
		NSBeep();
		return NO; 
	} 
    else { 
		return YES; 
	} 
}
@end
