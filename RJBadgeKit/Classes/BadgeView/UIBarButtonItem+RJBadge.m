//
//  UIBarButtonItem+RJBadge.m
//  RJBadgeKit
//
//  Created by Ryan Jin on 04/08/2017.
//
//

#import "UIBarButtonItem+RJBadge.h"
#import <objc/runtime.h>
#import "UIView+RJBadge.h"

@implementation UIBarButtonItem (RJBadge)

#pragma mark - RJBadgeView
- (void)showBadge {
    [[self badgeView] showBadge];
}
- (void)hideBadge {
    [[self badgeView] hideBadge];
}

- (void)showBadgeWithValue:(NSUInteger)value {
    [[self badgeView] showBadgeWithValue:value];
}

#pragma mark - private method
- (UIView *)badgeView {
    return [self valueForKeyPath:@"_view"];
}

#pragma mark - setter/getter
- (UILabel *)badge {
    return [self badgeView].badge;
}

- (void)setBadge:(UILabel *)label {
    [[self badgeView] setBadge:label];
}

- (UIFont *)badgeFont {
    return [self badgeView].badgeFont;
}

- (void)setBadgeFont:(UIFont *)badgeFont {
    [[self badgeView] setBadgeFont:badgeFont];
}

- (UIColor *)badgeTextColor {
    return [[self badgeView] badgeTextColor];
}

- (void)setBadgeTextColor:(UIColor *)badgeTextColor {
    [[self badgeView] setBadgeTextColor:badgeTextColor];
}

- (CGFloat)badgeRadius {
    return [[self badgeView] badgeRadius];
}

- (void)setBadgeRadius:(CGFloat)badgeRadius {
    [[self badgeView] setBadgeRadius:badgeRadius];
}

- (CGPoint)badgeOffset {
    return [[self badgeView] badgeOffset];
}

- (void)setBadgeOffset:(CGPoint)badgeOffset {
    [[self badgeView] setBadgeOffset:badgeOffset];
}

@end
