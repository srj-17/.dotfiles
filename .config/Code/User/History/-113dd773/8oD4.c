#include <stdio.h>

// Function to calculate the divided differences
void divDiff(double x[], double y[], double diff[][10], int n) {
    // Initialize the first column of the divided difference table
    for (int i = 0; i < n; i++) {
        diff[i][0] = y[i];
    }
    // Calculate the divided differences
    for (int j = 1; j < n; j++) {
        for (int i = 0; i < n - j; i++) {
            diff[i][j] = (diff[i+1][j-1] - diff[i][j-1]) / (x[i+j] - x[i]);
        }
    }
}

// Function to apply Newton's divided difference formula
double interp(double x[], double diff[][10], double val, int n) {
    double res = diff[0][0];
    double term = 1;
    for (int i = 1; i < n; i++) {
        term *= (val - x[i-1]);
        res += term * diff[0][i];
    }
    return res;
}

// Main function
int main() {
    int n;
    double x[10], y[10], diff[10][10], val;

    // Input number of data points
    printf("Enter number of data points: ");
    scanf("%d", &n);

    // Input data points
    printf("Enter data points (x y) separated by spaces:\n");
    for (int i = 0; i < n; i++) {
        scanf("%lf %lf", &x[i], &y[i]);
    }

    // Calculate the divided difference table
    divDiff(x, y, diff, n);

    // Input the value to interpolate
    printf("Enter the value to interpolate: ");
    scanf("%lf", &val);

    // Calculate the interpolated value
    double res = interp(x, diff, val, n);

    // Output the result
    printf("The interpolated value at %.2lf is %.6lf\n", val, res);

    printf("\nSaugatRijal");
    return 0;
}
