source("DBDA2E-utilities.R")
# Graph of normal probability density function, with comb of intervals.
## meanval = 0.0               # Specify mean of distribution.
## sdval = 0.2                 # Specify standard deviation of distribution.
## xlow  = meanval - 3.5*sdval # Specify low end of x-axis.
## xhigh = meanval + 3.5*sdval # Specify high end of x-axis.

xlow = 0
xhigh = 1
dx = 1/100

## dx = sdval/10               # Specify interval width on x-axis
# Specify comb of points along the x axis:
x = seq( from = xlow , to = xhigh , by = dx )
# Compute y values, i.e., probability density at each value of x:
## y = ( 1/(sdval*sqrt(2*pi)) ) * exp( -.5 * ((x-meanval)/sdval)^2 )
y = 6*x*(1-x)
# Plot the function. "plot" draws the intervals. "lines" draws the bell curve.
openGraph(width=7,height=5)
plot( x , y , type="h" , lwd=1 , cex.axis=1.5
	, xlab="x" , ylab="p(x)" , cex.lab=1.5 ,
	, main="6x(1-x)" , cex.main=1.5 )
lines( x , y , lwd=3 ,  col="skyblue" )
# Approximate the integral as the sum of width * height for each interval.
area = sum( dx * y )
