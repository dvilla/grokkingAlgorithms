#This algorithm works for returning the shortest path based on the weight
#From the start to the finish
#        A
#      . o
#    6/  |. .\1
# S o   3|   .o F
#    2\  |  /5
#      . o
#        B
#Creating the graph structure
city = {}
city["A"] = {"F" => 1}
city["start"] = {"A" => 6, "B" => 2}
city["B"] = {"A" => 3, "F" => 5}
city["F"] = {}

network = {}
network["start"] = {"poster" => 0, "lp" => 5}
network["poster"] = { "guitar_bass" => 30, "drums" => 35}
network["lp"] = {"drums" => 20, "guitar_bass" => 15}
network["guitar_bass"] = {"piano" => 20}
network["drums"] = {"piano" => 10}
network["piano"] = {}


def return_the_shortest_path(graph)
  parents = {}
  costs = {}
  node_queue = graph["start"].to_a
  current_node = "start"
  processed = []
  processed << current_node
  costs[current_node] = 0
  while node_queue.any? do
    node = node_queue.shift
    #where node[0] is the name and node[1] the value
    if costs[node[0]] == nil || costs[node[0]] > (node[1] + costs[current_node])
      costs[node[0]] = (node[1] + costs[current_node])
      parents[node[0]] = current_node
    end
    #before we end 
    if node_queue.empty?
      #TWO nodes with the same value, it should select the not processed one...
      current_node = find_the_cheapest_node(costs, processed)
      node_queue = node_queue + graph[current_node].to_a
      processed << current_node
    end
  end
  parents
end

def find_the_cheapest_node(costs, processed)
  remaining_costs = costs.keys - processed
  cheapes_node = nil
  node_name = ""
  remaining_costs.each do |node|
    if cheapes_node == nil || cheapes_node > costs[node]
      cheapes_node = costs[node]
      node_name = node
    end
  end
  node_name
end


p return_the_shortest_path(city)
p return_the_shortest_path(network)
