#import <UIKit/UIKit.h>

@interface MyViewController : UIViewController
@end

@implementation MyViewController {
    UILabel *label;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor systemBackgroundColor];

    // 라벨
    label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 300, 50)];
    label.center = self.view.center;
    label.textAlignment = NSTextAlignmentCenter;
    label.text = @"안녕 준호! 👋";
    [self.view addSubview:label];

    // 버튼
    UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
    [button setTitle:@"눌러봐!" forState:UIControlStateNormal];
    button.frame = CGRectMake(0, 0, 120, 50);
    button.center = CGPointMake(self.view.center.x, self.view.center.y + 80);
    [button addTarget:self action:@selector(buttonTapped) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
}

- (void)buttonTapped {
    label.text = @"버튼 눌렀네? 😎";
}

@end

int main(int argc, char * argv[]) {
    @autoreleasepool {
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([MyViewController class]));
    }
}