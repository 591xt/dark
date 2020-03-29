//
//  Color.h
//  dark
//
//  Created by ejiang on 2020/3/23.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface Color : NSObject

@property (nonatomic, strong) UIColor* backColor;
@property (nonatomic, strong) UIColor* imageColor;


@property(nonatomic)BOOL isDark;

+(instancetype)darkColor;
-(void)setDarkColorArray;
-(void)setBrightColorArray;

@end

NS_ASSUME_NONNULL_END
