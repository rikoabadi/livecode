#include <android/api-level.h>
#include <stdio.h>

int main() {
    printf("Target API: %d\n", __ANDROID_API__);
    #if __ANDROID_API__ >= 35
    printf("Confirmed targeting API 35 or higher\n");
    #endif
    return 0;
}
