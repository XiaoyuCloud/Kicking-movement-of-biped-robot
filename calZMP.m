global uLINK;
g=9.81;
xx=0;
yy=0;
mg=0;
for i=2:14
    if(i==8)continue;
    end
    m=uLINK(i).m;
    c=uLINK(i).p + uLINK(i).R * uLINK(i).c/1000;
    x=c(1);
    y=c(2);
    xx= xx + m*g*x;
    yy= yy + m*g*y;
    mg= mg + m*g;
end
m=12;
c=uLINK(1).p;
x=c(1);
y=c(2);
xx= xx + m*g*x;
yy= yy + m*g*y;
mg= mg + m*g;
p(1)=xx/mg;
p(2)=yy/mg;
