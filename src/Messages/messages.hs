module Messages (sel) where

import 

data Language ptBR "pt_BR" | enUS "en_US" 
data Message Hello{name::String} | 
             IHave{obj::String,obPl::String,qtty::Int}

class LanguagePack l m  where
      sel :: l -> m -> String
      

instance LanguagePack ptBR Message
    sel ptBR (Hello nome) = "Oi, " ++ nome
    sel ptBR (IHave o opl qt) = "Eu tenho " ++ show qt ++ if(qt > 1) opl else o ++ "! E você?"      
    sel ptBR _ = error "Nenhuma mensagem definida para este caso"

instance LanguagePack enUS Message where
   sel enUS (Hello name) = "Hello " ++ name
   sel enUS (IHave o1 os qtty) "I have " ++ show qtty ++ " " ++ if(qtty > 1) os else o1 ++ "! And you?"
