# [bash_graph](https://github.com/status-five/bash_graph)
Please don't ever use this, this is for demonstration only, if you're actually trying to implement a graph in bash for production purposes, you may want to rethink that.

if you'd like to test this code: source the graph.sh file and then create a varible (with a unique string) which will be the graph, you can then call the functions, passing the graph to the functions. 

```
source graph.sh
graph=$GRAPHLOCATION
graph_insert $graph $key $value
graph_edge $graph $key $key
```
