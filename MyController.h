//
//  MyController.h
//  Stepper Test
//
//  Created by Jan on 29.01.10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>


@interface MyController : NSObject {

	int _editValue;
	int _editValue2;
	
}

@property (nonatomic, readwrite) int editValue;

@property (nonatomic) int editValue2;


@end
