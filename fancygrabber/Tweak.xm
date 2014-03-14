#define COLOR [UIColor colorWithRed:0.9 green:0.2 blue:0.2 alpha:1.0]

%hook SBChevronView
- (id)initWithColor:(id)arg1
{
    return %orig(COLOR);
}

- (void)setColor:(id)arg1
{
    %orig(COLOR);
}
%end
