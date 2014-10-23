#import <UIKit/UIKit.h>

static UIImageView *mark;

%hook UIWindow
- (void)sendEvent:(UIEvent *)event
{
    UITouch *touch = [[event allTouches] anyObject];
	UITouchPhase phase = touch.phase;
	
	if (phase == UITouchPhaseEnded || phase == UITouchPhaseCancelled)
	{
		[UIView beginAnimations:nil context:NULL];
		[UIView setAnimationDuration:0.3];
		[mark setAlpha:0.f];
		[UIView commitAnimations];
	}
	else
	{
		mark.center = [touch locationInView:self];
		[self addSubview:mark];
		
		[UIView beginAnimations:nil context:NULL];
		[UIView setAnimationDuration:0.3];
		[mark setAlpha:1.f];
		[UIView commitAnimations];
	}
	%orig;
}
%end

%ctor
{
	mark = [[UIImageView alloc] initWithImage:[UIImage imageWithContentsOfFile:@"/System/Library/CoreServices/SpringBoard.app/Printer@2x~iphone.png"]];
	mark.alpha = 1.f;
}