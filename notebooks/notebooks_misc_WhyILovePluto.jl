### A Pluto.jl notebook ###
# v0.19.9

using Markdown
using InteractiveUtils

# ╔═╡ 2d76feb3-b21d-4018-9c09-4b757e6336e7
md"""
# $(frontmatter.title)
"""

# ╔═╡ eb21e818-9e5e-42a0-838e-87a7323a4b1e
TableOfContents()

# ╔═╡ bdacad08-a9b1-11ec-1013-45393b4e19c9
frontmatter = (

title = "Why I Love Pluto.jl",
description = "Some of the reasons I enjoy working with Pluto.jl",
layout = "layout.jlhtml",
tags = ["Julia", "Programming", "Language","Pluto"],

);

# ╔═╡ e585127b-d136-4bc6-9757-f93e5000399e
PlutoTeachingTools.blockquote("If only Jupyter notebooks weren't so state driven. Imagine a notebook system that had no state - it would be so much better")

# ╔═╡ 4b62caa1-90a7-4451-a313-eb93badf618d


# ╔═╡ 35de6a2f-6729-4af7-ba82-983572b5fe8c
md"""
# Reactivity
"""

# ╔═╡ 7e0348f6-2284-475d-a101-c6842b05db4c
md"""
## Excel and its limitations
"""

# ╔═╡ 4768f2c0-76cd-4abb-955a-9f455ef2b0b8
md"""
Like most people 

nowadays that is different and I mainly
"""

# ╔═╡ 450b5d2c-21b4-462c-ad45-8a5d9b13d0b9


# ╔═╡ 0b6ee79e-be2d-4266-9a53-de8f711e7a51


# ╔═╡ a9084011-7989-40e2-b674-c84dae14e2a8


# ╔═╡ de65a87d-8d62-47a2-a5aa-3ecb1e41b6f0
md"""
# Reproducibility
"""

# ╔═╡ 6752f134-9f36-4646-a914-a916f757719b
md"""
## No hidden state or workspace 
"""

# ╔═╡ 38c724d0-dde0-4f26-9850-e34f6b348e3a
md"""
### Jupyter Problem #2
"""

# ╔═╡ 9f1effe5-f766-4f2e-aa4b-3967261fd84b


# ╔═╡ de5529c0-a94d-40dc-bd33-c48a9cd8c5ff


# ╔═╡ c2c374a3-41c8-4a9a-b8d2-70efc7b92201


# ╔═╡ 5a430a2f-183a-44f8-896e-626fc32af632


# ╔═╡ a3ca2950-4bc0-45ed-9652-24ed589e1dfd
md"""
## Package managment 
"""

# ╔═╡ 4656419d-50c3-44a4-af41-5d9453d66d03
md"""
### Jupyter Problem #3
"""

# ╔═╡ 6be52376-0023-4ee5-be9b-787998a5e3b7


# ╔═╡ dc0fc07c-8cc9-40dc-9919-b8d808f1ce26


# ╔═╡ 891aeadc-8a6a-4776-8d39-296cfef3ad1c


# ╔═╡ 23488951-afa9-46db-961c-b57753913aed


# ╔═╡ 64599d86-b946-4211-a963-b4a6b7635101
md"""
# Flexibility and discernability - exposed `.html`, `.css`, and `.js`
"""

# ╔═╡ 788d35a1-5bcd-40e6-801e-da1a0f8629be
md"""
## Freedom to overwrite the base `.css`
"""

# ╔═╡ 43a14226-f373-4dbc-a036-b34da5f4eace


# ╔═╡ be458f4f-8d7f-4623-9364-e67695d3c461
md"""
## Javascript packages
"""

# ╔═╡ d6b48024-71cf-4b09-9b2c-b0c52b6f2105
html"""
<script src="https://cdn.jsdelivr.net/npm/d3@6.2.0/dist/d3.min.js"></script>
"""

# ╔═╡ c732167a-91a7-4bac-985a-f1fbc0cfced4
html"""
<script>
const { default: confetti } = await import("https://esm.sh/canvas-confetti@1.4.0")
</script>
"""

