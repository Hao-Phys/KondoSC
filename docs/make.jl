using KondoSC
using Documenter

DocMeta.setdocmeta!(KondoSC, :DocTestSetup, :(using KondoSC); recursive=true)

makedocs(;
    modules=[KondoSC],
    authors="Hao Zhang, Los Alamos National Laboratory",
    repo="https://github.com/Hao-Phys/KondoSC.jl/blob/{commit}{path}#{line}",
    sitename="KondoSC.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://Hao-Phys.github.io/KondoSC.jl",
        edit_link="main",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/Hao-Phys/KondoSC.jl",
    devbranch="main",
)
