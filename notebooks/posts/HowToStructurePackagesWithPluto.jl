### A Pluto.jl notebook ###
# v0.19.22

using Markdown
using InteractiveUtils

# ╔═╡ 79a6c1e6-b22e-4674-ba0a-8862336864e3
begin 
	using PlutoUI
	using PlutoTeachingTools
end

# ╔═╡ bdacad08-a9b1-11ec-1013-45393b4e19c9
frontmatter = (
	title = "How to structure Packages With Pluto.jl notebooks",
	description = "A simple notebook demonstrating the Julia syntax essentials",
	layout = "layout.jlhtml",
		tags = ["Julia", "Programming", "Language","Pluto"],
);

# ╔═╡ d3c6dd3c-8f78-4c5d-b22a-0fbeb93d02b4
md"""
# $(frontmatter.title)
"""

# ╔═╡ 2d438832-40cd-45bf-9305-46f59a3fca33
TableOfContents()

# ╔═╡ a9774883-e87d-435c-96df-352086d62037
blockquote(md"""
I have a dream that one day all code will be noteboooks and everyone from everywhere will understand what the code is doing - or at the very least, 5 years from now I will remember what I was trying to do - despite me forgotting why I wrote this function in the first place!
""")

# ╔═╡ 39f8fd05-15a5-4dc5-8773-60cbe08a8ff2
md"""
# Introduction
"""

# ╔═╡ 6aff158c-c900-4933-896d-3aac00cc585a
md"""
Literae Programing [^Literate Programming Wiki]
"""

# ╔═╡ ded8db77-e0d7-4458-b635-9d94b99b9ba9
md"""
[^Literate Programming Wiki] 
"""

# ╔═╡ 347f88c6-6989-4fe2-bbb1-b2d2d051fe16


# ╔═╡ bce13da5-3d28-4215-982a-dc3d1f923899


# ╔═╡ 0ca35537-9ff6-4606-9514-1243fd3a54c2


# ╔═╡ 93b09c7a-3ee0-4bde-9729-56422139314c
md"""
# Notebooks/Files as Functions
"""

# ╔═╡ 6f38ee4e-27f2-4e86-857f-e52fe80d0234
md"""
in order to fully embrace this paradigm one must take the stance that files are not containers for many functions (at least at the base level). Instead they should only  deal with one function or idea. Notebooks by extension are just files after all, and thus all primitive/base-level files or notebooks should house one unit of code and its associated functionality (which as we shall see later, will include testing, function overload/same-name-methods, etc)
"""

# ╔═╡ 46d417c1-68c0-4929-9b86-01dda6762e22


# ╔═╡ 8977763c-ce75-427c-a152-e3a40e6f7056


# ╔═╡ cb897219-e8c5-432c-947e-941820f86481


# ╔═╡ fe84d803-6883-42e6-92e4-e8fe277d6fde


# ╔═╡ 28a70307-3993-4e0e-a784-3557e3361ad1


# ╔═╡ ea72ff9c-a6e9-4f33-80fd-8d1d5dd4654c


# ╔═╡ 4b62caa1-90a7-4451-a313-eb93badf618d
md"""
# PlutoUI as an example
"""

# ╔═╡ 294e4e12-d429-45e7-b070-7d3ddfc27103
md"""
now that [PlutoUI.jl](https://github.com/JuliaPluto/PlutoUI.jl) 
"""

# ╔═╡ 29a950c7-da06-40c4-ae23-b1255527bde5


# ╔═╡ 88fbdfbc-1a5e-41eb-838a-eda29e168d22


# ╔═╡ e7753152-42f9-488b-9e32-07ba72baf429
md"""
# Some Problems With This approach
"""

# ╔═╡ dc021945-2ebc-427c-a639-7b5312070022
md"""
## Dependencies
"""

# ╔═╡ 8593536b-209f-4eff-8c56-b4a8fd91f1b8
md"""
one probem with any packaging or big problem is that of dependecies and how to manage them. in this regime
"""

# ╔═╡ 31eef3da-433c-4b20-a7a6-813391a440d3
md"""
### The Two Extremes - `@ingredients` everything 
"""

