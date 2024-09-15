#include <stdio.h>
#include <math.h>

// Function to integrate (change as needed)
double f(double x) {
    return sin(x);  // Example function: sine
}

// Gaussian quadrature for the interval [a, b]
double gaussQuad(double a, double b) {
    // Weights and abscissas for 2-point Gaussian quadrature
    double x1 = -1.0 / sqrt(3.0);
    double x2 = 1.0 / sqrt(3.0);
    double w1 = 1.0;
    double w2 = 1.0;

    // Change of interval from [-1, 1] to [a, b]
    double t1 = ((b - a) / 2.0) * x1 + (a + b) / 2.0;
    double t2 = ((b - a) / 2.0) * x2 + (a + b) / 2.0;

    // Gaussian quadrature formula
    return ((b - a) / 2.0) * (w1 * f(t1) + w2 * f(t2));
}

int main() {
    double a, b;  // Limits of integration
    
    // Input limits of integration
    printf("Enter lower limit: ");
    scanf("%lf", &a);
    printf("Enter upper limit: ");
    scanf("%lf", &b);

    // Calculate integral using Gaussian quadrature
    double result = gaussQuad(a, b);
    
    // Output the result
    printf("Approximate integral of the function between %.2f and %.2f is: %.6f\n", a, b, result);
    
    return 0;
}
