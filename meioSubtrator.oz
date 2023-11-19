functor 
import 
    gates 

define
    fun{halfSubtractor A B}
        local S T NOT 
        in
            NOT= {gates.NotGate A}
            S= {gates.XorG A B}
            T= {gates.AndG NOT B}

            % Agregando as saídas em uma tupla
            {S T}
            end
        end    