# ╔═╡ e5531a95-13c0-41ad-bc53-f82d946c58bb
md"""
If one subscribes to the above philospy then the next step would be to adopt it. one simple approach would be to remove explicitly creating modules and instead use notebooks as modules, since asmentioned above Pluto has nicely added the ability to embed the `Project.toml` and `Manifest.toml` inside the notebook
"""

# ╔═╡ ca148ba2-c1b2-48a1-8956-4d7d660faa9e
md"""
the simplest way to do this is via PlutoLinks `@ingredients` macro. which according to its docstring:
"""

# ╔═╡ 5a893a5b-bbaa-4797-a7d0-e724b6796c9d
PlutoTeachingTools.blockquote("doc(@ingredients)")

# ╔═╡ 1e1e83b3-5236-4507-bfc6-b57a8a0f898f
md"""
though with this way we have to use a package cell can can't really use Pluto's built in package management
"""

# ╔═╡ f2eb8efc-5877-493f-84a9-c2e9a37d1d75
md"""
a [shared package environment] (https://github.com/fonsp/Pluto.jl/wiki/%F0%9F%8E%81-Package-management#pattern-the-shared-environment)
"""

# ╔═╡ 6b7aa29e-6bbf-4b04-b591-2683831b5662


# ╔═╡ 5ffe393e-9a39-4a7e-84f9-4988d466d950


# ╔═╡ 542f6587-c324-42b2-bbd2-ea26091109ad
md"""
### The Two Extremes - Package everything
"""

# ╔═╡ b42d85fe-e8eb-4b7e-b41f-1bc10eb2a29f
md"""
THis is basically copying the `PlutoU.jl` I format. you have a file structure like


ADD FILE STRUCTURE

"""

# ╔═╡ 379ac696-6302-4707-9852-7ee38b17f117
md"""
Specifically a plain-text/non-notebook julia file in `src\MyPackage` which houses the julia `Module` this is the thing which your other bits of code will be `using` by calling `using MyPackage` in other notebooks. and would look something like this:

"""

# ╔═╡ b4b780de-102a-490d-9810-3ef00c125b75
md"""
```julia
module MyPacakge

import Base: show, get
import Markdown: htmlesc, withtag

using Reexport


const PKG_ROOT_DIR = normpath(joinpath(@__DIR__, ".."))

@reexport module Stuff1
    include("./Stuff1Functions.jl")
	include("./Stuff1Structs.jl")
end 

@reexport module Stuff2
    include("./Stuff2Functions.jl")
end 


end # module MyPacakge

```
"""

# ╔═╡ 9f0fa903-54e3-4fbd-9bde-19abeff6e1be
md"""
Note here that [`Reexport`](https://github.com/simonster/Reexport.jl) is needed to propagate the exported symbols from the inner "stuff" notebooks, i.e. if `Stuff1Functions.jl` has a cell that reads `export MyFunc` then `Rexport` allows me to call `MyPackage.Stuff1.MyFunc()` if I am `using MyPacakge`. In other words I will be able to write the below code in a sperate unrelated notebook without errors
"""

# ╔═╡ a50aa988-65be-4d1d-8bdb-4b7885161a87
md"""
```julia
using MyPackage 

MyPackage.Stuff1.MyFunc() 

MyFunc() #because MyFunc() has been "re-exported"

```
"""

# ╔═╡ a660351d-bc79-4cee-ba24-a7dd9ca95758
md"""
In this way if all your associated code is housed in modules/packages 

though it requires the set up of a local registry (which I wont get into here)

this then leads to a quite seamless development experience. When I am creating a new feature/functionality say in `PackageABC` and I want to use existing functionality found in `PacakgeEFG` I just call 

```julia 
using PackageEFG
```

and voila' I can reuse my code - it pulls `PacakgeEFG` from the local registry (where all of my code would be stored) and works exactly as intended. 

"""

# ╔═╡ cc5ef0a4-8d7f-4303-96ad-2fcd14373a07
md"""
The process outlined above would be alot like packaging and publishing "classes" or "groups of classes" in the traditional object orientated sense - a notebook would contain functions (class methods) and structs(class data/properties) and would be packaged as a module to be consumed (pacakged as a class to be used elswhere - though detaching/refactoring functions/methods from there group/class would be way easier as we will see later). Futhermore there might be some friction/unpleasantness in managing the sheer number of packages  - I have yet to determine my thoughts on this, but it leaves food for thought
"""

