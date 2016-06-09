//
//  MusicTableViewCell.h
//  CollectionViewInTableViewCell
//
//  Created by Dam Quang on 6/9/16.
//  Copyright © 2016 Dam Quang. All rights reserved.
//

#import <UIKit/UIKit.h>

#define MusicCell @"MusicCell"
@class MusicTableViewCell;
@protocol MusicTableViewCellDelegate <NSObject>

- (void)didTapCell:(MusicTableViewCell *)sender atIndexPath:(NSIndexPath *)indexPath;

@end

@interface MusicTableViewCell : UITableViewCell
+ (instancetype)initWithReuseIdentifier:(NSString *)reuseIdentifier;
@property (weak, nonatomic) id<MusicTableViewCellDelegate> delegate;

@end
