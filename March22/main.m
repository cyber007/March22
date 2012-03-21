//
//  main.m
//  March22
//
//  Created by admin on 3/19/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "March22AppDelegate.h"

int main(int argc, char *argv[])
{
    //pointer
    CGFloat f = 3.14159;
    CGFloat *pf = &f;
    NSLog(@"The address of f is %p.", pf);			//p for pointer
    
    CGPoint p = CGPointMake(0.0, 0.0);	//p holds the values 0.0 and 0.0
	CGSize s = CGSizeMake(320.0, 480.0);	//s holds the values 320.0 and 480.0
    NSLog(@"The address of s is %p.", &s);	

    CGRect rect = CGRectMake(0.0, 0.0, 320.0, 480.0);	//x, y, width, height
	p = rect.origin;	//The fields inside of rect
	s = rect.size;		//are named rect.origin and rect.size
	CGFloat x = p.x;
	CGFloat y = rect.origin.y;	//Can have more than one dot, like 10+20+30
    NSLog(@"rect == (%g, %g), %g × %g",
          rect.origin.x,
          rect.origin.y,
          rect.size.width,
          rect.size.height
          );
    
    //Let s be a pointer to the main screen of the app.
	UIScreen *S = [UIScreen mainScreen];
    
	//Get the location and size of the screen.
	CGRect b = [S bounds];
    NSLog(@"The new location & size of the screen CGRect == (%g, %g), %g × %g",
          b.origin.x,
          b.origin.y,
          b.size.width,
          b.size.height
          );

    
    NSLog(@"On my device, a CGFloat occupies %lu bits.", CHAR_BIT * sizeof (CGFloat));
    @autoreleasepool {
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([March22AppDelegate class]));
    }
}
