module Bovespa(
  
) where
  
import ECS.Model.SecuritiesTypes


instance (TradeType tt ) => DisplayInternational tt where
  PtBR >-> Spot                    = "À vista"
  PtBR >-> OptBuyExc               = "Exercício de Opções de Compra"
  PTBR >-> OptSellExc              = "Exercício de Opções de Venda"
  PtBR >-> Auction                 = "Leilão"
  PtBR >-> Fraction                = "Fracionário"
  PtBR >-> Term                    = "Termo"
  PtBR >-> FutureRetainedEarnings  = "Futuros com ganhos retidos"
  PtBR >-> FutureContinuousMov     = "Futuro Movimentação Contínua"
  PtBR >-> OptBuy                  = "Opções de Compra"
  PtBR >-> OptSell                 = "Opções de Venda"
     _ >-> _                       = error "Não definido para este idioma"

  
data SecurityType = Stp{abbrev :: String, desc:: String} deriving (Show)

fromAbbrev:: (String a, SecurityType s) => a -> s

fromAbbrev abr = case abr of
     "ON"  -> Stp "ON"  "AÇÕES ORDINÁRIAS NOMINATIVAS"
     "PNA" -> Stp "PNA" " AÇÕES PREFERENCIAIS NOMINATIVAS CLASSE A"
     "PNB" -> Stp "PNB" "AÇÕES PREFERENCIAIS NOMINATIVAS CLASSE B"
     "PNC" -> Stp "PNC" " AÇÕES PREFERENCIAIS NOMINATIVAS CLASSE C"
     "PND" -> Stp "PND" " AÇÕES PREFERENCIAIS NOMINATIVAS CLASSE D"



tradeTypeFromCode ::   Int -> TradeType
tradeTypeFromCode 10 = Spot
tradeTypeFromCode 12 = OptBuyExc
tradeTypeFromCode 13 = OptSellExc
tradeTypeFromCode 17 = Auction
tradeTypeFromCode 20 = Fraction
tradeTypeFromCode 30 = Term
tradeTypeFromCode 50 = FutureRetainedEarnings
tradeTypeFromCode 60 = FutureContinuousMov
tradeTypeFromCode 70 = OptBuy
tradeTypeFromCode 80 = OptSell
tradeTypeFromCode _  = error "Invalid trade type"


bdiFromCode:: Int -> BDI
bdiFromCode 2  = StandardIssue
bdiFromCode 6  = Bankrupt
bdiFromCode 10 = ReceiptsClaims
bdiFromCode 12 = RealEstateFunds
bdiFromCode 14 = Bonds
bdiFromCode 18 = Obligations
bdiFromCode 22 = PrivateMarketBonus
bdiFromCode 26 = InsuranceBonusPublicBonds
bdiFromCode 32 = IndexBuyOptions
bdiFromCode 33 = IndexSellOptions
bdiFromCode 38 = OptionBuyingExc
bdiFromCode 42 = OptionSellingExc
bdiFromCode 46 = UnquotedSecuritiesAuction
bdiFromCode 48 = Auction
bdiFromCode 50 = Auction
bdiFromCode 51 = Auction
bdiFromCode 52 = Auction
bdiFromCode 53 = Auction
bdiFromCode 54 = BustedStocksAuction
bdiFromCode 58 = Outros
bdiFromCode 60 = TradeForStocks
bdiFromCode 61 = Target
bdiFromCode 62 = Term
bdiFromCode 66 = BondsExpiryBefore3Years
bdiFromCode 68 = BondsExpiryAfter3Years
bdiFromCode 70 = BDIFutureCont
bdiFromCode 71 = BDIFutureRetainedEarnings
bdiFromCode 83 = BondsAndPromises
bdiFromCode 96 = FractionaryMarket
bdiFromCode 99 = Total
bdiFromCode 74 = IndexBuyOptions
bdiFromCode 75 = IndexSellOptions
bdiFromCode 78 = BDIBuyOpt
bdiFromCode 82 = BDISellOpt
bdiFromCode _ = error "Unknow Code"

              --02 LOTE PADRÃO
--06 CONCORDATÁRIAS
--10 DIREITOS E RECIBOS
--12 FUNDOS IMOBILIÁRIOS

--14 CERTIFIC. INVESTIMENTO / DEBÊNTURES / TÍTULOS DIVIDA PÚBLICA 18 OBRIGAÇÕES
--22 BÔNUS (PRIVADOS)
--26 APÓLICES / BÔNUS / TÍTULOS PÚBLICOS
--32 EXERCÍCIO DE OPÇÕES DE COMPRA DE ÍNDICE
--33 EXERCÍCIO DE OPÇÕES DE VENDA DE ÍNDICE
--38 EXERCÍCIO DE OPÇÕES DE COMPRA 42 EXERCÍCIO DE OPÇÕES DE VENDA 46 LEILÃO DE TÍTULOS NÃO COTADOS
--48 LEILÃO
--50 LEILÃO
--51 LEILÃO
--52 LEILÃO
--53 LEILÃO
--54 LEILÃO DE AÇÕES EM MORA
--56 VENDAS POR ALVARÁ JUDICIAL 58 OUTROS
--60 PERMUTA POR AÇÕES
--61 META
--62 TERMO
--66 DEBÊNTURES COM DATA DE VENCIMENTO ATÉ 3 ANOS
--68 DEBÊNTURES COM DATA DE VENCIMENTO MAIOR QUE 3 ANOS
--70 FUTURO COM MOVIMENTAÇÃO CONTÍNUA
--71 FUTURO COM RETENÇÃO DE GANHO
--74 OPÇÕES DE COMPRA DE ÍNDICES
--75 OPÇÕES DE VENDA DE ÍNDICES
--78 OPÇÕES DE COMPRA
--82 OPÇÕES DE VENDA
---83 DEBÊNTURES E NOTAS PROMISSÓRIAS
--96 FRACIONÁRIO 99 TOTAL GERAL
