functor
export
   notg:  NotGate
   andg:  AndG
   org:   OrG
   nandg: NandG
   norg:  NorG
   xorg:  XorG

define
    fun {GateMaker F}
        fun {$ Xs Ys}
            fun {GateLoop Xs Ys}
                case Xs#Ys of (X|Xr)#(Y|Yr) then
                    {F X Y}|{GateLoop Xr Yr}
                end
            end
        in
            thread {GateLoop Xs Ys} end
        end
    end

% Porta NOT (1 entrada apenas)
    fun {NotGate Xs}
        case Xs of X|Xr then (1-X)|{NotGate Xr}
        else nil
        end
    end

% Demais Portas (2 Entradas)
    AndG ={GateMaker fun {$ X Y} X*Y end}
    OrG ={GateMaker fun {$ X Y} X+Y-X*Y end}
    NandG={GateMaker fun {$ X Y} 1-X*Y end}
    NorG ={GateMaker fun {$ X Y} 1-X-Y+X*Y end}
    XorG ={GateMaker fun {$ X Y} X+Y-2*X*Y end}
end