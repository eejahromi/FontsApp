//
//  FontListViewController.h
//  FontsApp
//
//  Created by Ehsan Jahromi on 3/31/15.
//  Copyright (c) 2015 Ehsan Jahromi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FontListViewController : UITableViewController

@property (copy,nonatomic) NSArray *fontNames;
@property (assign,nonatomic) BOOL showsFavorites;

@end
