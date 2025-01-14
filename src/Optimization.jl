"""
$(DocStringExtensions.README)
"""
module Optimization

using DocStringExtensions
using Reexport
@reexport using SciMLBase, ADTypes

if !isdefined(Base, :get_extension)
    using Requires
end

using Logging, ProgressLogging, ConsoleProgressMonitor, TerminalLoggers, LoggingExtras
using ArrayInterface, Base.Iterators, SparseArrays, LinearAlgebra
using SymbolicIndexingInterface
using Pkg

import SciMLBase: OptimizationProblem, OptimizationFunction, ObjSense,
    MaxSense, MinSense
export ObjSense, MaxSense, MinSense

include("utils.jl")
include("function.jl")
include("adtypes.jl")
include("cache.jl")
include("stats_state.jl")

export solve, OptimizationCache

end # module
