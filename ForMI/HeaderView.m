//
//  HeaderView.m
//  ForMI
//
//  Created by allen on 16/5/5.
//  Copyright © 2016年 allen. All rights reserved.
//

#import "HeaderView.h"
#import "UIImageView+Extension.h"

@interface HeaderView()
@property (nonatomic,weak) UIView * horizontalLineView1;
@property (nonatomic,weak) UIView * horizontalLineView2;
@property (nonatomic,weak) UIView * verticalLineView;
@property (nonatomic,strong) UIImageView * avator;
@property (nonatomic,strong) UILabel * namelabel;
@property (nonatomic,strong) UILabel * referralLabel;
@property (nonatomic,strong) UILabel * accountLabel;
@property (nonatomic,strong) UILabel * myCollect;
@property (nonatomic,strong) UILabel * collectV;
@property (nonatomic,strong) UILabel *  myDelegate;
@end

@implementation HeaderView


-(UIImageView *)avator{
    if (_avator == nil) {
        _avator = [UIImageView  createRoundedRectImage:[[UIImageView alloc]init] andSize:CGSizeMake(81, 81) withImageName:@"touxiang"];
    }
    return  _avator;
}

-(UILabel *)namelabel{
    if (_namelabel == nil) {
        _namelabel = [[UILabel alloc] init];
        _namelabel.font = [UIFont systemFontOfSize:14];
        _namelabel.alpha = 0.7;
        _namelabel.text = @"QQ用户  代理等级";
        
    }
    
    return _namelabel;
    
}

-(UILabel *)referralLabel{
    if (_referralLabel == nil) {
        _referralLabel = [[UILabel alloc] init];
        _referralLabel.font = [UIFont systemFontOfSize:14];
        _referralLabel.alpha = 0.7;
        _referralLabel.text = @"推荐人:  龙傲天";
        
    }
    
    return  _referralLabel;
}


-(UILabel *)accountLabel{
    if (_accountLabel == nil) {
        _accountLabel = [[UILabel alloc] init];
        _accountLabel.font = [UIFont systemFontOfSize:14];
        _accountLabel.alpha = 0.7;
        _accountLabel.text = @"账号:     13243789563";
    }
    return _accountLabel;
}


-(UILabel *)myCollect{
    if (_myCollect == nil) {
        _myCollect = [[UILabel alloc] init];
        _myCollect.font = [UIFont systemFontOfSize:14];
        _myCollect.alpha = 0.7;
        _myCollect.text = @"我的收藏";
        _myCollect.textAlignment = NSTextAlignmentCenter;

    }
    
    return _myCollect;

}

-(UILabel *)collectV{
    if (_collectV == nil) {
        _collectV = [[UILabel alloc] init];
        _collectV.text = @"1";
        _collectV.textAlignment = NSTextAlignmentCenter;
    }
    return _collectV;
}


//private lazy var myDelegate:UILabel = {
//    let delegate = UILabel()
//    delegate.font = UIFont.systemFontOfSize(14)
//    delegate.alpha = 0.7
//    delegate.text = "我的代理"
//    delegate.textAlignment = .Center
//    return delegate
//}()
//
//private lazy var delegateV:UILabel = {
//    let delegate = UILabel()
//    delegate.text = "1"
//    delegate.textAlignment = .Center
//    return delegate
//
//
//}()
//
//
//
//
//
//
//func createLineView() -> UIView {
//    let line = UIView()
//    line.backgroundColor = UIColor.grayColor()
//    line.alpha = 0.3
//    return line
//}
//
//
//
//
//override init(frame:CGRect){
//    super.init(frame: frame)
//    backgroundColor = UIColor.whiteColor()
//    horizontalLineView1 = createLineView()
//    horizontalLineView2 = createLineView()
//    verticalLineView = createLineView()
//    addSubview(avator)
//    addSubview(namelabel)
//    addSubview(referralLabel)
//    addSubview(accountLabel)
//    addSubview(horizontalLineView1!)
//    addSubview(horizontalLineView2!)
//    addSubview(verticalLineView!)
//    addSubview(myCollect)
//    addSubview(collectV)
//    addSubview(myDelegate)
//    addSubview(delegateV)
//}
//
//required init?(coder aDecoder: NSCoder) {
//    fatalError("init(coder:) has not been implemented")
//}
//
//
//override func layoutSubviews() {
//    super.layoutSubviews()
//    avator.frame.origin = CGPoint(x: 18, y: 18)
//    namelabel.frame = CGRect(x: CGRectGetMaxX(avator.frame) + 18, y: 25, width: bounds.width - CGRectGetMaxX(avator.frame)-18, height: 15)
//
//    referralLabel.frame = CGRect(x:CGRectGetMaxX(avator.frame) + 18, y: CGRectGetMaxY(namelabel.frame) + 14, width: namelabel.frame.width, height: 15)
//
//    accountLabel.frame = CGRect(x: CGRectGetMaxX(avator.frame) + 18, y: CGRectGetMaxY(referralLabel.frame) + 14, width: namelabel.frame.width, height: 15)
//    horizontalLineView1?.frame = CGRect(x: 0, y: 119, width: bounds.width, height: 1)
//    horizontalLineView2?.frame = CGRect(x: 0, y: 201, width: bounds.width, height: 1)
//    verticalLineView?.frame = CGRect(x: bounds.width/2 - 1, y: 119, width: 1, height: 82)
//
//    collectV.center = CGPoint(x: bounds.width/4, y: CGRectGetMaxY(horizontalLineView1!.frame) + 32 )
//
//    collectV.frame.size = CGSize(width: 14, height: 14)
//    myCollect.center = CGPoint(x: bounds.width/4, y: CGRectGetMaxY(collectV.frame) + 20)
//    myCollect.frame.size = CGSize(width: bounds.width/2 - 2, height: 14)
//
//    delegateV.center = CGPoint(x: bounds.width*3/4, y: CGRectGetMaxY(horizontalLineView1!.frame) + 32 )
//
//    delegateV.frame.size =  CGSize(width: 14, height: 14)
//
//    myDelegate.center = CGPoint(x: bounds.width*3/4, y: CGRectGetMaxY(collectV.frame) + 20)
//
//    myDelegate.frame.size = CGSize(width: bounds.width/2 - 2, height: 14)
//}



@end
