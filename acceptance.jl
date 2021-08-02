# acceptance

# Provides additional constraints for the gerrychain by using the acceptance
# function

# Created by Charlie Murphy
# Based on Python code by Dinos Gonatas

# Return 1 if there are not more than the number of cut edges in the initial
# paritition and 0 otherwise
function compactness_bound(partition::Partition)
    if partition.num_cut_edges <= initial_cut_edges
        return 1
    end
    return 0
end

# Return 1 if there are not more than the number of county splits in the initial
# paritition and 0 otherwise
function county_splits_bound(partition::Partition)
    if partition.num_cut_edges <= initial_cut_edges
        return 1
    end
    return 0
end
