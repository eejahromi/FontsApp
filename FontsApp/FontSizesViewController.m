//
//  FontSizesViewController.m
//  FontsApp
//
//  Created by Ehsan Jahromi on 3/31/15.
//  Copyright (c) 2015 Ehsan Jahromi. All rights reserved.
//

#import "FontSizesViewController.h"

@interface FontSizesViewController ()

@end

@implementation FontSizesViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

-(NSArray *)pointSizes{
    static NSArray *pointSizes = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken,^{
        pointSizes = @[@9,@10,@11,@12,@13,@14,@18,@24,@36,@48,@64,@72,@96,@144];
    });
    
    return pointSizes;
}

-(UIFont *)fontForDisplayAtIndexPath:(NSIndexPath *)indexPath{
    NSNumber *pointSize = self.pointSizes[indexPath.row];
    return [self.font fontWithSize:pointSize.floatValue];
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    return [self.pointSizes count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"FontNameAndSize" forIndexPath:indexPath];
    
    // Configure the cell...
    cell.textLabel.font = [self fontForDisplayAtIndexPath:indexPath];
    cell.textLabel.text = self.font.fontName;
    cell.detailTextLabel.text = [NSString stringWithFormat:@"%@ point",self.pointSizes[indexPath.row]];
    
    return cell;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    UIFont *font = [self fontForDisplayAtIndexPath:indexPath];
    return 25 + font.ascender - font.descender;
}






@end