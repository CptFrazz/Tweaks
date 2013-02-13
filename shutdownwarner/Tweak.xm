#import <SpringBoard/SpringBoard.h>

%hook SBPowerDownController


- (void)orderFront
{
    UIAlertView *warner = [[UIAlertView alloc] initWithTitle:@"Warning" message:@"Your iDevice will shutdown, please confirm." delegate:self cancelButtonTitle:@"Cancel" otherButtonTitles:@"Power Off", nil];
    
    [warner show];
    [warner release];
}

%new(v@:@@)
- (void)alertView:(UIAlertView *)alert didDismissWithButtonIndex:(NSInteger)buttonIndex
{
    if (buttonIndex == 1)
    {
        [[UIApplication sharedApplication]_powerDownNow];
    }
}


%end
