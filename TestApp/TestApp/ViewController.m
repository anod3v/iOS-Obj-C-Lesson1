//
//  ViewController.m
//  TestApp
//
//  Created by Andrey on 08/03/2021.
//

#import "ViewController.h"

@interface ViewController ()
@property (nonatomic, strong) UILabel *textLabel;
@property (nonatomic, strong) UITextField *textField;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view setBackgroundColor:[UIColor redColor]];

    UIImageView *imgView = [[UIImageView alloc] initWithFrame:CGRectMake(([self.view bounds].size.width - 150) / 2, 370, 150, 150)];
    [imgView setBackgroundColor:[UIColor yellowColor]];
    [imgView setImage:[UIImage imageNamed:@"moon"]];
    [imgView setContentMode:UIViewContentModeScaleAspectFill];
    [self.view addSubview:imgView];

    UIButton *button = [[UIButton alloc] initWithFrame:CGRectMake(10, 150, [self.view bounds].size.width - 20, 30)];
    [button setTitle:@"Navigate to next VC" forState:UIControlStateNormal];
    [button setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [button addTarget:self action:@selector(buttonPressed) forControlEvents:(UIControlEventTouchUpInside)];
    [self.view addSubview:button];
    
    self.textLabel = [[UILabel alloc] initWithFrame:CGRectMake(10, 70, [self.view bounds].size.width - 20, 50)];
    [self.textLabel setText:@"Hi, how are you?"];
    [self.textLabel setTextColor:[UIColor redColor]];
    [self.textLabel setBackgroundColor:[UIColor whiteColor]];
    [self.textLabel setTextAlignment:NSTextAlignmentCenter];
    [self.textLabel setFont:[UIFont systemFontOfSize:30 weight:UIFontWeightBold]];
    [self.view addSubview:self.textLabel];
    
    
    self.textField = [[UITextField alloc] initWithFrame:CGRectMake(10, 200, [self.view bounds].size.width - 20, 50)];
    [self.textField setBorderStyle:(UITextBorderStyleLine)];
    [self.textField setPlaceholder:@"Enter your text here..."];
    [self.view addSubview:self.textField];
    
}

- (void)buttonPressed {
    UIViewController * vc = [[UIViewController alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}


@end
