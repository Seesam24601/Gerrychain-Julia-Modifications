# acceptance

# Returns the number of county splits in a partition

# Created by Charlie Murphy
# Based on Python code by Dinos Gonatas

function counties(partition::Partition)
    for district in 1:partition.num_dists

        for node in partition.dist_nodes[district]
            println(graph.attributes[node]["COUNTYFP10"])
        end
    end
end
