#include <iostream>

using namespace std ;

int main()
{
	int num1, num2 ;
	cin >> num1 >> num2 ;

	for (int i = num2 ; i > 0 ; i /= 10)
		cout << num1 * (i % 10) << endl ;

	cout << num1 * num2 ;

	return 0 ;
}