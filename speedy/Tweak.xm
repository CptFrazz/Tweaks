%hook SBFanimationFactorySettings
- (float)slowDownFactor
{
    return 0.40;
}

- (void)setSlowDownFactor:(float)arg1
{
    %orig(0.40);
}
%end

//iOS6 version
/*%hook CAAnimation

- (void)setDuration:(double)duration
{
    //Makes the animations 2x faster
    //Replace 2 by another number to make it even faster
	%orig(duration / 2);
}

%end*/
