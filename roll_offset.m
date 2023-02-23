function [Link2] = roll_offset(uLINK2, left)
    sin_alpha=(left(3)-uLINK2(21).p(3))/0.06;
    cos_alpha=(uLINK2(21).p(2)-left(2))/0.06;
    A=zeros(2,2);
    A(1,1)=cos_alpha;
    A(1,2)=-sin_alpha;
    A(2,1)=sin_alpha;
    A(2,2)=cos_alpha;
    x1=zeros(2,1);
    x2=zeros(2,1);
    for j=1:24
        x1(1,1)=uLINK2(j).p(2)-left(2);
        x1(2,1)=uLINK2(j).p(3)-left(3);
        x2=A*x1;
        uLINK2(j).p(1)=uLINK2(j).p(1);
        uLINK2(j).p(2)=x2(1,1)+left(2);
        uLINK2(j).p(3)=x2(2,1)+left(3);
    end
    Link2=uLINK2;
end

            