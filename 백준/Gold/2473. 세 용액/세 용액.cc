#include <iostream>
#include <algorithm>
#include <cmath>

using namespace std ;

int main()
{
    int N ;
    cin >> N ;
    
    long arr[N] ;
    for (int i = 0 ; i < N ; ++i)
        cin >> arr[i] ;
    sort(arr, arr + N) ;

    long sum = arr[0] + arr[1] + arr[2] ;
    long ans[3] ;
    ans[0] = arr[0] ;
    ans[1] = arr[1] ;
    ans[2] = arr[2] ;

    for (int i = 0 ; i < N ; ++i)
    {
        int left = 0, right = N - 1 ;

        while ( left < right )
        {
            if ( left == i )
            {
                left++ ; continue ;
            }

            if ( right == i )
            {
                right-- ; continue ;
            }

            long tmp = arr[i] + arr[left] + arr[right] ;

            if ( abs(tmp) < abs(sum) )
            {
                ans[0] = arr[i] ;
                ans[1] = arr[left] ;
                ans[2] = arr[right] ;
                sum = tmp ;
            }

            if ( tmp < 0 )
                left++ ;
            else
                right-- ;
        }
    }

    sort(ans, ans + 3) ;
    
    cout << ans[0] << " " << ans[1] << " " << ans[2] ;

    return 0 ;
}