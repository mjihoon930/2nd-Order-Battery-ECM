function V = output_V(in)

persistent R1 VOC_map SOC_map

t=in(1);

if t==0
    R1 = evalin('base','R1');
    VOC_map = evalin('base','VOC_map');
    SOC_map = evalin('base','SOC_map');
end

u = in(2);
SOC = in(3);
x = in(4);


VOC = interp1(SOC_map,VOC_map,SOC);

V=VOC+R1*u+x;

end