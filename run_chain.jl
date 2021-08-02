# run_chain

# File to run gerrychain with restrictions on the number of allowed county
# splits

# Created by Charlie Murphy
# Based on Python code by Dinos Gonatas

# Import modules
# Use import Pkg; Pkg.add("module name") if an error is thrown for any of these
# modules.
using GerryChain

# Load input template
input_template = "Input Templates\\default_input.jl"
include(input_template)

# Create graph and initial partition
# include("splice_assignment.jl")
graph = BaseGraph(graph_file, population_col)
partition = Partition(graph, assignment_col)

# Get Elections
include("elections.jl")
elections, composite = get_election_info(state, partition.num_dists)
election = Election("SEN10", ["SEN10D", "SEN10R"], partition.num_dists)

# Population Constraint
pop_constraint = PopulationConstraint(graph, partition, 0.02)

# Compactness Constraint
initial_cut_edges = partition.num_cut_edges
include("acceptance.jl")

# Metrics / Scores
election_metrics = [
    vote_count("count_d", election, "SEN10D"),
    efficiency_gap("efficiency_gap", election, "SEN10D"),
    seats_won("seats_won", election, "SEN10D"),
    mean_median("mean_median", election, "SEN10D")
]
scores = [
        DistrictAggregate("presd", "PRES12D"),
        ElectionTracker(election, election_metrics)
]

# Run the chain
num_steps = 10
chain_data = recom_chain(graph, partition, pop_constraint, num_steps, scores,
    acceptance_fn = compactness_bound, no_self_loops = true)

# Get all vote counts for each state of the chain
vote_counts_arr = get_score_values(chain_data, "count_d")
save_scores_to_csv("scores.csv", chain_data)

println("Done")
println("Complete")

include("county_splits.jl")
counties(partition)
