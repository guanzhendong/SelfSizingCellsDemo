//
//  AutoHeightTableViewCell.h
//  SelfSizingCellsDemo
//
//  Created by ec on 2019/1/18.
//  Copyright © 2019年 gzd. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface AutoHeightTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *contentLabel;
@property (weak, nonatomic) IBOutlet UILabel *subLabel;

@end

NS_ASSUME_NONNULL_END
