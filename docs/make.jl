using SimpleGraphs
using Documenter

DocMeta.setdocmeta!(SimpleGraphs, :DocTestSetup, :(using SimpleGraphs); recursive=true)

makedocs(;
    modules=[SimpleGraphs],
    authors="singularitti <singularitti@outlook.com> and contributors",
    repo="https://github.com/singularitti/SimpleGraphs.jl/blob/{commit}{path}#{line}",
    sitename="SimpleGraphs.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://singularitti.github.io/SimpleGraphs.jl",
        edit_link="main",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/singularitti/SimpleGraphs.jl",
    devbranch="main",
)
