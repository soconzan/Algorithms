#include <string>
#include <vector>
#include <cmath>

using namespace std;

long long solution(long long n) {
    double tmp = sqrt(n) ;
    return tmp - (int) tmp == 0 ? pow(tmp+1, 2) : -1 ;
}