#include <iostream>

using namespace std ;

int main()
{
	int result = 0 ;
	int num1, num2 ;
	cin >> num1 >> num2 ;

	for (int i = num2, digit = 1 ; i > 0 ; i /= 10, digit *= 10)
	{
		result += num1 * (i % 10) * digit ;
		cout << num1 * (i % 10) << endl ;
	}

	cout << result ;

	return 0 ;
}