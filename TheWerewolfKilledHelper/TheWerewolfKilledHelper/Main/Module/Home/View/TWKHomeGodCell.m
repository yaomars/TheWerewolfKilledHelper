//
//  TWKHomeGodCell.m
//  TheWerewolfKilledHelper
//
//  Created by yinyao on 2018/12/28.
//  Copyright © 2018 yinyao. All rights reserved.
//

#import "TWKHomeGodCell.h"

@interface TWKHomeGodCell ()

///滚动控件
@property (nonatomic, strong) UIScrollView     *scrollView;


@end

@implementation TWKHomeGodCell

- (void)awakeFromNib {
    [super awakeFromNib];
    
    //初始化UI
    [self setupUI];
}

- (void)setupUI {
    [self.contentView addSubview:self.scrollView];
    
    NSArray *priestArray = [TWKTools getPriestArray];
    for (int i = 0; i < priestArray.count; i++) {
        
    }
}

#pragma mark - getter
- (UIScrollView *)scrollView {
    if (!_scrollView) {
        _scrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, self.contentView.bounds.size.width, self.contentView.bounds.size.height)];
        _scrollView.showsHorizontalScrollIndicator = NO;
    }
    return _scrollView;
}

@end
