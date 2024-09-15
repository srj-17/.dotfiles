#include <stdio.h>

#define MAX 10

void luDecomp(double a[MAX][MAX], double l[MAX][MAX], double u[MAX][MAX], int n) {
    for (int i = 0; i < n; i++) {
        // Upper triangular matrix U
        for (int k = i; k < n; k++) {
            double sum = 0;
            for (int j = 0; j < i; j++)
                sum += (l[i][j] * u[j][k]);
            u[i][k] = a[i][k] - sum;
        }
        
        // Lower triangular matrix L
        for (int k = i; k < n; k++) {
            if (i == k)
                l[i][i] = 1;  // Diagonal as 1
            else {
                double sum = 0;
                for (int j = 0; j < i; j++)
                    sum += (l[k][j] * u[j][i]);
                l[k][i] = (a[k][i] - sum) / u[i][i];
            }
        }
    }
}

void printMatrix(double mat[MAX][MAX], int n) {
    for (int i = 0; i < n; i++) {
        for (int j = 0; j < n; j++)
            printf("%.2f\t", mat[i][j]);
        printf("\n");
    }
}

int main() {
    int n;
    double a[MAX][MAX], l[MAX][MAX] = {0}, u[MAX][MAX] = {0};

    // Input matrix size
    printf("Enter the size of the matrix: ");
    scanf("%d", &n);

    // Input matrix elements
    printf("Enter the elements of the matrix:\n");
    for (int i = 0; i < n; i++) {
        for (int j = 0; j < n; j++) {
            scanf("%lf", &a[i][j]);
        }
    }

    // Perform LU Decomposition
    luDecomp(a, l, u, n);

    // Print L and U matrices
    printf("Lower Triangular Matrix L:\n");
    printMatrix(l, n);
    printf("Upper Triangular Matrix U:\n");
    printMatrix(u, n);

    printf("\nSaugatRijal");
    return 0;
}
