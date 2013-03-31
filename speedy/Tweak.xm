%hook CAAnimation

- (void)setDuration:(double)duration
{
    //Makes the animations 2x faster
    //Replace 2 by another number to make it even faster
	%orig(duration / 2);
}

%end