# ╔═╡ 9069dbdc-d02b-47b6-a6ef-1d8f14fb9534
md"""
There are some other caveats as the top-level package would still need to have a `Project.toml`. PlutoUI is again an example of this is one calls `using XyzPacakge` in a notebook to use its functionality and includes it in the top level module one still has to manually add it to the shared environment by calling `pkg add XyzPaakcage` at the REPL. This isn't a massive deal but it is substantially less nice then just calling `using` in the notebooks and calling it a day
"""

# ╔═╡ 937d4c0b-d67b-43d2-9c8b-1515a9d74dfb
md"""
Looking at the two extremes I would think packaging is better but the hurdle and added work of setting up a registry would probably mean that most people who adopt this system at least for small projects opt for the much less admin heavy `ingredients` approach
"""

# ╔═╡ 2aa70776-b7e6-42b7-a5ac-edcc6f900d46


# ╔═╡ 480752a1-c1dd-4b9d-9b26-953e26fc116f


# ╔═╡ 37f7c4ce-a95f-4453-89c2-f4d8ee06e760


# ╔═╡ c578853e-938b-4fef-8072-ced21e8740bb
md"""
# The Benefits
"""

# ╔═╡ 80560068-cd59-4d7a-b8af-58cb984ad0ac
md"""
## Move And Grow As-You-Go/Iterative Development
"""

# ╔═╡ f6677027-178c-413c-86e0-3072ffd9d146
md"""
With this approach one can quickly start up a notebook and build a prototype for how things will work and not worry as much about package management or where functions should go. one notebook could contain an entire pipeline from step 1 to step 99 and
"""

# ╔═╡ 5eed559d-d4c4-4038-8537-0f1f0a1dc51f


# ╔═╡ 3ad54b8a-4ca8-4f68-9fc7-189ea1c03d76


# ╔═╡ e5818f98-0ded-400e-befb-59ece21f6b39


# ╔═╡ 70e13fbb-1e35-4543-86fb-a5f4b5115291


# ╔═╡ 7e0348f6-2284-475d-a101-c6842b05db4c
md"""
## "Reactive"/Real-Time Tests
"""

# ╔═╡ e1386345-4493-4467-b634-8da57532fb11
md"""
A good time to start to think about breaking off functions into separate files is when when you need to start writing tests.
"""

# ╔═╡ 522d3409-7acb-492e-9610-6e977a2334e8


# ╔═╡ 1c825c00-9c03-4c64-9edb-070f601d0836


# ╔═╡ 6752f134-9f36-4646-a914-a916f757719b
md"""
## Rich Documentation
"""

# ╔═╡ 9f1effe5-f766-4f2e-aa4b-3967261fd84b


# ╔═╡ a3ca2950-4bc0-45ed-9652-24ed589e1dfd
md"""
# Appendix
"""

# ╔═╡ f333aa56-2cbc-4caf-8fde-3515bbb2d977
md"""
## Import Packages
"""

# ╔═╡ e4c34d74-51c5-4c08-ba85-636dfc91813e
md"""
## Formatting/Adjusutments To Look And Feel
"""

# ╔═╡ 5f6f51d7-6a95-4b10-b34a-cfb00a779944
paragraphJustifiedStyling()=html"""
<style>
p {
  text-align: justify;
  text-justify: inter-word;
}
</style>
"""

# ╔═╡ 1c5a4646-937c-42cd-bdb5-efc17eac9227
paragraphJustifiedStyling()

# ╔═╡ 00000000-0000-0000-0000-000000000001
PLUTO_PROJECT_TOML_CONTENTS = """
[deps]
PlutoTeachingTools = "661c6b06-c737-4d37-b85c-46df65de6f69"
PlutoUI = "7f904dfe-b85e-4ff6-b463-dae2292396a8"

[compat]
PlutoTeachingTools = "~0.2.8"
PlutoUI = "~0.7.50"
"""

