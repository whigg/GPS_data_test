function [GPS_wk, GPS_TOW] = date2GPSTime(utcDate)
gps_week_start = 'January 6 1980 00:00:00';
modnum = 0; % modnum = 0 for no modulo
tmp = mod((datenum(utcDate) - datenum(gps_week_start))/7,modnum); % (Difference in days)/7 = difference in weeks
GPS_wk = floor(tmp);
GPS_TOW = round((tmp-GPS_wk)*7*24*3600);