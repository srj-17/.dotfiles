#include <stdio.h>
#include <math.h>

// Function to integrate (change as needed)
double f(double x) {
    return sin(x);  // Example function: sine
}

// Composite Simpson's 3/8 rule function
double simpson38(double a, double b, int n) {
    if (n % 3 != 0) {
        printf("Error: n must be multiple of 3 for Simpson's 3/8 rule.\n");
        return -1;  // Error code
    }

    double h = (b - a) / n;  // Width of each subinterval
    double sum = f(a) + f(b);  // Sum of first and last terms

    // Adding the middle terms
    for (int i = 1; i < n; i++) {
        double x = a + i * h;
        sum += (i % 3 == 0) ? 2 * f(x) : 3 * f(x);  // Every third term 2*f(x), others 3*f(x)
    }

    return (3 * h / 8) * sum;
}

int main() {
    double a, b;  // Limits of integration
    int n;        // Number of subintervals
    
    // Input limits of integration
    printf("Enter lower limit: ");
    scanf("%lf", &a);
    printf("Enter upper limit: ");
    scanf("%lf", &b);
    
    // Input number of subintervals
    printf("Enter number of subintervals (multiple of 3): ");
    scanf("%d", &n);

    // Check if n is a multiple of 3 (required by Simpson's 3/8 rule)
    if (n % 3 != 0) {
        printf("Error: n must be multiple of 3 for Simpson's 3/8 rule.\n");
        return 1;  // Exit program with error code
    }
    
    // Calculate integral using composite Simpson's 3/8 rule
    double result = simpson38(a, b, n);
    
    // Output the result
    if (result != -1) {
        printf("Approximate integral between %.2f and %.2f is: %.6f\n", a, b, result);
    }
    
    return 0;
}
