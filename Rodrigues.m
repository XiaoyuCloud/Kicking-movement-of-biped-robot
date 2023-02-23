function e_a_theta = Rodrigues(a, theta)
    
    e_a_theta = eye(3) + hat(a) * sin(theta) + hat(a)^2*(1-cos(theta));
end