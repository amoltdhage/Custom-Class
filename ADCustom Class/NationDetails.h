//
//  NationDetails.h
//  ADCustom Class
//
//  Created by Student P_02 on 05/08/16.
//  Copyright © 2016 Amol Dhage. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Nation.h"

@interface NationDetails : UIViewController

@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@property (weak, nonatomic) IBOutlet UILabel *labelNation;

@property (weak, nonatomic) IBOutlet UILabel *labelCapital;

@property (nonatomic,retain)Nation * n;

@end
