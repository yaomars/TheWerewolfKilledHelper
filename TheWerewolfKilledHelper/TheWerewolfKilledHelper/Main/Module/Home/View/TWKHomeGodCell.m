//
//  TWKHomeGodCell.m
//  TheWerewolfKilledHelper
//
//  Created by yinyao on 2018/12/28.
//  Copyright © 2018 yinyao. All rights reserved.
//

#import "TWKHomeGodCell.h"
#define Lbl_Tag_Basis   2000
#define Image_Tag_Basis 3000
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
    
    NSArray<TWKPerson *> *priestArray = [TWKTools getPriestArray];
    
    CGFloat w = 74.f;
    CGFloat h = 44.f;
    CGFloat y = (self.scrollView.bounds.size.height - h) * 0.5;
    CGFloat x = 0.f;
    CGFloat leftMargin   = 12.f;
    CGFloat middleMargin = 10.f;
    for (int i = 0; i < priestArray.count; i++) {
        NSString *name = priestArray[i].identityName;
        
        x = leftMargin + (w + middleMargin) * i;
        UILabel *lbl = [UILabel new];
        lbl.frame = CGRectMake(x, y, w, h);
        lbl.text = name;
        lbl.textColor = [UIColor blackColor];
        lbl.font = [UIFont systemFontOfSize:16.f];
        lbl.textAlignment = NSTextAlignmentCenter;
        lbl.layer.masksToBounds = YES;
        lbl.layer.cornerRadius  = 4.f;
        lbl.layer.borderWidth   = 1.f;
        lbl.layer.borderColor   = [UIColor lightGrayColor].CGColor;
        lbl.tag = Lbl_Tag_Basis + i;
        
        //
        UIImageView *selectImgView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"yy_return_ok"]];
        selectImgView.frame = CGRectMake(w - 14.f - 2.f, 2.f, 14.f, 14.f);
        [lbl addSubview:selectImgView];
        selectImgView.hidden = YES;
        selectImgView.tag = Image_Tag_Basis + i;
        
        [_scrollView addSubview:lbl];
        
        lbl.userInteractionEnabled = YES;
        UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapLabel:)];
        [lbl addGestureRecognizer:tap];
 
    }
    
    _scrollView.contentSize = CGSizeMake(x + w + leftMargin, h);
}

- (void)layoutSubviews {
    [super layoutSubviews];
    
    _scrollView.frame = CGRectMake(0, 0, self.contentView.bounds.size.width, self.contentView.bounds.size.height);
}

#pragma mark - action
- (void)tapLabel:(UITapGestureRecognizer *)tap {
    
    UIView *view = tap.view;
    if ([view isKindOfClass:[UILabel class]]) {
        UILabel *lbl = (UILabel *)view;
        NSLog(@"%@", lbl.text);
        UIImageView *imgView = [lbl viewWithTag:(lbl.tag - Lbl_Tag_Basis + Image_Tag_Basis)];
        imgView.hidden = !imgView.isHidden;
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
