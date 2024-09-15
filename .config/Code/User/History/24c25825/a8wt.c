
#include <stdio.h>
#include <stdlib.h>
#include <math.h>

#define MAX 100
#define TOL 1e-5
#define MAX_ITER 10000

void printMatrix(double mat[MAX][MAX], int n, int m) {
    for (int i = 0; i < n; i++) {
        for (int j = 0; j < m; j++) {
            printf("%.5f\t", mat[i][j]);
        }
        printf("\n");
    }
}

void laplaceSolver(double grid[MAX][MAX], int n, int m) {
    int iter = 0;
    double diff = 0;
    do {
        diff = 0;
        for (int i = 1; i < n - 1; i++) {
            for (int j = 1; j < m - 1; j++) {
                double temp = grid[i][j];
                grid[i][j] = 0.25 * (grid[i + 1][j] + grid[i - 1][j] + grid[i][j + 1] + grid[i][j - 1]);
                diff = fmax(diff, fabs(grid[i][j] - temp));
            }
        }
        iter++;
    } while (diff > TOL && iter < MAX_ITER);

    printf("Iterations: %d\n", iter);
}

int main() {
    int n, m;
    double grid[MAX][MAX];

    // Input grid size
    printf("Enter the number of rows: ");
    scanf("%d", &n);
    printf("Enter the number of columns: ");
    scanf("%d", &m);

    // Initialize the grid with boundary conditions
    printf("Enter the boundary values (top, bottom, left, right):\n");
    double top, bottom, left, right;
    scanf("%lf %lf %lf %lf", &top, &bottom, &left, &right);

    // Set boundary conditions
    for (int j = 0; j < m; j++) {
        grid[0][j] = top;
        grid[n - 1][j] = bottom;
    }
    for (int i = 0; i < n; i++) {
        grid[i][0] = left;
        grid[i][m - 1] = right;
    }

    // Initialize interior points to zero
    for (int i = 1; i < n - 1; i++) {
        for (int j = 1; j < m - 1; j++) {
            grid[i][j] = 0.0;
        }
    }

    // Solve the Laplace equation
    laplaceSolver(grid, n, m);

    // Print the resulting grid
    printf("Solution:\n");
    printMatrix(grid, n, m);

    printf("\nSujanTamang");
    return 0;
}
