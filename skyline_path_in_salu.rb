require_relative 'graph'

FILE_PATH        = "salu_data/edges/salu_edge_160203_定量降雨450mm_無權重.txt"

salu_data = File.read(FILE_PATH)
# salu_data_150 = File.read("test.txt")

puts "\nuse data: #{FILE_PATH}\n"

times = 1.to_f

# until times >= 5
#   times += 0.1
#   graph = Graph.new(data: salu_data, dim: 7, constrained_times: times)
#   # graph.testing_unit_single(78, 458)
#   graph.testing_unit_single(159, 381)
# end

graph = Graph.new(data: salu_data, dim: 7, constrained_times: 1.3)
graph.testing_unit_single(2590, 977)

# graph = Graph.new(data: salu_data, dim: 4)


# graph.shortest_path 0, 99
# graph.testing_unit_multiple
# graph.testing_unit_single 78, 458 # 1311, 1298
