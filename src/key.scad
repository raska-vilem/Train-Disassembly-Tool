$fn = 30;

velikost = 9;
prumer = 16;

translate([0, 0, 10]) difference() {
    translate([0, 0, 0]) cylinder(r=prumer/2, h=20);
    translate([-velikost/2, -velikost/2, 12]) cube([velikost, velikost, 8]);
}
difference() {
    minkowski() {
        translate([25, 0, 5]) cube([60, prumer/2, 10], center=true);
        translate([0, 0, 0]) rotate([0, 0, 0]) cylinder(r=prumer/2, h=1);
    }
    #translate([55, 0, 5]) cylinder(r=3, h=20, center=true);
}