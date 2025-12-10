#include <iostream>
#include <algorithm>

using namespace std ;

int main()
{
    int answer = 0 ;
    int N ;
    cin >> N ;
    
    int arr[N] ;
    for (int i = 0 ; i < N ; ++i)
        cin >> arr[i] ;
    sort(arr, arr + N) ;

    for (int i = 0 ; i < N ; ++i)
    {
        int left = 0, right = N - 1 ;
        
        while ( left < right )
        {
            if ( left == i )
            {
                left++ ;
                continue ;
            }

            if ( right == i )
            {
                right-- ;
                continue ;
            }
            
            int sum = arr[left] + arr[right] ;
            
            if ( sum == arr[i] )
            {
                answer++ ;
                break ;
            }
            else if ( sum < arr[i] )
                left++ ;
            else
                right-- ;
        }
    }
    
    cout << answer ;

    return 0 ;
}