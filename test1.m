global uLINK;
p_r=zeros(3,7);
for i=2:8
    p_r(:,i-1)=uLINK(i).p;
end
p_l=zeros(3,7);
for i=9:15
    p_l(:,i-8)=uLINK(i).p;
end
axis equal;
plot3(p_r(1,:),p_r(2,:),p_r(3,:),'g-o');
hold on;
plot3(p_l(1,:),p_l(2,:),p_l(3,:),'g-o');
set(gca,'XLim',[-1,1],...
        'YLim',[-1,1]...
    );
xlabel('x-axis');
ylabel('y-axis');
zlabel('z-axis');
grid on;
