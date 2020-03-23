//
//  ViewController.m
//  dark
//
//  Created by ejiang on 2020/3/23.
//

#import "ViewController.h"
#import "Color.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor=[Color darkColor].backColor;
}

-(void)traitCollectionDidChange:(UITraitCollection *)previousTraitCollection
{
    [super traitCollectionDidChange: previousTraitCollection];
    if (@available(iOS 13.0, *))
    {
        if(UITraitCollection.currentTraitCollection.userInterfaceStyle == UIUserInterfaceStyleDark)
        {
            [[Color darkColor] setDarkColorArray];
        }
        else
        {
            [[Color darkColor] setBrightColorArray];
        }
        self.view.backgroundColor=[Color darkColor].backColor;
    }
}


@end