# ╔═╡ 80d689f3-a71c-4a74-a049-f6e56cf541f1
# ╠═╡ disabled = true
#=╠═╡
html"""
<script type="module">
  import mermaid from 'https://cdn.jsdelivr.net/npm/mermaid@10/dist/mermaid.esm.min.mjs';
  mermaid.initialize({ startOnLoad: true });
</script>
"""
  ╠═╡ =#

# ╔═╡ c97152d8-69b2-4f30-ad42-33af82d7dce5


# ╔═╡ 89835fa4-2861-4055-8c49-9a092e564d6f
TODO(md"""
get `mermaid.js` working here
""")

# ╔═╡ dc470e53-4a1a-4861-85e9-3c5d0cd3791d
html"""

<script type=module>

const { default: mermaid } = await import( "https://cdn.jsdelivr.net/npm/mermaid@10.0.0/dist/mermaid.min.js")

</script>


<pre class="mermaid">

flowchart LR
    A[Hard] -->|Text| B(Round)
    B --> C{Decision}
    C -->|One| D[Result 1]
    C -->|Two| E[Result 2]

</pre>

  
"""

# ╔═╡ ae1f85f0-8e99-46cd-9355-efd6f0c3df20
html"""
<script type=module>

const { default: mermaid } = await import( "https://cdn.jsdelivr.net/npm/mermaid@10.1.0/dist/mermaid.min.js")

</script>
"""

# ╔═╡ ee83cd72-a8f1-4213-9acc-6255f101575f
html"""
<pre class="mermaid">

flowchart TD
    A[Christmas] -->|Get money| B(Go shopping)
    B --> C{Let me think}
    C -->|One| D[Laptop]
    C -->|Two| E[iPhone]
    C -->|Three| F[fa:fa-car Car]
</pre>

"""

# ╔═╡ 3f9dc1c5-b570-4a0f-a993-618fa64ff156
# ╠═╡ disabled = true
#=╠═╡
html"""
<script src="https://cdn.jsdelivr.net/npm/mermaid@10.1.0/dist/mermaid.min.js">
</script>

"""
  ╠═╡ =#

# ╔═╡ bf6bd5d7-7c6e-4c0c-bdc7-8d851bbb4486
# ╠═╡ disabled = true
#=╠═╡
<pre class="mermaid">

flowchart TD
    A[Christmas] -->|Get money| B(Go shopping)
    B --> C{Let me think}
    C -->|One| D[Laptop]
    C -->|Two| E[iPhone]
    C -->|Three| F[fa:fa-car Car]
</pre>
  ╠═╡ =#

# ╔═╡ dedb1114-ee65-44fd-bcb9-e363ba0546f8
md"""
## Packed up as `PlutoUI.jl`
"""

# ╔═╡ 29b47e44-cfbb-4fc5-bc07-c32202cf2fdb
md"""
It is these properties that have allowed things like the `Table Of Contents` on the right hand side of the screen to be made and bundled along with other useful components in the very useful PlutoUI.jl package, allowing anyone to expand/augment the type of widgets and what can be done "on top of" the existing baseline functionality of Pluto.jl. This sort of modularity and exapandibility is a key factor when I consider Pluto vs other similar tools and allows a seperation of concerns which enables individual contributors "merely" making a nice clock widget to have farther reaching consequences.
"""

# ╔═╡ 9bea2bbe-e223-4f2a-83ff-fafce4547b7d
md"""
# It is still only v0.xyz
"""

# ╔═╡ 73de53db-b2ea-4bfe-b41e-63cb2c58b6d7
md"""
As of writing this, it is currently `v0.19.23` and I honestly would be perfectly content with it there were no more updates. That is not to say I don't like the updates (*please keep them coming)*, far from it, its updates and improvements continue to make it the most amazing tool I have seen in a long time.

I more meant that I have been speaking about pluto to some and said the words "I don't know how it could get better" only to be met then the team releases an even **better** update

And then again I will say "I don't know how it could get better, it is so good" and again the `Pluto.jl` contributors will exceed my expectations and release an even **better better** update


...you get the picture,


its so good as is, and is only getting better with each update, I cannot wait to see what it will become in the future.
"""

