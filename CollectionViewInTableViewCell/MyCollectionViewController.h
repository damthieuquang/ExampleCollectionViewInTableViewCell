//
//  MyCollectionViewController.h
//  CollectionViewInTableViewCell
//
//  Created by Dam Quang on 6/9/16.
//  Copyright © 2016 Dam Quang. All rights reserved.
//

#import <UIKit/UIKit.h>

@class MyCollectionViewController;
@protocol MyCollectionViewControllerDelegate <NSObject>

- (void)collectionViewController:(MyCollectionViewController *)sender didSelectedItemAtIndexPath:(NSIndexPath *)indexPath;

@end

@interface MyCollectionViewController : UIViewController

@property (weak, nonatomic) id<MyCollectionViewControllerDelegate> delegate;
@end