# ╔═╡ 00000000-0000-0000-0000-000000000002
PLUTO_MANIFEST_TOML_CONTENTS = """
# This file is machine-generated - editing it directly is not advised

julia_version = "1.8.1"
manifest_format = "2.0"
project_hash = "6bb201a032efe7739abcd2613b6a702f0cfd8acf"

[[deps.AbstractPlutoDingetjes]]
deps = ["Pkg"]
git-tree-sha1 = "8eaf9f1b4921132a4cff3f36a1d9ba923b14a481"
uuid = "6e696c72-6542-2067-7265-42206c756150"
version = "1.1.4"

[[deps.ArgTools]]
uuid = "0dad84c5-d112-42e6-8d28-ef12dabb789f"
version = "1.1.1"

[[deps.Artifacts]]
uuid = "56f22d72-fd6d-98f1-02f0-08ddc0907c33"

[[deps.Base64]]
uuid = "2a0f44e3-6c83-55bd-87e4-b1978d98bd5f"

[[deps.CodeTracking]]
deps = ["InteractiveUtils", "UUIDs"]
git-tree-sha1 = "4f619d394ac521dc59cb80a2cd8f78578e483a9d"
uuid = "da1fd8a2-8d9e-5ec2-8556-3022fb5608a2"
version = "1.2.1"

[[deps.ColorTypes]]
deps = ["FixedPointNumbers", "Random"]
git-tree-sha1 = "eb7f0f8307f71fac7c606984ea5fb2817275d6e4"
uuid = "3da002f7-5984-5a60-b8a6-cbb66c0b333f"
version = "0.11.4"

[[deps.CompilerSupportLibraries_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "e66e0078-7015-5450-92f7-15fbd957f2ae"
version = "0.5.2+0"

[[deps.Dates]]
deps = ["Printf"]
uuid = "ade2ca70-3891-5945-98fb-dc099432e06a"

[[deps.Distributed]]
deps = ["Random", "Serialization", "Sockets"]
uuid = "8ba89e20-285c-5b6f-9357-94700520ee1b"

[[deps.Downloads]]
deps = ["ArgTools", "FileWatching", "LibCURL", "NetworkOptions"]
uuid = "f43a241f-c20a-4ad4-852c-f6b1247861c6"
version = "1.6.0"

[[deps.FileWatching]]
uuid = "7b1f6079-737a-58dc-b8bc-7a2ca5c1b5ee"

[[deps.FixedPointNumbers]]
deps = ["Statistics"]
git-tree-sha1 = "335bfdceacc84c5cdf16aadc768aa5ddfc5383cc"
uuid = "53c48c17-4a7d-5ca2-90c5-79b7896eea93"
version = "0.8.4"

[[deps.Formatting]]
deps = ["Printf"]
git-tree-sha1 = "8339d61043228fdd3eb658d86c926cb282ae72a8"
uuid = "59287772-0a20-5a39-b81b-1366585eb4c0"
version = "0.4.2"

[[deps.Hyperscript]]
deps = ["Test"]
git-tree-sha1 = "8d511d5b81240fc8e6802386302675bdf47737b9"
uuid = "47d2ed2b-36de-50cf-bf87-49c2cf4b8b91"
version = "0.0.4"

[[deps.HypertextLiteral]]
deps = ["Tricks"]
git-tree-sha1 = "c47c5fa4c5308f27ccaac35504858d8914e102f9"
uuid = "ac1192a8-f4b3-4bfe-ba22-af5b92cd3ab2"
version = "0.9.4"

[[deps.IOCapture]]
deps = ["Logging", "Random"]
git-tree-sha1 = "f7be53659ab06ddc986428d3a9dcc95f6fa6705a"
uuid = "b5f81e59-6552-4d32-b1f0-c071b021bf89"
version = "0.2.2"

[[deps.InteractiveUtils]]
deps = ["Markdown"]
uuid = "b77e0a4c-d291-57a0-90e8-8db25a27a240"

[[deps.JSON]]
deps = ["Dates", "Mmap", "Parsers", "Unicode"]
git-tree-sha1 = "3c837543ddb02250ef42f4738347454f95079d4e"
uuid = "682c06a0-de6a-54ab-a142-c8b1cf79cde6"
version = "0.21.3"

[[deps.JuliaInterpreter]]
deps = ["CodeTracking", "InteractiveUtils", "Random", "UUIDs"]
git-tree-sha1 = "d9ae7a9081d9b1a3b2a5c1d3dac5e2fdaafbd538"
uuid = "aa1ae85d-cabe-5617-a682-6adf51b2e16a"
version = "0.9.22"

[[deps.LaTeXStrings]]
git-tree-sha1 = "f2355693d6778a178ade15952b7ac47a4ff97996"
uuid = "b964fa9f-0449-5b57-a5c2-d3ea65f4040f"
version = "1.3.0"

[[deps.Latexify]]
deps = ["Formatting", "InteractiveUtils", "LaTeXStrings", "MacroTools", "Markdown", "OrderedCollections", "Printf", "Requires"]
git-tree-sha1 = "2422f47b34d4b127720a18f86fa7b1aa2e141f29"
uuid = "23fbe1c1-3f47-55db-b15f-69d7ec21a316"
version = "0.15.18"

[[deps.LibCURL]]
deps = ["LibCURL_jll", "MozillaCACerts_jll"]
uuid = "b27032c2-a3e7-50c8-80cd-2d36dbcbfd21"
version = "0.6.3"

[[deps.LibCURL_jll]]
deps = ["Artifacts", "LibSSH2_jll", "Libdl", "MbedTLS_jll", "Zlib_jll", "nghttp2_jll"]
uuid = "deac9b47-8bc7-5906-a0fe-35ac56dc84c0"
version = "7.84.0+0"

[[deps.LibGit2]]
deps = ["Base64", "NetworkOptions", "Printf", "SHA"]
uuid = "76f85450-5226-5b5a-8eaa-529ad045b433"

[[deps.LibSSH2_jll]]
deps = ["Artifacts", "Libdl", "MbedTLS_jll"]
uuid = "29816b5a-b9ab-546f-933c-edad1886dfa8"
version = "1.10.2+0"

[[deps.Libdl]]
uuid = "8f399da3-3557-5675-b5ff-fb832c97cbdb"

[[deps.LinearAlgebra]]
deps = ["Libdl", "libblastrampoline_jll"]
uuid = "37e2e46d-f89d-539d-b4ee-838fcccc9c8e"

[[deps.Logging]]
uuid = "56ddb016-857b-54e1-b83d-db4d58db5568"

[[deps.LoweredCodeUtils]]
deps = ["JuliaInterpreter"]
git-tree-sha1 = "60168780555f3e663c536500aa790b6368adc02a"
uuid = "6f1432cf-f94c-5a45-995e-cdbf5db27b0b"
version = "2.3.0"

[[deps.MIMEs]]
git-tree-sha1 = "65f28ad4b594aebe22157d6fac869786a255b7eb"
uuid = "6c6e2e6c-3030-632d-7369-2d6c69616d65"
version = "0.1.4"

[[deps.MacroTools]]
deps = ["Markdown", "Random"]
git-tree-sha1 = "42324d08725e200c23d4dfb549e0d5d89dede2d2"
uuid = "1914dd2f-81c6-5fcd-8719-6d5c9610ff09"
version = "0.5.10"

[[deps.Markdown]]
deps = ["Base64"]
uuid = "d6f4376e-aef5-505a-96c1-9c027394607a"

[[deps.MbedTLS_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "c8ffd9c3-330d-5841-b78e-0817d7145fa1"
version = "2.28.0+0"

[[deps.Mmap]]
uuid = "a63ad114-7e13-5084-954f-fe012c677804"

[[deps.MozillaCACerts_jll]]
uuid = "14a3606d-f60d-562e-9121-12d972cd8159"
version = "2022.2.1"

[[deps.NetworkOptions]]
uuid = "ca575930-c2e3-43a9-ace4-1e988b2c1908"
version = "1.2.0"

[[deps.OpenBLAS_jll]]
deps = ["Artifacts", "CompilerSupportLibraries_jll", "Libdl"]
uuid = "4536629a-c528-5b80-bd46-f80d51c5b363"
version = "0.3.20+0"

[[deps.OrderedCollections]]
git-tree-sha1 = "85f8e6578bf1f9ee0d11e7bb1b1456435479d47c"
uuid = "bac558e1-5e72-5ebc-8fee-abe8a469f55d"
version = "1.4.1"

[[deps.Parsers]]
deps = ["Dates", "SnoopPrecompile"]
git-tree-sha1 = "478ac6c952fddd4399e71d4779797c538d0ff2bf"
uuid = "69de0a69-1ddd-5017-9359-2bf0b02dc9f0"
version = "2.5.8"

[[deps.Pkg]]
deps = ["Artifacts", "Dates", "Downloads", "LibGit2", "Libdl", "Logging", "Markdown", "Printf", "REPL", "Random", "SHA", "Serialization", "TOML", "Tar", "UUIDs", "p7zip_jll"]
uuid = "44cfe95a-1eb2-52ea-b672-e2afdf69b78f"
version = "1.8.0"

[[deps.PlutoHooks]]
deps = ["InteractiveUtils", "Markdown", "UUIDs"]
git-tree-sha1 = "072cdf20c9b0507fdd977d7d246d90030609674b"
uuid = "0ff47ea0-7a50-410d-8455-4348d5de0774"
version = "0.0.5"

[[deps.PlutoLinks]]
deps = ["FileWatching", "InteractiveUtils", "Markdown", "PlutoHooks", "Revise", "UUIDs"]
git-tree-sha1 = "8f5fa7056e6dcfb23ac5211de38e6c03f6367794"
uuid = "0ff47ea0-7a50-410d-8455-4348d5de0420"
version = "0.1.6"

[[deps.PlutoTeachingTools]]
deps = ["Downloads", "HypertextLiteral", "LaTeXStrings", "Latexify", "Markdown", "PlutoLinks", "PlutoUI", "Random"]
git-tree-sha1 = "b970826468465da71f839cdacc403e99842c18ea"
uuid = "661c6b06-c737-4d37-b85c-46df65de6f69"
version = "0.2.8"

[[deps.PlutoUI]]
deps = ["AbstractPlutoDingetjes", "Base64", "ColorTypes", "Dates", "FixedPointNumbers", "Hyperscript", "HypertextLiteral", "IOCapture", "InteractiveUtils", "JSON", "Logging", "MIMEs", "Markdown", "Random", "Reexport", "URIs", "UUIDs"]
git-tree-sha1 = "5bb5129fdd62a2bbbe17c2756932259acf467386"
uuid = "7f904dfe-b85e-4ff6-b463-dae2292396a8"
version = "0.7.50"

[[deps.Preferences]]
deps = ["TOML"]
git-tree-sha1 = "47e5f437cc0e7ef2ce8406ce1e7e24d44915f88d"
uuid = "21216c6a-2e73-6563-6e65-726566657250"
version = "1.3.0"

[[deps.Printf]]
deps = ["Unicode"]
uuid = "de0858da-6303-5e67-8744-51eddeeeb8d7"

[[deps.REPL]]
deps = ["InteractiveUtils", "Markdown", "Sockets", "Unicode"]
uuid = "3fa0cd96-eef1-5676-8a61-b3b8758bbffb"

[[deps.Random]]
deps = ["SHA", "Serialization"]
uuid = "9a3f8284-a2c9-5f02-9a11-845980a1fd5c"

[[deps.Reexport]]
git-tree-sha1 = "45e428421666073eab6f2da5c9d310d99bb12f9b"
uuid = "189a3867-3050-52da-a836-e630ba90ab69"
version = "1.2.2"

[[deps.Requires]]
deps = ["UUIDs"]
git-tree-sha1 = "838a3a4188e2ded87a4f9f184b4b0d78a1e91cb7"
uuid = "ae029012-a4dd-5104-9daa-d747884805df"
version = "1.3.0"

[[deps.Revise]]
deps = ["CodeTracking", "Distributed", "FileWatching", "JuliaInterpreter", "LibGit2", "LoweredCodeUtils", "OrderedCollections", "Pkg", "REPL", "Requires", "UUIDs", "Unicode"]
git-tree-sha1 = "90cb983381a9dc7d3dff5fb2d1ee52cd59877412"
uuid = "295af30f-e4ad-537b-8983-00126c2a3abe"
version = "3.5.1"

[[deps.SHA]]
uuid = "ea8e919c-243c-51af-8825-aaa63cd721ce"
version = "0.7.0"

[[deps.Serialization]]
uuid = "9e88b42a-f829-5b0c-bbe9-9e923198166b"

[[deps.SnoopPrecompile]]
deps = ["Preferences"]
git-tree-sha1 = "e760a70afdcd461cf01a575947738d359234665c"
uuid = "66db9d55-30c0-4569-8b51-7e840670fc0c"
version = "1.0.3"

[[deps.Sockets]]
uuid = "6462fe0b-24de-5631-8697-dd941f90decc"

[[deps.SparseArrays]]
deps = ["LinearAlgebra", "Random"]
uuid = "2f01184e-e22b-5df5-ae63-d93ebab69eaf"

[[deps.Statistics]]
deps = ["LinearAlgebra", "SparseArrays"]
uuid = "10745b16-79ce-11e8-11f9-7d13ad32a3b2"

[[deps.TOML]]
deps = ["Dates"]
uuid = "fa267f1f-6049-4f14-aa54-33bafae1ed76"
version = "1.0.0"

[[deps.Tar]]
deps = ["ArgTools", "SHA"]
uuid = "a4e569a6-e804-4fa4-b0f3-eef7a1d5b13e"
version = "1.10.0"

[[deps.Test]]
deps = ["InteractiveUtils", "Logging", "Random", "Serialization"]
uuid = "8dfed614-e22c-5e08-85e1-65c5234f0b40"

[[deps.Tricks]]
git-tree-sha1 = "6bac775f2d42a611cdfcd1fb217ee719630c4175"
uuid = "410a4b4d-49e4-4fbc-ab6d-cb71b17b3775"
version = "0.1.6"

[[deps.URIs]]
git-tree-sha1 = "074f993b0ca030848b897beff716d93aca60f06a"
uuid = "5c2747f8-b7ea-4ff2-ba2e-563bfd36b1d4"
version = "1.4.2"

[[deps.UUIDs]]
deps = ["Random", "SHA"]
uuid = "cf7118a7-6976-5b1a-9a39-7adc72f591a4"

[[deps.Unicode]]
uuid = "4ec0a83e-493e-50e2-b9ac-8f72acf5a8f5"

[[deps.Zlib_jll]]
deps = ["Libdl"]
uuid = "83775a58-1f1d-513f-b197-d71354ab007a"
version = "1.2.12+3"

[[deps.libblastrampoline_jll]]
deps = ["Artifacts", "Libdl", "OpenBLAS_jll"]
uuid = "8e850b90-86db-534c-a0d3-1478176c7d93"
version = "5.1.1+0"

[[deps.nghttp2_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "8e850ede-7688-5339-a07c-302acd2aaf8d"
version = "1.48.0+0"

[[deps.p7zip_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "3f19e933-33d8-53b3-aaab-bd5110c3b7a0"
version = "17.4.0+0"
"""

