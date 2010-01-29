//
//  DigitsOnlyFormatter.h
//  Stepper Test
//
//  Created by Jan on 30.10.09.
//  Copyright 2009 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h> 

@interface DigitsOnlyFormatter : NSFormatter { 
} 

- (NSString *)stringForObjectValue:(id)obj; 
- (BOOL)getObjectValue:(id *)obj forString:(NSString *)string 
	  errorDescription:(NSString **)error; 
- (BOOL)isPartialStringValid:(NSString *)partialString 
			newEditingString:(NSString **) newString 
			errorDescription:(NSString **)error; 
@end
