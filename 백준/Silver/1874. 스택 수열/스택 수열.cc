#include <iostream>
#include <queue>
#include <stack>

using namespace std ;

int main()
{
    queue<int> order ;
    stack<int> st ;

    int n ;
    cin >> n ;

    char result[n * 2] ;
    int rsIdx = 0 ;

    for (int i = 0 ; i < n ; ++i)
    {
        int tmp ;
        cin >> tmp ;
        order.push(tmp) ;
    }

    for (int i = 1 ; i <= n ; ++i)
    {
        st.push(i) ;
        result[rsIdx++] = '+' ;

        while ( !st.empty() && st.top() == order.front() )
        {
            st.pop() ; order.pop() ;
            result[rsIdx++] = '-' ;
        }

        if ( !st.empty() && st.top() > order.front() )
        {
            cout << "NO\n" ;
            return 0 ;
        }
    }

    if ( !st.empty() ) cout << "NO\n" ;
    else
    {
        for (int i = 0 ; i < n * 2 ; ++i)
            cout << result[i] << "\n" ;
    }

    return 0 ;
}