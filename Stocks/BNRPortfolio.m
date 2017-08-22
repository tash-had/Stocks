//
//  BNRPortfolio.m
//  Stocks
//
//  Created by Tash-had Saqif on 2017-08-21.
//  Copyright © 2017 Tash-had Saqif. All rights reserved.
//

#import "BNRPortfolio.h"
#import "BNRStockHolding.h" 

@interface BNRPortfolio ()
{
    NSMutableArray *_holdings;
}
@end
@implementation BNRPortfolio

- (void)setHoldings:(NSArray *)a{
    _holdings = [a mutableCopy];
}
- (void)addStock:(BNRStockHolding *)stock{
    if (!_holdings){
        _holdings = [[NSMutableArray alloc] init];
    }
    [_holdings addObject:stock];
}
- (void)removeStock:(BNRStockHolding *)a{
    if (_holdings){
        for (BNRStockHolding *stock in _holdings){
            if (stock.symbol == a.symbol){
                [_holdings removeObject:stock];
            }
        }
    }
}
- (float)totalValue{
    float sum = 0;
    for (BNRStockHolding *stock in _holdings){
        sum += stock.valueInDollars;
    }
    return sum;
}

@end
