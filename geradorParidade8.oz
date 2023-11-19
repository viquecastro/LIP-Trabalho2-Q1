functor 
import 
    gates

define
    fun{parityGenerator A B C D E F G H}
        local XOR1, XOR2, XOR3, XOR4, XOR5, XOR6, XOR7
        in
            XOR1= {gates.XorG A B}
            XOR2= {gates.XorG C D}
            XOR3= {gates.XorG E F}
            XOR4= {gates.XorG G H}
            XOR5= {gates.XorG XOR1 XOR2}
            XOR6= {gates.XorG XOR3 XOR4}
            XOR7= {gates.XORG XOR5 XOR6}
        end
    end
