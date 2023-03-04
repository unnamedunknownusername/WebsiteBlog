### A Pluto.jl notebook ###
# v0.19.9

using Markdown
using InteractiveUtils

# ╔═╡ bdacad08-a9b1-11ec-1013-45393b4e19c9
md"""
# $(frontmatter.title)
"""

# ╔═╡ 2d438832-40cd-45bf-9305-46f59a3fca33
frontmatter = (
	title = "Tim Holy Traits",
	description = "A simple description of the THTT patttern in Julia",
	layout = "layout.jlhtml",
		tags = ["Julia", "Programming", "Language","Pluto"],
);

# ╔═╡ 7e0348f6-2284-475d-a101-c6842b05db4c
TableOfContents()

# ╔═╡ 5d92ce0d-5d4e-47b7-a650-c1e86caadd4f
PlutoTeachingTools.blockquote("Multiple dispatch gives you the wonderful gift of flexibility and lets you uncover things you first thought were not possible")

# ╔═╡ e1386345-4493-4467-b634-8da57532fb11
md"""
# The General Idea
"""

# ╔═╡ aa52e7d6-b987-4557-9013-749fe3d9ee06
md"""
In programming languaes one often has to somehow specify the behaiour ofr objects/things, e.g. in most object orientated languages we use polymorphism through classes and abstract calsses to create instances of parent and child objects so as to group attributes or inherit common methods. 

"""

# ╔═╡ 021ca64f-6dbd-4d7b-a8fa-cfd810cf4a18
md"""
Another such way of pulling together similar functionality is through interfaces. The idea behind interfaces is, broadly speaking, to specify empty "stuff" (ethods or data) and later when another class "implements" (a la inherits) the aforementioned interface it has to provide/populate/"fill-in" thes empty parts

"""

# ╔═╡ ee9f74bc-5c29-4d09-befd-f6e3f98fae5f
md"""
as an abstract example we could create an interface with an empty method
```
Interface MyAnimalInterface
	Speak(){

	}
```

we could create a dog class and if they implment the interface they would then need to "fill-in" the 

```
MyDogClass implements MyAnimalInterface
	Speak(){
		print ("woof woof")
	}
```

usually if we leave it empty and don't "fill-in" the interface data we would get an error
```
MyDogClass implements MyAnimalInterface
	Speak(){
	
	}
->THIS WOULD ERROR
```



"""

# ╔═╡ d4e4ebdb-9f82-4c32-9a0d-d2671c5ed211
md"""
the beauty of this, is that we could create something similar (say a cat class) and since it is also an animal we would also implement the inteface and fill it in with its **own** functionality
```
MyCatClass implements MyAnimalInterface
	Speak(){
		print ("Meow meow")
	}
```
Both are animals both animals speak but they speak in their own way. extending this further we have abstracted away an attribute that all animals have in the MyAnimalInterface AllAnimals speak/make sounds of some sort.
"""

# ╔═╡ e66d670a-eba5-4b5e-a199-e52b7873f783
md"""
more concretely in C# we could have 

```cs
public interface IVehicle
{
  public int NumberOfWheels {get; set;}

}
```

and have a class `Car` that implements it. We have to now provide a value for the property on the interface.
but what this means is that 
```cs
public class Car : IVehicle
{
  public int NumberOfWheels {get;}= 4 

}
```

```cs
public class Boat : IVehicle
{
  public int NumberOfWheels {get;}= 0 

}
```
"""

# ╔═╡ 8a7ac42c-40aa-46f2-b76a-c65fcca83cb4
md"""
One can sort of look at interfaces as a way to specify/group traits of a "thing" together. And then any other "thing" which has those traits can inherit from it and must **(I repeat MUST)** fill in there particular details. In the above exmples all vehicles have the trait a number of wheels. Fors cars that number is 4 and for boats that number is zero, etc
"""

# ╔═╡ 01f35d03-7a6e-4a16-9b62-285b8808aa12
md"""
The specific details are not really that important and there may be a little more nuance in reality but for this article the only thing you really have to understand is that in most languages there is a specific construct called an interface to specify this attrribute like behaviour.
"""

# ╔═╡ 6752f134-9f36-4646-a914-a916f757719b
md"""






Julia is not strictly an Object Orientated programming language in that it does not have classes which house data + methods. instead Julia decouples the two. Uusers can define `types` for data and would act similar to class properties) and`functions` and their associated method table which would act similar to class methods
"""

