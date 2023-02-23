%designed by Yuan Kaidan
function idx = FindRoute(to, uLINK)

if nargin ==   1
    global uLINK
    i = uLINK(to).mother;
    if i == 1
        idx = [to];
    else
        idx = [FindRoute(i) to];
    end
    
else
    i = uLINK(to).mother;
    if i == 1
        idx = [i to];
    else
        idx = [FindRoute(i, uLINK) to];
    end
    
end


%% Fig. 2.37 FindRoute.m Find a route from the body to the target link