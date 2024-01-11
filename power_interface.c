#include <stdio.h>


extern float _power (float a, int x); 

float power (float a, int x);

int main()
{
    float value;
    int power_value;
    char temp;
    int c;

    printf("Podaj liczbe ktora chcesz podniesc do potegi w przedziale od 0 do 1 oraz potega przez spacje: \n");

    for(;;) {
        // Otrzymywanie argumentow z klawiatury.
        if(scanf("%f", &value) == 0) {
            printf("Zly format wpisanych liczb\n");
            c = NULL;
            while ((c = getchar()) != '\n' && c != EOF) { } 
            continue;
        }
            

        if(scanf("%d%c", &power_value, &temp) == 0 || temp != '\n') {
            printf("Zly format wpisanych liczb\n");
            c = NULL;
            while ((c = getchar()) != '\n' && c != EOF) { } 
            continue;
        }
        
        
        // Zapewnienie ze argumenty sa poprawne
        
        if(0 >= value || value >= 1) {
            printf("Podane sa zle argumenty, prosze sproboj ponownie\n");
            c = NULL;
            while ((c = getchar()) != '\n' && c != EOF) { } 
            continue;
        } 
        break;
    }
    printf("values are %f and %d \n", value, power_value);

    printf("%8f", power(value, power_value));

    return 0;
}