# ╔═╡ 9f1effe5-f766-4f2e-aa4b-3967261fd84b
md"""
# Implementing It
"""

# ╔═╡ a3ca2950-4bc0-45ed-9652-24ed589e1dfd
md"""
asd[^THTT] asd
"""

# ╔═╡ cd2970bd-6061-488c-90e0-b254dcb4a81b
md"""
# Appendix
"""

# ╔═╡ 3b90bb4e-67a5-4e91-8c76-e597357bc48d
md"""
This section can be skipped if in a 
"""

# ╔═╡ 7b1a94a1-61e7-490f-b7f8-9ce2f5627a79
md"""
## References
"""

# ╔═╡ 3f1dfc85-8379-40b2-bbb2-834f7356fb32
md"""
[^THTT]: https://www.ahsmart.com/pub/holy-traits-design-patterns-and-best-practice-book/
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

# ╔═╡ 3e682611-c885-4eb2-b25f-d66a89d19b32
md"""
## Local Packages/Modules
"""

# ╔═╡ 61f7d41e-11ee-4caf-a449-761a52adb1e9
md"""
## Formatting\Modifcations To Look and Feel
"""

# ╔═╡ 95002b5d-d457-4822-b051-b7d3f3346675
PlutoTeachingTools.BottomFootnotesNumbered()

# ╔═╡ f7180788-a812-41b1-aa69-f7da25e21385
#PlutoTeachingTools.InlineFootnotesNumbered()

# ╔═╡ a3cb6606-9a32-44d5-b41d-41667ac016fe
PlutoTeachingTools.InlineFootnotesStyleSuperscript()

# ╔═╡ cf1e3ecb-dfc5-4d24-846c-128053b2e8af
InlineFootnotesNumbered2()

# ╔═╡ 52bb7172-f288-4072-9446-4c038901da69
#InlineFootnotesNumbered0()

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
# ╟─f5450eab-0f9f-4b7f-9b80-992d3c553ba9
# ╟─bdacad08-a9b1-11ec-1013-45393b4e19c9
# ╟─2d438832-40cd-45bf-9305-46f59a3fca33
# ╟─7e0348f6-2284-475d-a101-c6842b05db4c
# ╟─5d92ce0d-5d4e-47b7-a650-c1e86caadd4f
# ╟─e1386345-4493-4467-b634-8da57532fb11
# ╟─aa52e7d6-b987-4557-9013-749fe3d9ee06
# ╟─021ca64f-6dbd-4d7b-a8fa-cfd810cf4a18
# ╟─ee9f74bc-5c29-4d09-befd-f6e3f98fae5f
# ╟─d4e4ebdb-9f82-4c32-9a0d-d2671c5ed211
# ╟─e66d670a-eba5-4b5e-a199-e52b7873f783
# ╟─8a7ac42c-40aa-46f2-b76a-c65fcca83cb4
# ╟─01f35d03-7a6e-4a16-9b62-285b8808aa12
# ╟─6752f134-9f36-4646-a914-a916f757719b
# ╟─9f1effe5-f766-4f2e-aa4b-3967261fd84b
# ╠═a3ca2950-4bc0-45ed-9652-24ed589e1dfd
# ╟─cd2970bd-6061-488c-90e0-b254dcb4a81b
# ╟─3b90bb4e-67a5-4e91-8c76-e597357bc48d
# ╠═7b1a94a1-61e7-490f-b7f8-9ce2f5627a79
# ╠═3f1dfc85-8379-40b2-bbb2-834f7356fb32
# ╟─f333aa56-2cbc-4caf-8fde-3515bbb2d977
# ╠═79a6c1e6-b22e-4674-ba0a-8862336864e3
# ╟─3e682611-c885-4eb2-b25f-d66a89d19b32
# ╟─61f7d41e-11ee-4caf-a449-761a52adb1e9
# ╠═95002b5d-d457-4822-b051-b7d3f3346675
# ╠═f7180788-a812-41b1-aa69-f7da25e21385
# ╠═a3cb6606-9a32-44d5-b41d-41667ac016fe
# ╠═cf1e3ecb-dfc5-4d24-846c-128053b2e8af
# ╠═52bb7172-f288-4072-9446-4c038901da69
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
