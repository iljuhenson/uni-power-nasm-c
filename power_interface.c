#include <stdio.h>

extern float _power (float a, int x); 

float power (float a, int x);

int main()
{
    float value;
    int power_value;

    printf("base(liczba) \n");
    scanf("%f", &value);
    scanf("%d", &power_value);
    
    
    printf("values are %f and %d \n", value, power_value);

    printf("%8f", power(value, power_value));

    return 0;
}