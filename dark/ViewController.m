//
//  ViewController.m
//  dark
//
//  Created by ejiang on 2020/3/23.
//

#import "ViewController.h"
#import "Color.h"

@interface ViewController ()

@property(strong,nonatomic)UIImageView* darkImage;
@property(strong,nonatomic)UIImageView* darkImageTwo;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor=[Color darkColor].backColor;
    
    self.darkImage=[[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 200, 200)];
    self.darkImage.image=[UIImage imageNamed:@"dark"];
    self.darkImage.center=CGPointMake(self.view.center.x, self.view.center.y-100);
    [self.view addSubview:self.darkImage];
    
    self.darkImageTwo=[[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 200, 200)];
    self.darkImageTwo.image=[[UIImage imageNamed:@"darkTwo"] imageWithRenderingMode:(UIImageRenderingModeAlwaysTemplate)];
    self.darkImageTwo.center=CGPointMake(self.view.center.x, self.view.center.y+100);
    [self.view addSubview:self.darkImageTwo];
    self.darkImageTwo.tintColor=[Color darkColor].imageColor;
    
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
        self.darkImageTwo.tintColor=[Color darkColor].imageColor;

    }
}


@end
