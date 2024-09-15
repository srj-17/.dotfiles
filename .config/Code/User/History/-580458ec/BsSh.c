#include <stdio.h>
#include <math.h>

// Function to integrate (change as needed)
double f(double x) {
    return sin(x);  // Example function: sine
}

// Composite trapezoidal rule function
double trap(double a, double b, int n) {
    double h = (b - a) / n;  // Width of each subinterval
    double sum = 0.5 * (f(a) + f(b));  // Sum of first and last terms
    
    // Adding the middle terms
    for (int i = 1; i < n; i++) {
        double x = a + i * h;
        sum += f(x);
    }
    
    return h * sum;
}

int main() {
    double a, b;  // Limits of integration
    int n;        // Number of subintervals
    
    // Input limits of integration
    printf("Enter lower limit of integration: ");
    scanf("%lf", &a);
    printf("Enter upper limit of integration: ");
    scanf("%lf", &b);
    
    // Input number of subintervals
    printf("Enter the number of subintervals: ");
    scanf("%d", &n);
    
    // Calculate integral using composite trapezoidal rule
    double integral = trap(a, b, n);
    
    // Output the result
    printf("Approximate integral of the function between %.2f and %.2f is: %.6f\n", a, b, integral);
    
    return 0;
}
