// System plus has asssigned you a task to find that wether a path between two cities exists or not.
//They have given you the information in the form of list of cities where you can reach from that city.
// Function should take two arguments.Function should return true or false

// Below is the list of cities where you can reach from that city. In case of lahore we can see that we can go to kasur and Multan.

// lahore: [kasur ,Multan]
// kasur: []
// Multan: [lahore , islamabad]
// Gungrawala: []
// islamabad: [karachi , peshawar] 
// kashmir: []
// peshawar: [kashmir , Murree , Gungrawala]
// Murree:  []
// karachi: []

// Example:
    //  Input  lahore , Gungrawala
    //  Output True 
    // Reasoning (lahore ->Multan-> islamabad-> peshawar -> Gungrawala)

    //  Input peshawar , Kasur
    //  Output false
    //  There is not path between peshwar and kasur

//  Hint: Graph problem

#include<iostream>
#include <list>
using namespace std;
class Graph
{
    list<int> *adj_vertex;
	int vertex;
	
public:
	Graph(int vertex);
	void addEdge(int vertexA, int vertexB);
	bool isPathAvailable(int vertexA, int vertexB);
};
Graph::Graph(int vertex)
{
	this->vertex = vertex;
	adj_vertex = new list<int>[vertex];
}
void Graph::addEdge(int vertexA, int vertexB)
{
	adj_vertex[vertexA].push_back(vertexB);
}
bool Graph::isPathAvailable(int vertexA, int vertexB)
{
	if (vertexA == vertexB)
	return true;
	bool *visited = new bool[vertex];
	for (int i = 0; i < vertex; i++)
		visited[i] = false;
	list<int> vertex_queue;
	visited[vertexA] = true;
	vertex_queue.push_back(vertexA);
	list<int>::iterator x;
	while (!vertex_queue.empty())
	{
		vertexA = vertex_queue.front();
		vertex_queue.pop_front();
		for (x = adj_vertex[vertexA].begin(); x != adj_vertex[vertexA].end(); ++x)
		{
		
			if (*x == vertexB)
				return true;
			if (!visited[*x])
			{
				visited[*x] = true;
				vertex_queue.push_back(*x);
			}
		}
	}
	
	return false;
}
int main()
{
	Graph g(10);
	const char *cities[10]={"kasur","multan","lahore","islamabad","karachi","peshawar","kashmir","murree","gujranwala"};
    //edges are added according to cities index
	g.addEdge(2, 0);  //"lahore" index is 2 and "kasur" index is 0
	g.addEdge(2, 1);
	g.addEdge(1, 2);
	g.addEdge(1, 3);
	g.addEdge(3, 4);
	g.addEdge(3, 5);
    g.addEdge(5, 6);
    g.addEdge(5, 7);
    g.addEdge(5, 8);
	int start = 2, end = 8;
	if(g.isPathAvailable(start, end))
		cout<<"true";
	else
		cout<<"false";
	return 0;
}
