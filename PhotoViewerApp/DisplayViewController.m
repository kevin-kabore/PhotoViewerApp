//
//  DisplayViewController.m
//  PhotoViewerApp
//
//  Created by Kevin Kabore on 3/29/16.
//  Copyright © 2016 Kevin Kabore. All rights reserved.
//

#import "DisplayViewController.h"

@interface DisplayViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *CurrentImage;


@end

@implementation DisplayViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    UIImage *image = [UIImage imageNamed:self.currentPhoto.fileName];
    [self.CurrentImage setImage:image];

    self.title = self.currentPhoto.name;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
   //create a reference for where we're going
    InfoViewController *ivc = [segue destinationViewController];
    //Pass in the object
    ivc.currentPhoto = self.currentPhoto;
    
    // Pass the selected object to the new view controller.
    //what's being selected
    
}

@end
