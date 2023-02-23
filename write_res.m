fid=fopen('kick11.txt','wt');
[m,n]=size(res1);
for i=1:m
    for j=1:n
        if j==n
            fprintf(fid,'%g\n',res1(i,j));
        else
            fprintf(fid,'%g \t',res1(i,j));
        end
    end
end

[m,n]=size(res2);
for i=1:m
    for j=1:n
        if j==n
            fprintf(fid,'%g\n',res2(i,j));
        else
            fprintf(fid,'%g \t',res2(i,j));
        end
    end
end

[m,n]=size(res3);
for i=1:m
    for j=1:n
        if j==n
            fprintf(fid,'%g\n',res3(i,j));
        else
            fprintf(fid,'%g \t',res3(i,j));
        end
    end
end

[m,n]=size(res4);
for i=1:m
    for j=1:n
        if j==n
            fprintf(fid,'%g\n',res4(i,j));
        else
            fprintf(fid,'%g \t',res4(i,j));
        end
    end
end

[m,n]=size(res5_1);
for i=1:m
    for j=1:n
        if j==n
            fprintf(fid,'%g\n',res5_1(i,j));
        else
            fprintf(fid,'%g \t',res5_1(i,j));
        end
    end
end

[m,n]=size(res5_2);
for i=1:m
    for j=1:n
        if j==n
            fprintf(fid,'%g\n',res5_2(i,j));
        else
            fprintf(fid,'%g \t',res5_2(i,j));
        end
    end
end

[m,n]=size(res6_1);
for i=1:m
    for j=1:n
        if j==n
            fprintf(fid,'%g\n',res6_1(i,j));
        else
            fprintf(fid,'%g \t',res6_1(i,j));
        end
    end
end

[m,n]=size(res6_2);
for i=1:m
    for j=1:n
        if j==n
            fprintf(fid,'%g\n',res6_2(i,j));
        else
            fprintf(fid,'%g \t',res6_2(i,j));
        end
    end
end

[m,n]=size(res7);
for i=1:m
    for j=1:n
        if j==n
            fprintf(fid,'%g\n',res7(i,j));
        else
            fprintf(fid,'%g \t',res7(i,j));
        end
    end
end

[m,n]=size(res8);
for i=1:m
    for j=1:n
        if j==n
            fprintf(fid,'%g\n',res8(i,j));
        else
            fprintf(fid,'%g \t',res8(i,j));
        end
    end
end

[m,n]=size(res9);
for i=1:m
    for j=1:n
        if j==n
            fprintf(fid,'%g\n',res9(i,j));
        else
            fprintf(fid,'%g \t',res9(i,j));
        end
    end
end

[m,n]=size(res10);
for i=1:m
    for j=1:n
        if j==n
            fprintf(fid,'%g\n',res10(i,j));
        else
            fprintf(fid,'%g \t',res10(i,j));
        end
    end
end
fclose(fid);