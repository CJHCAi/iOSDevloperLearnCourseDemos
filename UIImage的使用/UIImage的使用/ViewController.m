//
//  ViewController.m
//  UIImage的使用
//
//  Created by 火虎MacBook on 2020/12/10.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 1.创建UIImageView对象
    UIImageView *imageView = [[UIImageView alloc] init];
    
    // 2. 设置尺寸
//    imageView.frame = CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height);
    imageView.frame = self.view.bounds;
    
    // 3. 设置背景颜色
    imageView.backgroundColor = [UIColor redColor];
    
    // 4. 设置背景图片
    imageView.image = [UIImage imageNamed:@"1"];
    
    // 5.设置图片的内容模式
    imageView.contentMode = UIViewContentModeScaleAspectFill;
    
    // 6.加毛玻璃
    
    // 6.1 创建UIToolBar对象
    UIToolbar *toolBar = [[UIToolbar alloc] init];
    // 6.2 设置toolBar的frame
    toolBar.frame = imageView.bounds;
    // 6.3 设置毛玻璃的样式
    toolBar.barStyle = UIBarStyleBlack;
    toolBar.alpha = 0.98;
    // 6.4 加到imageView中
    [imageView addSubview:toolBar];

    // 加到控制器的view中
    [self.view addSubview:imageView];
   
}


- (void)test{
    // 1.1 创建UIImageView对象
    UIImageView *imageView = [[UIImageView alloc] init];
    
    // 1.2 设置frame
    imageView.frame = CGRectMake(100, 100, 250, 200);
    
    // 1.3 设置背景
    //    imageView.backgroundColor = [UIColor greenColor];
    
    // 1.4 设置图片 (png不需要后缀)
    imageView.image = [UIImage imageNamed:@"1"];
    
    
    /**
     
     UIViewContentModeRedraw, // 重新绘制 (核心绘图) drawRact
     
     //带有Scale,标明图片有可能被拉伸或压缩
     UIViewContentModeScaleToFill, // 完全的压缩或拉伸
     
     // Aspect 比例,缩放是带有比例的
     UIViewContentModeScaleAspectFit, // 宽高比不变 Fit 适应
     UIViewContentModeScaleAspectFill, // 宽高比不变 Fill 填充
     
     //不带有Scale,标明图片不可能被拉伸或压缩
     UIViewContentModeCenter,
     UIViewContentModeTop,
     UIViewContentModeBottom,
     UIViewContentModeLeft,
     UIViewContentModeRight,
     UIViewContentModeTopLeft,
     UIViewContentModeTopRight,
     UIViewContentModeBottomLeft,
     UIViewContentModeBottomRight,
     */
    // 1.5 设置图片的内容模式
    imageView.contentMode = UIViewContentModeScaleAspectFill;
    
    // 2.0 加到控制器的view中
    [self.view addSubview:imageView];
    
    // 裁剪多余的部分
    imageView.clipsToBounds = YES;
}

- (void)SetImageViewFrame{
    /*
    
    
    // 设置frame的方式
    // 方式一
      UIImageView *imageView = [[UIImageView alloc] init];
      imageView.image = [UIImage imageNamed:@"1"];
     
//    imageView.frame = CGRectMake(100, 100, 267, 400);
//    imageView.frame = (CGRect){{100, 100},{267, 400}};
    */
    
    // 方式二
    /*
    UIImageView *imageView = [[UIImageView alloc] init];
    // 创建一个UIImage对象
    UIImage *image = [UIImage imageNamed:@"1"];
    // 设置frame
    imageView.frame = CGRectMake(100, 10, image.size.width, image.size.height);
    // 设置图片
    imageView.image = image;
     */
    
    // 方式三
    /*
    // 创建一个UIImage对象
    UIImage *image = [UIImage imageNamed:@"1"];
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(100, 10, image.size.width, image.size.height)];
    imageView.image = image;
     */
    
    // 方式四
    
    // 创建一个UIimageview对象
    // 注意: initWithImage 默认就有尺寸--->图片的尺寸
    UIImageView *imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"1"]];
    
    // 改变位置
//    imageView.center = CGPointMake(200, 150);
    
    imageView.center = CGPointMake(self.view.frame.size.width * 0.5, self.view.frame.size.height * 0.5);
    
    [self.view addSubview:imageView];

@end