# ╔═╡ dafd77a0-fb1c-4bf8-9bf2-a38f1801b340


# ╔═╡ 423b42b7-b49e-4fd2-b163-79a5e4e3b0fd
md"""
This whole site is built off of the back of pluto notebooks and I think that is testament to the philosopy and out-of-the box thinking of the Pluto.jl project. Yes in the past notebooks have not been used as "actual" source code and were more for experimentation, but why should they be limited to this, opportunity is bound one just has to open there eyes and see it.
"""

# ╔═╡ ffe2c713-7372-4dde-bce1-707dd405b153
md"""
On that note, I just wanted to say a **BIG THANK YOU** to the `Pluto.jl` team - If you guys ever see this - thank you so much for all your hard work and dedication. Know that you made me rediscover my love for code and what is possible if you dream big enough.
"""

# ╔═╡ e8702088-1477-4b0f-ab95-49f381d0cdd3
md"""
# Appendix
"""

# ╔═╡ f333aa56-2cbc-4caf-8fde-3515bbb2d977
md"""
## Import Packages
"""

# ╔═╡ 79a6c1e6-b22e-4674-ba0a-8862336864e3
begin 
	using PlutoUI
	using PlutoTeachingTools
	using HypertextLiteral
end

# ╔═╡ 9ee904c8-7839-4557-a224-31ecb023d516
md"""
## Formatting/Adjusutments To Look And Feel
"""

# ╔═╡ aaa45fe2-2193-43f8-acb8-446b6bcf2310
paragraphJustifiedStyling()=html"""
<style>
p {
  text-align: justify;
  text-justify: inter-word;
}
</style>
"""

# ╔═╡ 44f543f3-07f3-486c-855d-b1b5a74df1c4
paragraphJustifiedStyling()

# ╔═╡ 00000000-0000-0000-0000-000000000001
PLUTO_PROJECT_TOML_CONTENTS = """
[deps]
HypertextLiteral = "ac1192a8-f4b3-4bfe-ba22-af5b92cd3ab2"
PlutoTeachingTools = "661c6b06-c737-4d37-b85c-46df65de6f69"
PlutoUI = "7f904dfe-b85e-4ff6-b463-dae2292396a8"

[compat]
HypertextLiteral = "~0.9.4"
PlutoTeachingTools = "~0.2.8"
PlutoUI = "~0.7.50"
"""

