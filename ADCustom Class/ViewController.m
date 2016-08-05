//
//  ViewController.m
//  ADCustom Class
//
//  Created by Student P_02 on 05/08/16.
//  Copyright © 2016 Amol Dhage. All rights reserved.
//

#import "ViewController.h"
#import "Nation.h"
#import "NationDetails.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.


Nation *n1 =[[Nation alloc]init];
n1.name =@"India";
n1.imagename =@"India.png";
n1.capital=@"New Delhi";


Nation *n2 =[[Nation alloc]init];
n2.name =@"Austia";
n2.imagename =@"Austria.png";
n2.capital=@"Jeneva";


Nation *n3 =[[Nation alloc]init];
n3.name =@"Brazil";
n3.imagename =@"Brazil.png";
n3.capital=@"Reo de Generio";


Nation *n4 =[[Nation alloc]init];
n4.name =@"China";
n4.imagename =@"China.png";
n4.capital=@"Bejing";


Nation *n5 =[[Nation alloc]init];
n5.name =@"Germany";
n5.imagename =@"Germany.png";
n5.capital=@"Berline";


Nation *n6 =[[Nation alloc]init];
n6.name =@"Greece";
n6.imagename =@"Greece.png";
n6.capital=@"Athence";

array =[NSArray arrayWithObjects:n1,n2,n3,n4,n5,n6,nil];
}


#pragma mark -TableView DataSource and Delegate Methods

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}



-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return array.count;
}


-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath

{
    static NSString * cellId = @"Cell";
    
    UITableViewCell *Cell =[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:cellId];
    
    
    Nation * temp =[array objectAtIndex:indexPath.row];
    
    Cell.textLabel.text =temp.name;
    Cell.detailTextLabel.text =temp.capital;
    Cell.imageView.image =[UIImage imageNamed:temp.imagename];
    
    return Cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath


{
    NationDetails * n = [ self.storyboard instantiateViewControllerWithIdentifier:@"NationDetails"];
    
    [self.navigationController pushViewController:n animated:YES];
    n.n=[array objectAtIndex:indexPath.row];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
