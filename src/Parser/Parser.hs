module AB.Parser (fromFile,ABHeader,ABTrail,ABRecord) where

import Data.Attoparsec.Lazy.Char8
import Data.Dates



data Header = Header {fileName :: String, fileDate :: DateTime}
data ABRecord = ABRecord {dateExchange :: DateTime , codBDI :: String, assetCode:: String, marketType :: MktType}

