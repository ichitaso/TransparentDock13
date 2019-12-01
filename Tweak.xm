@interface SBDockView : UIView
@end

@interface SBFloatingDockPlatterView : UIView
@end

%hook SBDockView
- (void)setBackgroundAlpha:(double)arg1 {
    %orig(0);
}
%end

%hook SBFloatingDockPlatterView
- (void)layoutSubviews {
    %orig;
    UIView *view = [self valueForKey:@"_backgroundView"];
    view.hidden = YES;
}
%end
