functor 
import 
    gates at 'gates.ozf'

define
    fun{halfSubtractor A B}
        local S T NOT 
        in
            NOT= {gates.notg A}
            S= {gates.xorg A B}
            T= {gates.andg NOT B}

            % Agregando as saídas em uma tupla
            {S T}
            end
        end    


