import ElectricalComponents;
size(200);

pair A=(0,0), B=(40,0);
join(A,B,PNP(),NPN());

shipout(bbox(2mm,invisible));
