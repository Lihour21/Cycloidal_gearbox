
% For Transmission Ratio
n = 26; %Number of Lobes
N = 27; %Number of Pins (Rollers)
% N = n + 1 is the condition
TR = (n/(N - n)); %Transmission Ratio
R = 80; %Rotor Radius
% Housing Circle Circumference
HCC = 2 * R * pi ();
Rr = (HCC/ (4 * N)); %Roller Radius
E = 1; %Shaft Eccentricity
for t = linspace (-180, 0, 360)
 X = (R*cosd(t))-(Rr*cosd(t+deg2rad(atan(sind((1-N)*t)/((R/(E*N))-cosd((1-N)*t))))))-(E*cosd(N*t));
% plot(X, Y, 'r*');
% hold on;
 Y = (-R*sind(t))+(Rr*sind(t+deg2rad(atan(sind((1-N)*t)/((R/(E*N))-cosd((1-N)*t))))))+(E*sind(N*t));
 plot(X, Y, 'r.');
 hold on;
end
for t = linspace (0, 180, 360)
 X = (R*cosd(t))-(Rr*cosd(t+deg2rad(atan(sind((1-N)*t)/((R/(E*N))-cosd((1-N)*t))))))-(E*cosd(N*t));
% plot(X, Y, 'b*');
% hold on;
 Y = (-R*sind(t))+(Rr*sind(t+deg2rad(atan(sind((1-N)*t)/((R/(E*N))-cosd((1-N)*t))))))+(E*sind(N*t));
 plot(X, Y, 'g.');
 hold on;
end