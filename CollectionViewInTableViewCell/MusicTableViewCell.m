//
//  MusicTableViewCell.m
//  CollectionViewInTableViewCell
//
//  Created by Dam Quang on 6/9/16.
//  Copyright © 2016 Dam Quang. All rights reserved.
//

#import "MusicTableViewCell.h"
#import "MyCollectionViewController.h"
@interface MusicTableViewCell()<MyCollectionViewControllerDelegate>

@property (nonatomic) MyCollectionViewController *collectionView;
@property (weak, nonatomic) IBOutlet UIView *containerView;

@end

@implementation MusicTableViewCell

+ (instancetype)initWithReuseIdentifier:(NSString *)reuseIdentifier {
    MusicTableViewCell *cell = [[NSBundle mainBundle] loadNibNamed:NSStringFromClass([self class]) owner:self options:nil].firstObject;
    [cell setValue:reuseIdentifier forKey:@"reuseIdentifier"];
    
    return cell;
}

- (void)awakeFromNib {
    [super awakeFromNib];
    
    self.collectionView = [[MyCollectionViewController alloc] init];
    self.collectionView.view.frame = self.containerView.bounds;
    self.collectionView.delegate = self;
    [self.containerView addSubview:self.collectionView.view];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
}

- (void)collectionViewController:(MyCollectionViewController *)sender didSelectedItemAtIndexPath:(NSIndexPath *)indexPath {
    if ([self.delegate respondsToSelector:@selector(didTapCell:atIndexPath:)]) {
        [self.delegate didTapCell:self atIndexPath:indexPath];
    }
}

@end
