//
//  BNRStockHolding.m
//  Stocks
//
//  Created by Tash-had Saqif on 2017-06-20.
//  Copyright © 2017 Tash-had Saqif. All rights reserved.
//

#import "BNRStockHolding.h"

@implementation BNRStockHolding

//- (void)setSharePrice:(float)s{
//    _currentSharePrice = s;
//}
//- (float)getSharePrice{
//    return _currentSharePrice;
//}
//
//- (void)setPurchasePrice:(float)p{
//    _purchaseSharePrice = p; 
//}
//- (float)getPurchasePrice{
//    return _purchaseSharePrice;
//}
//- (int)getNumShares{
//    return _numberOfShares;
//}
//- (void)setNumShares:(int)n{
//    _numberOfShares = n; 
//}
- (float)costInDollars{
    return _purchasePrice * _numShares;
}
- (float)valueInDollars{
    return _sharePrice * _numShares;
}
@end
