thick_length=2; //length thickness
thick_width=2; //width thickness
thick_bottom=2; //depth thickness
orig_length=120+2*thick_width; //original box length
orig_width=67; //original box width (100)
orig_depth=25+thick_bottom; //original box depth
wire_hole_radius=5; //RADIUS of the wire hole, NOT diameter
x_center_wire_hole=139; //x-axis location of wire hole
y_center_hole=(orig_width+2*thick_length)/2;
dist_from_front_bw_sensor=75; //amt of distance from the front of vehicle
x_wheel_hole_dist_from_back=115; //amt of distance from the back of the vehicle for the two metal wheel holes (x)
length_btwn_wheel_holes=38;
y_wheel_hole_dist_from_side_r=30; //amt of distance from the side of the vehicle for right metal wheel hole
dia_wheel_hole=3; //radius of each of the wheel holes
y_wheel_hole_dist_from_side_l=orig_width-y_wheel_hole_dist_from_side_r+6; //amt of distance from the side of the vehicle for left metal wheel hole
bottom_motor_hole=thick_bottom+dia_wheel_hole+1;
width_btwn_radiuses_motor_holes=17.5;
top_motor_hole=bottom_motor_hole+width_btwn_radiuses_motor_holes;
x_distance_back_motor_hole=45;
motor_wheel_radius=6.5;
motor_wheel_from_its_holes=x_distance_back_motor_hole-20;
motor_wheel_to_bottom=thick_bottom+11;
motor_wire_space_length=34;
motor_wire_space_height=25;
motor_hole_to_motor_wire_space=4.5;
y_holes_dist = 48;
x_holes_dist = 58;
x_hole_one = (orig_length-x_holes_dist-50)/2;
y_hole_one = (orig_width-y_holes_dist+5)/2;

//Left Side of Vehicle
difference(){
    translate([37.5,0,0]){
        cube([15,thick_length,orig_depth]);
    }
    translate([x_distance_back_motor_hole,thick_length,bottom_motor_hole]){
      rotate([90,0,0]){
          cylinder(h=bottom_motor_hole,d=dia_wheel_hole);
      }
    }
    translate([x_distance_back_motor_hole,thick_length,top_motor_hole]){
      rotate([90,0,0]){
          cylinder(h=bottom_motor_hole,d=dia_wheel_hole);
      }
    }
}
translate([0,thick_length + orig_width,0]){
    difference(){
        translate([37.5,0,0]){
            cube([15,thick_length,orig_depth]);
        }
        translate([x_distance_back_motor_hole,thick_length,bottom_motor_hole]){
          rotate([90,0,0]){
              cylinder(h=bottom_motor_hole,d=dia_wheel_hole);
          }
        }
        translate([x_distance_back_motor_hole,thick_length,top_motor_hole]){
          rotate([90,0,0]){
              cylinder(h=bottom_motor_hole,d=dia_wheel_hole);
          }
        }
    }
}

difference(){
    //Bottom of Vehicle
    cube([orig_length,orig_width+2*thick_length,thick_bottom]);
    translate([50,y_center_hole,0]){
      cylinder(h=thick_bottom,r=wire_hole_radius);
    }
    translate([85,y_center_hole,0]){
      cylinder(h=thick_bottom,d=dia_wheel_hole); 
    }
    translate([x_wheel_hole_dist_from_back,y_wheel_hole_dist_from_side_r,0]){
      cylinder(h=thick_bottom,d=dia_wheel_hole);
    }
    translate([x_wheel_hole_dist_from_back,y_wheel_hole_dist_from_side_l,0]){
      cylinder(h=thick_bottom,d=dia_wheel_hole);
    }
    translate([x_hole_one,y_hole_one,0]){
        cylinder(h=thick_bottom,d=dia_wheel_hole);
    }
    translate([x_hole_one,y_holes_dist+y_hole_one,0]){
        cylinder(h=thick_bottom,d=dia_wheel_hole);
    }
    translate([x_holes_dist+x_hole_one,y_hole_one,0]){
        cylinder(h=thick_bottom,d=dia_wheel_hole);
    }
    translate([x_holes_dist+x_hole_one,y_holes_dist+y_hole_one,0]){
        cylinder(h=thick_bottom,d=dia_wheel_hole);
    }
    
}