# ╔═╡ 00000000-0000-0000-0000-000000000002
PLUTO_MANIFEST_TOML_CONTENTS = """
# This file is machine-generated - editing it directly is not advised

julia_version = "1.8.1"
manifest_format = "2.0"
project_hash = "d3a0126ab005e9fb67731a36a99b12bbac071747"

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
git-tree-sha1 = "d730914ef30a06732bdd9f763f6cc32e92ffbff1"
uuid = "da1fd8a2-8d9e-5ec2-8556-3022fb5608a2"
version = "1.3.1"

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
git-tree-sha1 = "6a125e6a4cb391e0b9adbd1afa9e771c2179f8ef"
uuid = "aa1ae85d-cabe-5617-a682-6adf51b2e16a"
version = "0.9.23"

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
git-tree-sha1 = "d321bf2de576bf25ec4d3e4360faca399afca282"
uuid = "bac558e1-5e72-5ebc-8fee-abe8a469f55d"
version = "1.6.0"

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
git-tree-sha1 = "feafdc70b2e6684314e188d95fe66d116de834a7"
uuid = "295af30f-e4ad-537b-8983-00126c2a3abe"
version = "3.5.2"

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
git-tree-sha1 = "aadb748be58b492045b4f56166b5188aa63ce549"
uuid = "410a4b4d-49e4-4fbc-ab6d-cb71b17b3775"
version = "0.1.7"

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
# ╟─f5450eab-0f9f-4b7f-9b80-992d3c553ba9
# ╟─2d76feb3-b21d-4018-9c09-4b757e6336e7
# ╟─eb21e818-9e5e-42a0-838e-87a7323a4b1e
# ╟─bdacad08-a9b1-11ec-1013-45393b4e19c9
# ╟─e585127b-d136-4bc6-9757-f93e5000399e
# ╠═4b62caa1-90a7-4451-a313-eb93badf618d
# ╟─35de6a2f-6729-4af7-ba82-983572b5fe8c
# ╟─7e0348f6-2284-475d-a101-c6842b05db4c
# ╟─4768f2c0-76cd-4abb-955a-9f455ef2b0b8
# ╠═450b5d2c-21b4-462c-ad45-8a5d9b13d0b9
# ╠═0b6ee79e-be2d-4266-9a53-de8f711e7a51
# ╠═a9084011-7989-40e2-b674-c84dae14e2a8
# ╟─de65a87d-8d62-47a2-a5aa-3ecb1e41b6f0
# ╟─6752f134-9f36-4646-a914-a916f757719b
# ╟─38c724d0-dde0-4f26-9850-e34f6b348e3a
# ╠═9f1effe5-f766-4f2e-aa4b-3967261fd84b
# ╠═de5529c0-a94d-40dc-bd33-c48a9cd8c5ff
# ╠═c2c374a3-41c8-4a9a-b8d2-70efc7b92201
# ╠═5a430a2f-183a-44f8-896e-626fc32af632
# ╟─a3ca2950-4bc0-45ed-9652-24ed589e1dfd
# ╟─4656419d-50c3-44a4-af41-5d9453d66d03
# ╠═6be52376-0023-4ee5-be9b-787998a5e3b7
# ╠═dc0fc07c-8cc9-40dc-9919-b8d808f1ce26
# ╠═891aeadc-8a6a-4776-8d39-296cfef3ad1c
# ╠═23488951-afa9-46db-961c-b57753913aed
# ╟─64599d86-b946-4211-a963-b4a6b7635101
# ╠═788d35a1-5bcd-40e6-801e-da1a0f8629be
# ╠═43a14226-f373-4dbc-a036-b34da5f4eace
# ╟─be458f4f-8d7f-4623-9364-e67695d3c461
# ╠═d6b48024-71cf-4b09-9b2c-b0c52b6f2105
# ╠═c732167a-91a7-4bac-985a-f1fbc0cfced4
# ╠═80d689f3-a71c-4a74-a049-f6e56cf541f1
# ╠═c97152d8-69b2-4f30-ad42-33af82d7dce5
# ╟─89835fa4-2861-4055-8c49-9a092e564d6f
# ╠═dc470e53-4a1a-4861-85e9-3c5d0cd3791d
# ╠═ae1f85f0-8e99-46cd-9355-efd6f0c3df20
# ╠═ee83cd72-a8f1-4213-9acc-6255f101575f
# ╠═3f9dc1c5-b570-4a0f-a993-618fa64ff156
# ╟─bf6bd5d7-7c6e-4c0c-bdc7-8d851bbb4486
# ╟─dedb1114-ee65-44fd-bcb9-e363ba0546f8
# ╟─29b47e44-cfbb-4fc5-bc07-c32202cf2fdb
# ╟─9bea2bbe-e223-4f2a-83ff-fafce4547b7d
# ╟─73de53db-b2ea-4bfe-b41e-63cb2c58b6d7
# ╠═dafd77a0-fb1c-4bf8-9bf2-a38f1801b340
# ╟─423b42b7-b49e-4fd2-b163-79a5e4e3b0fd
# ╟─ffe2c713-7372-4dde-bce1-707dd405b153
# ╟─e8702088-1477-4b0f-ab95-49f381d0cdd3
# ╟─f333aa56-2cbc-4caf-8fde-3515bbb2d977
# ╠═79a6c1e6-b22e-4674-ba0a-8862336864e3
# ╟─9ee904c8-7839-4557-a224-31ecb023d516
# ╠═aaa45fe2-2193-43f8-acb8-446b6bcf2310
# ╠═44f543f3-07f3-486c-855d-b1b5a74df1c4
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
