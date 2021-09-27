


#include <stdio.h>
#include <errno.h>
#include <stdint.h>
#include <time.h>
#include <math.h>

#include "bme280.h"

int main() {
Bme280 bme=Bme280();
bme.update();
printf("/n Hudm=%f",bme.getHudm());
}