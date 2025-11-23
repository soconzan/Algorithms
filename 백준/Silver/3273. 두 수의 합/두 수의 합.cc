#include <iostream>
#include <algorithm>

using namespace std ;

int main()
{
    int n, x ;
    int result = 0 ;
    cin >> n ;

    int arr[n] ;
    for (int i = 0 ; i < n ; ++i)
        cin >> arr[i] ;
    
    cin >> x ;

    sort(arr, arr + n) ;

    int left = 0 ;
    int right = n - 1 ;

    while ( left < right )
    {
        int sum = arr[left] + arr[right] ;

        if ( sum == x )
        {
            result++ ;
            left++ ;
            right-- ;
        }
        else if ( sum < x ) 
            left++ ;
        else
            right-- ;
    }

    cout << result ;

    return 0 ;
}