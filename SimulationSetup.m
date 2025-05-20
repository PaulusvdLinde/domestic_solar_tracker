% Set up file for Simulation

% Load Solar Irradiance Data 
load("SolarIrradianceData.mat")

% Solar Panel Position
latitude = 54.051469;
longitude = -7.309389;

% Solar Panel Orientation 
panelAzimuth = 180.09;
panelElevation = 31.67; % note: Elevation is set for Static and Tracking

% Set time span [Y M D H Mi S]
startTime = datetime(2025,9,3,7,1,0);
endTime = datetime(2025,9,3,19,0,0);
timeVector = GenerateTimeVector(startTime,endTime);

function timeVector = GenerateTimeVector(startTime,endTime)
    % Generate Time Span vector in minutes
    timeSpan = startTime:seconds(1):endTime;
    % Break Components into Serate columns [ Y M D H Mi S]
    timeVector = datevec(timeSpan);
end