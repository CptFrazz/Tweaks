%hook TableViewController
- (BOOL)tableView:(id)arg1 canEditRowAtIndexPath:(id)arg2
{
    return YES;
}
%end