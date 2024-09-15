#include <stdio.h>
#include <math.h>

// Function to integrate (change as needed)
double f(double x) {
    return sin(x);  // Example function: sine
}

// Trapezoidal rule for one iteration
double trapezoidal(double a, double b, int n) {
    double h = (b - a) / n;
    double sum = 0.5 * (f(a) + f(b));
    for (int i = 1; i < n; i++) {
        sum += f(a + i * h);
    }
    return h * sum;
}

// Romberg integration
double romberg(double a, double b, int m) {
    double R[m][m];  // Romberg table
    for (int i = 0; i < m; i++) {
        R[i][0] = trapezoidal(a, b, pow(2, i));
    }
    for (int j = 1; j < m; j++) {
        for (int i = j; i < m; i++) {
            R[i][j] = (pow(4, j) * R[i][j-1] - R[i-1][j-1]) / (pow(4, j) - 1);
        }
    }
    return R[m-1][m-1];
}

int main() {
    double a, b;  // Limits of integration
    int m;        // Order of Romberg integration
    
    // Input limits of integration
    printf("Enter lower limit: ");
    scanf("%lf", &a);
    printf("Enter upper limit: ");
    scanf("%lf", &b);
    
    // Input order of Romberg integration
    printf("Enter order of Romberg integration: ");
    scanf("%d", &m);
    
    // Calculate integral using Romberg integration
    double result = romberg(a, b, m);
    
    // Output the result
    printf("Approximate integral of the function between %.2f and %.2f is: %.6f\n", a, b, result);
    
    printf("\nSijanBhusal");
    return 0;
}
