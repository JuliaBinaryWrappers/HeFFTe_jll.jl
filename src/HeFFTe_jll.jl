# Use baremodule to shave off a few KB from the serialized `.ji` file
baremodule HeFFTe_jll
using Base
using Base: UUID
using LazyArtifacts
using MPIPreferences
Base.include(@__MODULE__, joinpath("..", ".pkg", "platform_augmentation.jl"))
import JLLWrappers

JLLWrappers.@generate_main_file_header("HeFFTe")
JLLWrappers.@generate_main_file("HeFFTe", Base.UUID("7b92b817-26b5-541f-8611-85454e06426f"))
end  # module HeFFTe_jll
