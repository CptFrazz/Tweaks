#import <UIKit/UIKit.h>

@interface SBPowerDownController
- (void)orderFront;
- (void)powerDown;
@end

%hook SBPowerDownController
- (void)orderFront
{
    UIAlertView *warner = [[UIAlertView alloc] initWithTitle:@"Warning" message:@"Your iDevice will shutdown, please confirm." delegate:self cancelButtonTitle:@"OK" otherButtonTitles:@"Cancel", nil];
    
    [warner show];
    [warner release];
}

//Creating a new function
%new(v@:@@)
- (void)alertView:(UIAlertView *)alert didDismissWithButtonIndex:(NSInteger)buttonIndex
{
    if (buttonIndex == 0)
    {
        [self powerDown];
        //[[UIApplication sharedApplication]_powerDownNow];
    }
}


%end