# ╔═╡ Cell order:
# ╟─d3c6dd3c-8f78-4c5d-b22a-0fbeb93d02b4
# ╟─bdacad08-a9b1-11ec-1013-45393b4e19c9
# ╟─2d438832-40cd-45bf-9305-46f59a3fca33
# ╟─a9774883-e87d-435c-96df-352086d62037
# ╟─39f8fd05-15a5-4dc5-8773-60cbe08a8ff2
# ╠═6aff158c-c900-4933-896d-3aac00cc585a
# ╠═ded8db77-e0d7-4458-b635-9d94b99b9ba9
# ╠═347f88c6-6989-4fe2-bbb1-b2d2d051fe16
# ╠═bce13da5-3d28-4215-982a-dc3d1f923899
# ╠═0ca35537-9ff6-4606-9514-1243fd3a54c2
# ╟─93b09c7a-3ee0-4bde-9729-56422139314c
# ╟─6f38ee4e-27f2-4e86-857f-e52fe80d0234
# ╠═46d417c1-68c0-4929-9b86-01dda6762e22
# ╠═8977763c-ce75-427c-a152-e3a40e6f7056
# ╠═cb897219-e8c5-432c-947e-941820f86481
# ╠═fe84d803-6883-42e6-92e4-e8fe277d6fde
# ╠═28a70307-3993-4e0e-a784-3557e3361ad1
# ╠═ea72ff9c-a6e9-4f33-80fd-8d1d5dd4654c
# ╟─4b62caa1-90a7-4451-a313-eb93badf618d
# ╠═294e4e12-d429-45e7-b070-7d3ddfc27103
# ╠═29a950c7-da06-40c4-ae23-b1255527bde5
# ╠═88fbdfbc-1a5e-41eb-838a-eda29e168d22
# ╟─e7753152-42f9-488b-9e32-07ba72baf429
# ╟─dc021945-2ebc-427c-a639-7b5312070022
# ╠═8593536b-209f-4eff-8c56-b4a8fd91f1b8
# ╟─31eef3da-433c-4b20-a7a6-813391a440d3
# ╟─e5531a95-13c0-41ad-bc53-f82d946c58bb
# ╟─ca148ba2-c1b2-48a1-8956-4d7d660faa9e
# ╠═5a893a5b-bbaa-4797-a7d0-e724b6796c9d
# ╟─1e1e83b3-5236-4507-bfc6-b57a8a0f898f
# ╠═f2eb8efc-5877-493f-84a9-c2e9a37d1d75
# ╠═6b7aa29e-6bbf-4b04-b591-2683831b5662
# ╠═5ffe393e-9a39-4a7e-84f9-4988d466d950
# ╟─542f6587-c324-42b2-bbd2-ea26091109ad
# ╟─b42d85fe-e8eb-4b7e-b41f-1bc10eb2a29f
# ╟─379ac696-6302-4707-9852-7ee38b17f117
# ╟─b4b780de-102a-490d-9810-3ef00c125b75
# ╟─9f0fa903-54e3-4fbd-9bde-19abeff6e1be
# ╟─a50aa988-65be-4d1d-8bdb-4b7885161a87
# ╟─a660351d-bc79-4cee-ba24-a7dd9ca95758
# ╟─cc5ef0a4-8d7f-4303-96ad-2fcd14373a07
# ╠═9069dbdc-d02b-47b6-a6ef-1d8f14fb9534
# ╟─937d4c0b-d67b-43d2-9c8b-1515a9d74dfb
# ╠═2aa70776-b7e6-42b7-a5ac-edcc6f900d46
# ╠═480752a1-c1dd-4b9d-9b26-953e26fc116f
# ╠═37f7c4ce-a95f-4453-89c2-f4d8ee06e760
# ╟─c578853e-938b-4fef-8072-ced21e8740bb
# ╠═80560068-cd59-4d7a-b8af-58cb984ad0ac
# ╠═f6677027-178c-413c-86e0-3072ffd9d146
# ╠═5eed559d-d4c4-4038-8537-0f1f0a1dc51f
# ╠═3ad54b8a-4ca8-4f68-9fc7-189ea1c03d76
# ╠═e5818f98-0ded-400e-befb-59ece21f6b39
# ╠═70e13fbb-1e35-4543-86fb-a5f4b5115291
# ╟─7e0348f6-2284-475d-a101-c6842b05db4c
# ╠═e1386345-4493-4467-b634-8da57532fb11
# ╠═522d3409-7acb-492e-9610-6e977a2334e8
# ╠═1c825c00-9c03-4c64-9edb-070f601d0836
# ╟─6752f134-9f36-4646-a914-a916f757719b
# ╠═9f1effe5-f766-4f2e-aa4b-3967261fd84b
# ╟─a3ca2950-4bc0-45ed-9652-24ed589e1dfd
# ╟─f333aa56-2cbc-4caf-8fde-3515bbb2d977
# ╠═79a6c1e6-b22e-4674-ba0a-8862336864e3
# ╟─e4c34d74-51c5-4c08-ba85-636dfc91813e
# ╠═5f6f51d7-6a95-4b10-b34a-cfb00a779944
# ╠═1c5a4646-937c-42cd-bdb5-efc17eac9227
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
