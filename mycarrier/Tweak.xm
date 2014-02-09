
%hook SBTelephonyManager
- (void)setOperatorName:(id)arg1
{
    %orig(@"LOL");
}
%end