module ECS.Model.SecuritiesTypes (
  TradingType,
  tradeTypeFromCode

  ) where


data Language = PtBR | EnUS | DeDE

class  =>  DisplayInternational a where
  (>->) :: (Language l) => l -> a -> String

class (Ord i ) => IndexedEnum a where
  en :: i -> a
  


data TradeType = Spot | OptBuyExc | OptSellExc | Auction | Fraction | Term |  FutureRetainedEarnings | FutureContinuousMov | OptBuy | OptSell
data BDI = StandardIssue | Bankrupt | ReceiptsClaims | RealEstateFunds | Bonds | Obligations | PrivateMarketBonus | InsuranceBonusPublicBonds | IndexBuyOptions | IndexSellOptions | OptionBuyingExc | OptionSellingExc | UnquotedSecuritiesAuction | Auction | BustedStocksAuction | SalesBySapena | Others | TradeForStocks | Target | Term | BondsExpiryBefore3Years | BondsExpiryAfter3Years | BDIFutureCont | BDIFutureRetaindedEarnings | BondsAndPromises | FractionaryMarket | Total


