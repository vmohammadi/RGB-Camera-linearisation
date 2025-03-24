# RGB-Camera-linearisation

For Linearisation of RGB values, you need to obtain the spectral reflectance and RGB images of some gray samples.
Then use function [out] = getlincam(p,RGB,graphs)
function is to compute polynomial fits for camera grey-scale data. The inputs are p (a set of n by
1 mean reflectance values) and RGB ( a set of 3 by n RGB triplets). If graphs is set to 'on' then
a plot of the fits is generated
