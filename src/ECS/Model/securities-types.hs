module ECS.Model.SecuritiesTypes (
  TradingType,
  tradeTypeFromCode

  ) where


data TradeType = Spot | OptBuyExc | OptSellExc | Auction | Fraction | Term |  FutureRetainedEarnings | FutureContinuousMov | OptBuy | OptSell
data BDI = StandardIssue | Bankrupt | ReceiptsClaims | RealEstateFunds | Bonds | Obligations | PrivateMarketBonus | InsuranceBonusPublicBonds | IndexBuyOptions | IndexSellOptions | OptionBuyingExc | OptionSellingExc | UnquotedSecuritiesAuction | Auction | BustedStocksAuction | SalesBySapena | Others | TradeForStocks | Target | Term | BondsExpiryBefore3Years | BondsExpiryAfter3Years | BDIFutureCont | BDIFutureRetaindedEarnings | BondsAndPromises | FractionaryMarket | Total


