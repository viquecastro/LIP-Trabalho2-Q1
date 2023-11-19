import 
    gates

    proc {FullAdder X Y Z ?C ?S}
        KLM
    in
        K={AndG X Y}
        L={AndG Y Z}
        M={AndG X Z}
        C={OrG K{OrG L M}}
        S={XorG Z {XorG X Y}}
    end