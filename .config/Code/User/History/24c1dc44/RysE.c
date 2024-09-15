#include <stdio.h>
#include <math.h>

// Function to integrate (change as needed)
double f(double x) {
    return sin(x);  // Example function: sine
}

// Composite Simpson's rule function
double simpson(double a, double b, int n) {
    double h = (b - a) / n;  // Width of each subinterval
    double sum = f(a) + f(b);  // Sum of first and last terms

    // Adding the middle terms
    for (int i = 1; i < n; i++) {
        double x = a + i * h;
        if (i % 2 == 0) {
            sum += 2 * f(x);  // Even index terms
        } else {
            sum += 4 * f(x);  // Odd index terms
        }
    }

    return h * sum / 3.0;
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
    printf("Enter the number of subintervals (must be even): ");
    scanf("%d", &n);

    // Check if n is even (required by Simpson's rule)
    if (n % 2 != 0) {
        printf("Error: Number of subintervals must be even for Simpson's rule.\n");
        return 1;  // Exit program with error code
    }
    
    // Calculate integral using composite Simpson's rule
    double integral = simpson(a, b, n);
    
    // Output the result
    printf("Approximate integral of the function between %.2f and %.2f is: %.6f\n", a, b, integral);
    
    printf("\nSujanTamang");
    return 0;
}
