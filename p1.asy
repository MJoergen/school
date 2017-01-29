settings.outformat="pdf";
import ElectricalComponents;
size(7cm);

pair A=(0,40), B=(30,40), C=(60,40);
pair D=(0,0), F=(30,0), G=(60,0);
pair J=(B+F)/2;
pair K=(C+G)/2;
label("J",J,W);
label("K",K,E);
dot(B);
dot(F);
dot(J);
dot(K);

Element b = Battery(sign=true,size=1.8);
Element r1 = Resistor(rotate(90)*"$R_1$");
Element r2 = Resistor(rotate(90)*"$R_2$");
Element r3 = Resistor(rotate(90)*"$R_3$");
Element r4 = Resistor(rotate(90)*"$R_4$");
r1.setPosition(0.25);
r2.setPosition(0.75);
r3.setPosition(0.25);
r4.setPosition(0.75);


draw(A--C);
draw(D--G);
join(A,D, b, dot=false);
join(B,F, r1, r2, dot=false);
join(C,G, r3, r4, dot=false);

shipout(bbox(2mm,invisible));

