//
//  UIColor+Category.h


#import <UIKit/UIKit.h>

@interface UIColor (Category)
/**
 The color's alpha component value.
 The value of this property is a float in the range `0.0` to `1.0`.
 */
@property (nonatomic, readonly) CGFloat alpha;

+ (UIColor *) colorWithHexString:(NSString *)color;

+ (UIColor *) colorWithHexString:(NSString *)color alpha:(CGFloat)alpha;

/**
 Returns the color's RGB value as a hex string (lowercase).
 Such as @"0066cc".
 
 It will return nil when the color space is not RGB
 
 @return The color's value as a hex string.
 */
- (nullable NSString *)hexString;

/**
 Returns the color's RGBA value as a hex string (lowercase).
 Such as @"0066ccff".
 
 It will return nil when the color space is not RGBA
 
 @return The color's value as a hex string.
 */
- (nullable NSString *)hexStringWithAlpha;

@end
