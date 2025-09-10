#include <iostream>

using namespace std ;

int main()
{
	const int MAX_LEN = 101 ;
	char inStr[MAX_LEN] = {} ;
	cin >> inStr ;

	for (int c = 'a' ; c <= 'z' ; ++c)
	{
		bool isExist = false ;
		int idx = -1 ;

		while ( !isExist && ++idx < MAX_LEN && inStr[idx] != '\0' )
		{
			if ( inStr[idx] == c )
			{
				cout << idx << " " ;
				isExist = true ;
			}
		}
		
		if ( !isExist )
			cout << "-1 " ;
	}

	return 0;
}