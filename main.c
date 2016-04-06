double raizq(double);

int main(void) 
{
	double entrada;
	scanf("%lf", &entrada);
	
	entrada = raizq(entrada);
	
	printf("%.2f\n", entrada);
}

double raizq(double entrada)
{
	double x1, x2;
	
	x1 = (entrada + 1.0)/2.0;
	
	while(x2 != x1)
	{
		x2 = (x1 + (entrada/x1))/2.0;
		x1 = (x2 + (entrada/x2))/2.0;
	}
	
	return x1;
}
