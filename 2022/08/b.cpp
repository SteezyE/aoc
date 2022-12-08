#include <bits/stdc++.h>

using namespace std;
int N, M;
int dx[4] = {0, 1, 0, -1};
int dy[4] = {1, 0, -1, 0};
vector<string> v;
inline bool border(int i, int j)
{
	return !i || !j || i==N-1 || j==M-1;
}

// 1,1; 1,2; 2,1; 2,3; 4,2

int main()
{
	string s;
	while(cin >> s)
		v.push_back(s);

	N = v.size();
	M = v[0].size();
		
	//vector<vector<int>> t(N, vector<int>(M));
	
	int res = 0;
	for(int i=1; i<N-1; i++)
	{
		for(int j=1; j<M-1; j++)
		{
			int cur = 1;
			for(int k=0; k<4; k++)
			{
				int cnt = 1;
				int x = i+dx[k];		
				int y = j+dy[k];
				while(!border(x, y) && v[i][j] > v[x][y])
				{
					x += dx[k];
					y += dy[k];
					cnt += 1;	
				}
				cur *= cnt;
			}
			res = max(cur, res);
		}
	}

	printf("\n%d\n", res);
	return 0;	
}
