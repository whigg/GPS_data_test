
addpath 'test_functions'

clear all; clc;
ofname = '/obs/2003_307.rnx';
nfname = '/obs/brdc2970.03n';
ephemeris_data = read_nav_ephemeris(nfname);
ionospheric_coefficients = read_nav_ion(nfname);
[observation_data,time] = read_obs(ofname);
