# splice_assignment

# Take in a shapefile with geographic and election data and a CSV file with
# a district assignment and create a graph for use by gerrychain

# Created by Charlie Murphy
# Based on Python code by Dinos Gonatas

# Import modules
using CSV
using DataFrames
using GerryChain
using GeoDataFrames; const GDF=GeoDataFrames


println("here")

if assignment_file == nothing
    println("there")
   graph = BaseGraph(graph_file, population_col)
else
    state_data = GDF.read(graph_file)
    assignment = DataFrame(CSV.File(assignment_file))
    graph_data = outerjoin(state_data,assignment, on = "GEOID20")
    graph = BaseGraph(graph_data, population_col)
    println(graph)
end
