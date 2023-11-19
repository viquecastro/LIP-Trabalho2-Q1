functor 
import 
    gates at 'gates.ozf'

define
    fun{parityGenerator A B C D E F G H}
        local XOR1 XOR2 XOR3 XOR4 XOR5 XOR6 XOR7
        in
            XOR1= {gates.xorg A B}
            XOR2= {gates.xorg C D}
            XOR3= {gates.xorg E F}
            XOR4= {gates.xorg G H}
            XOR5= {gates.xorg XOR1 XOR2}
            XOR6= {gates.xorg XOR3 XOR4}
            XOR7= {gates.xorg XOR5 XOR6}
        end
    end
