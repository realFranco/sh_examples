x=int

function set_x(){ x=$1; }

function print_x(){ echo $x;}

function first(){ set_x 1; print_x; }

function second(){ x=int; set_x 2; print_x; }

set_x 0;
first;
print_x
second;
print_x
