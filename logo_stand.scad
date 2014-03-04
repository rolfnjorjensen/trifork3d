logo_width = dxf_dim(file="Trifork.dxf", name="total_width")+5;
logo_height = dxf_dim(file="Trifork.dxf", name="total_height")+5;

block_thickness = 5;

a = logo_height/2;
c = logo_height;
b = sqrt(pow(c,2) - pow(a,2));

rotate([60,0,0]) {
	rotate([0, 90, 0]) linear_extrude(height=logo_width) polygon([[0,0], [0, c], [b, a]]);
	linear_extrude(height = 2.5) import(file = "Trifork.dxf");
};