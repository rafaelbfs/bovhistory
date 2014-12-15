module ECS.Model.SecuritiesTypes (
  TradingType,
  tradeTypeFromCode

  ) where


data TradeType = Spot | OptBuyExc | OptSellExc | Auction | Fraction | Term |  FutureRetainedEarnings | FutureContinuousMov | OptBuy | OptSell
