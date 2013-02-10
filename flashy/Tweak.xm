//Part of the tutorials at http://github.com/Cl3ment/Tutorials/
#import <UIKit/UIKit.h>

//Here the name of the class we wish to hook, using the syntax : %hook ClassName
%hook SBScreenFlash

// The method we want to replace
- (void)flashColor:(UIColor *) color
{
	//Calling the original method with a custom argument
    //syntax : %orig(yourargument);
     %orig([UIColor redColor]);
}

%end
