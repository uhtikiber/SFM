// FindFundamental.cpp: определяет точку входа для консольного приложения.
//


#include "stdafx.h"
#include <iostream>
#include <fstream>
#include "coeffsFinders.h"
#include <Eigen/Dense>

using namespace std;
using Eigen::MatrixXd;

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

	

	return 0;
}


