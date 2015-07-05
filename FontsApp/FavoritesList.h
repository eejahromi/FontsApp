//
//  FavoritesList.h
//  FontsApp
//
//  Created by Ehsan Jahromi on 3/31/15.
//  Copyright (c) 2015 Ehsan Jahromi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FavoritesList : NSObject

+(instancetype)sharedFavoritesList;

-(void)moveItemAtIndex:(NSInteger)from toIndex:(NSInteger)to;

-(NSArray *)favorites;

-(void)addFavorite:(id)item;
-(void)removeFavorite:(id)item;

@end
