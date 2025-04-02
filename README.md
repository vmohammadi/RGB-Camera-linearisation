# RGB-Camera-linearisation

For linearisation of RGB values (obtained from raw images), you need to obtain the spectral reflectance and RGB images of some gray samples. You may use the gray patches of Mcbeth or the X-rite color checkers.

![Mcbeth](https://github.com/vmohammadi/RGB-Camera-linearisation/blob/main/images/mcbeth.png)

Then use function [out] = getlincam(p,RGB,graphs)
function is to compute polynomial fits for camera grey-scale data. The inputs are p (a set of n by
1 mean reflectance values) and RGB ( a set of 3 by n RGB triplets). If graphs is set to 'on' then
a plot of the fits is generated
