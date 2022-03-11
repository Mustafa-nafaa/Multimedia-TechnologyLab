clc;clear all   ;close  all
%Define the two variable and apply mathematical operation
a =1 ;
b=2  ;
sum1= a+b ;  
multi = a*b';
div =  a / b;
sub=  a-b; 

disp(['add= ',mat2str(sum1)])
disp(['multiplication= ', mat2str(multi)])
disp(['divided= ', mat2str(div)])
disp(['subtract= ',mat2str(sub)])  

%Define the two Vector 
%and apply mathematical operation
a=  [1 , 4, 5  ];
b=  [7 3 2 ];

sum1= a+b ;  
multi = a*b';
div =  a / b;
sub=  a-b; 

disp(['add= ',mat2str(sum1)])
disp(['multiplication= ', mat2str(multi)])
disp(['divided= ', mat2str(div)])
disp(['subtract= ',mat2str(sub)])

%Define the two Matrix 
%and apply mathematical operation
a=  [1 , 4, 5 ;  5 8 9 ];
b=  [4 ,3 ,5 ; 7 3 2 ];

sum1= a+b ;  
multi = a*b';
div =  a / b;
sub=  a-b; 

disp(['add= ',mat2str(sum1)])
disp(['multiplication= ', mat2str(multi)])
disp(['divided= ', mat2str(div)])
disp(['subtract= ',mat2str(sub)])
