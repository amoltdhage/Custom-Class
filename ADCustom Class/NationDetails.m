//
//  NationDetails.m
//  ADCustom Class
//
//  Created by Student P_02 on 05/08/16.
//  Copyright © 2016 Amol Dhage. All rights reserved.
//

#import "NationDetails.h"

@interface NationDetails ()

@end

@implementation NationDetails

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.imageView.image=[UIImage imageNamed:self.n.imagename];
    
    self.labelNation.text=self.n.name;
    
    self.labelCapital.text=self.n.capital;
    
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
