// epip.cpp: определяет точку входа для консольного приложения.
//

#include "stdafx.h"
#include <iostream>
#include <fstream>

using namespace std;

void gaussElimination(double ** M) {
	// THIS IS SUPPOSED TO BE IMPLEMENTED SOMEWHERE!!
}

const bool NEED_TRANSFORMATION = true;

int main()
{
	//ifstream fin("coordinates.in");
	double x[10], y[10]; // first image coordinates
	double xx[10], yy[10]; // second image coordinates

	for (int i = 0; i < 10; i++) {
		x[i] = rand() % 10;
		y[i] = rand() % 10;
		//fin >> x[i] >> y[i];
	}

	for (int i = 0; i < 10; i++) {
		xx[i] = rand() % 10;
		yy[i] = rand() % 10;
		//fin >> xx[i] >> yy[i];
	}

	double M[10][16]; // coefficient matrix for ten equations and sixteen monomials

					  //THIS IS COPIED FROM MATLAB SO THERE IS A GREAT CHANCE OF ERRORS HAPPENING
					  //ALSO THE ORDER OF MONOMIALS IS WRONG

	for (int i = 0; i < 10; i++) { // I probably cannot do this like that but I will try
		M[i][0] = x[i] * xx[i];  //  f_1_1, 
		M[i][1] = x[i] * yy[i]; // f_1_2, 
		M[i][2] = x[i] * (pow(xx[i],2) + pow(yy[i],2)); // L_2*f_1_3; 
		M[i][3] = x[i]; // f_1_3; 
		M[i][4] = xx[i] * y[i]; // f_2_1; 
		M[i][5] = y[i] * yy[i]; // f_2_2; 
		M[i][6] = y[i] * (pow(xx[i],2) + pow(yy[i],2)); // L_2*f_2_3; 
		M[i][7] = y[i]; // f_2_3;
		M[i][8] = xx[i] * (pow(x[i],2) + pow(y[i],2)); //  L_1*f_3_1; 
		M[i][9] = xx[i]; // f_3_1;
		M[i][10] = yy[i] * (pow(x[i],2) + pow(y[i],2)); //  L_1*f_3_2; 
		M[i][11] = yy[i]; // f_3_2;
		M[i][12] = (pow(x[i],2) + pow(y[i],2))*(pow(xx[i],2) + pow(yy[i],2)); //  L_1*L_2*f_3_3; 
		M[i][13] = pow(x[i],2) + pow(y[i],2);  // L_1*f_3_3;
		M[i][14] = pow(xx[i],2) + pow(yy[i],2);  //  L_2*f_3_3; 
		M[i][15] = 1; // f_3_3]
	}

	//gaussElimination(M); // THIS DOES NOT WORK OF COURSE

	double Q[10][6]; // this is the "leftovers" of gaussian elimination, six left colomns that are beside an identity matrix
	for (int i = 0; i < 10; i++) {
		for (int j = 0; j < 6; j++) {
			Q[i][j] = M[i][j + 10];
		}
	}
	

	//find the coefficients of the polynomial
	//find the companion matrix
	//find its eigenvalues
	//find lambda 1
	//find lambda 2
	//find F[2][3] supposing that F[3][3] = 1
	//find all the other coefficents of the matrix F

	return 0;
}

