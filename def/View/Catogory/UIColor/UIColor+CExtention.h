//
//  UIColor+CExtention.h
//  JKCBaseUI
//
//  Created by 吴玉鹏 on 2017/11/7.
//  Copyright © 2017年 gzjianke. All rights reserved.
//

#import <UIKit/UIKit.h>

#ifndef UIColorRGB          //e.g UIColorRGB(255, 255, 255)
#define UIColorRGB(r,g,b)   [UIColor colorWithRed:((r) / 255.0f) green:((g) / 255.0f) blue:((b) / 255.0f) alpha:1]
#endif

#ifndef UIColorRGBA         // e.g. UIColorRGBA(255, 255, 255, 1)
#define UIColorRGBA(r, g, b, a) [UIColor colorWithRed:((r) / 255.0f) green:((g) / 255.0f) blue:((b) / 255.0f) alpha:(a)]
#endif

#ifndef UIColorHSB          // e.g. UIColorHSB(0, 1, 0, 0.5)
#define UIColorHSB(h, s, b)     [UIColor colorWithHue:(h) saturation:(s) brightness:(b) alpha:1]
#endif

#ifndef UIColorHSBA         // e.g. UIColorHSBA(1, 0, 0, 0.5)
#define UIColorHSBA(h, s, b, a) [UIColor colorWithHue:(h) saturation:(s) brightness:(b) alpha:(a)]
#endif

#ifndef UIColorHSL          // e.g. UIColorHSL(1, 0, 0.5)
#define UIColorHSL(h, s, l)     [UIColor colorWithHue:(h) saturation:(s) lightness:(l) alpha:1]
#endif

#ifndef UIColorHSLA         // e.g. UIColorHSLA(1, 0, 0, 0.5)
#define UIColorHSLA(h, s, l, a) [UIColor colorWithHue:(h) saturation:(s) lightness:(l) alpha:(a)]
#endif

#ifndef UIColorCMYK         // e.g. UIColorCMYK(0, 0, 1, 0.5)
#define UIColorCMYK(c, m, y, k) [UIColor colorWithCyan:(c) magenta:(m) yellow:(y) black:(k) alpha:1]
#endif

#ifndef UIColorCMYKA        // e.g. UIColorCMYKA(0, 0, 1, 0, 0.5)
#define UIColorCMYKA(c, m, y, k, a) [UIColor colorWithCyan:(c) magenta:(m) yellow:(y) black:(k) alpha:(a)]
#endif

#ifndef UIColorHex          // e.g. UIColorHex(@"#66ccff")
#define UIColorHex(hex)   [UIColor jk_colorWithHexString:(hex)]
#endif

#ifndef UIColorHexA         // e.g. UIColorHexA(@"#66ccff", 0.5)
#define UIColorHexA(hex, a)   [UIColor jk_colorWithHexString:(hex) alpha:(a)]
#endif

@interface UIColor (CExtention)
@property (nonatomic, readonly) uint32_t red;    // 0 - 255
@property (nonatomic, readonly) uint32_t green;  // 0 - 255
@property (nonatomic, readonly) uint32_t blue;   // 0 - 255
@property (nonatomic, readonly) CGFloat alpha;   // 0.0 - 1.0

+ (UIColor *)jk_colorWithRGB:(uint32_t)rgbValue;    // e.g. rgbValue = 0x66ccff
+ (UIColor *)jk_colorWithRGBA:(uint32_t)rgbaValue;  // e.g. rgbaValue = 0x66ccffff
+ (UIColor *)jk_colorWithRGB:(uint32_t)rgbValue alpha:(CGFloat)alpha;  // e.g. rgbValue = 0x66ccff, alpha = 0.5

+ (UIColor *)jk_colorWithHexString:(NSString *)hexStr;  // e.g. hexStr = #rgb #rgba #rrggbb 0xrrggbb rrggbb
+ (UIColor *)jk_colorWithHexString:(NSString *)hexStr alpha:(CGFloat)alpha;

- (uint32_t)jk_rgbValue;

@end
