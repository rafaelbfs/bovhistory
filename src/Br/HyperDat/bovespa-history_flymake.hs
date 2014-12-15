module Bovespa(
) where
  
data SecurityType = Stp{abbrev :: String, desc:: String} deriving (Show)

fromAbbrev:: (String a, SecurityType s) => a -> s

fromAbbrev abr = case abr of
     "ON"  -> Stp "ON" "AÇÕES ORDINÁRIAS NOMINATIVAS"
     "PNA" -> Stp "PNA" " AÇÕES PREFERENCIAIS NOMINATIVAS CLASSE A"
     "PNB" -> Stp "PNB" "AÇÕES PREFERENCIAIS NOMINATIVAS CLASSE B"
     "PNC" -> Stp "PNC" " AÇÕES PREFERENCIAIS NOMINATIVAS CLASSE C"
     "PND" -> Stp "PND" " AÇÕES PREFERENCIAIS NOMINATIVAS CLASSE D"


       
