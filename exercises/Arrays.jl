### A Pluto.jl notebook ###
# v0.11.14

using Markdown
using InteractiveUtils

# ╔═╡ 7d668ff2-f87f-11ea-34e1-3f0f93d64c67
md"# Arrays
In computer program, we sometimes want to store groups of related items. In Julia, we can use arrays for this purpose.

An array is an ordered sequence of values.  The values in an array are called _elements_ or sometimes _items_. There are several ways to create a new array; the simplest is the enclose elements in square brackets ( [] ):

## Creating Simple Arrays

Here is an example of a simple one-dimensional arrays."

# ╔═╡ a8ad0650-f882-11ea-0738-0b2624a74202
numbers = [6, 28, 496, 8128]

# ╔═╡ 7500b1a0-f885-11ea-0a39-050fe4f715c1
md"The function ```typeof``` can be used to find out the kind of the array."

# ╔═╡ f6aba962-f887-11ea-285d-4fe14d150a85
typeof(numbers)

# ╔═╡ 0fa6ece0-f888-11ea-1cca-6dcf57f47367
md"The kind of array is specified between curly braces and is composed of a type and a number.  The number indicates the dimensions. In our example the elements are of type **Int64** and the array is one-dimensional.  Here are a couple more examples of arrays."

# ╔═╡ cfea7030-f888-11ea-110b-2b45693cd089
cheeses = ["Cheddar", "Edam", "Gouda", "Havarti", "Mozzarella"]

# ╔═╡ 00b9dc50-f889-11ea-1582-83ddc12a4f67
typeof(cheeses)

# ╔═╡ 1a41cf70-f889-11ea-3ad3-ade5de43604a
md"This array contains values of type **String**."

# ╔═╡ fa9e23d0-f888-11ea-1052-2747ea4415c9
a = []

# ╔═╡ 11e32bd0-f889-11ea-3f28-7d89f50f5370
typeof(empty)

# ╔═╡ 4cc6dad0-f889-11ea-0167-bfcd07670f7c
md"This array contains values of type **Any**.

## Arrays are Mutable

The syntax for accessing the elements of an array uses the **bracket operator**.  Unlike a number of computer languages, the indices of an array in Julia start at 1."

# ╔═╡ ad20aff0-f889-11ea-12da-055d2fa76ca9
cheeses[1]

# ╔═╡ 09807410-f88a-11ea-3535-6fe38b5921a8
md"The phrase **arrays are mutable** means that we are able to change in the element of an array.  For example,"

# ╔═╡ 3036e262-f88a-11ea-0bc0-357ee982cb90
numbers[3] = 89

# ╔═╡ 6ad264d0-f88a-11ea-364b-1bc0c9d6f7aa
md"Now the **numbers** array looks like this."

# ╔═╡ 8010c760-f88a-11ea-0833-5f817b2647c9
numbers

# ╔═╡ fcad69e0-f88a-11ea-1517-cbb1cc236843
md"The _keyword_ **end** points to the last index of the array."

# ╔═╡ 10c48a80-f88b-11ea-3e87-b9bb80539436
cheeses[end]

# ╔═╡ 9367afce-f88b-11ea-0389-e358edeb2d11
md"## The Array Library

Julia provides functions that operate on arrays.  For example, **length** returns the length of an array."

# ╔═╡ fd387660-f88b-11ea-070f-51d9c28cb933
length(cheeses)

# ╔═╡ 2c7b9d30-f88c-11ea-1ece-59bd7ce0feed
md"Functions in Julia that **mutate** objects always end in an exclamation mark **!**.  The function **push!** adds a new element to the end of an array."

# ╔═╡ 91538060-f88c-11ea-23a8-673a689dff8c
push!(numbers, 19)

# ╔═╡ 8364cd00-f88d-11ea-22e2-53129fe59abc
md"The function **append!** adds the elements of a second array to the end of the first."

# ╔═╡ d87e8970-f88d-11ea-13d1-5ffc710a0d8d
push!(a, -5)

# ╔═╡ 4121f390-f88e-11ea-04f5-99d4fda76ac3
append!(numbers, a)

# ╔═╡ 5236f7c0-f88e-11ea-1193-0b4bb037f7cc
md"## For Loops

A **for loop** can be used to generate an array or to traverse the elements of an array. For example, the following code creates and array of even numbers, given an initial empty array."

# ╔═╡ 342eb730-f88f-11ea-2cda-eb4946abee79
c=[]

# ╔═╡ a8efe53e-f88e-11ea-3110-d9132ebf63b6
for n in 1:10
	if n % 2 == 0
		push!(c, n)
	end
end

# ╔═╡ 6932f360-f88f-11ea-0977-b374dfa412b4
md"The loop in the cell above creates values of **n** from 1 through 10.  If n is an **even** number, it is _pushed_ into the array **c**."

# ╔═╡ 084bd260-f88f-11ea-0821-7d64cb99f987
c

# ╔═╡ 4544e1f0-f891-11ea-104c-37605f693df0
md"### Reduce"

# ╔═╡ 3168eb00-f890-11ea-13e2-c58489498df0
md"To add up all the numbers of an array, you can use a **for loop** to _traverse an array_."

# ╔═╡ 40ee2770-f890-11ea-1e66-cb81906fd854
function addAll(a)
	total = 0
	for element in a
		total += element
	end
	total
end

# ╔═╡ 6b12ba70-f890-11ea-184c-f91780bbf7a4
md"Note:  the expression ```total += element is equivalent to ```total = total + element```.  As the loop runs, **total** accumulates the sum of the elements; a variable used in this way is sometimes called an **accumulator**."

# ╔═╡ 5ff78ee0-f890-11ea-0b43-653ce85b9573
addAll(numbers)

# ╔═╡ a81eeec0-f890-11ea-298d-05ab2a2c099d
md"It turns out that adding up the elements of an array is such a common operation that Julia provides it as a built-in function:"

# ╔═╡ cb55fa50-f890-11ea-1f41-0faa5a764f50
sum(numbers)

# ╔═╡ d496e7a0-f890-11ea-2f27-017e9495c6bf
md"An operation like this that **combines a sequence of elements into a single value** is somtimes called a **_reduce_** operation."

# ╔═╡ ffc71e42-f890-11ea-310b-795e5714519e
md"## Exercises

### 1 - Maximum
Create a function called **max(a)** that returns the maximum element in an array of integers."

# ╔═╡ b350c4b0-f892-11ea-129a-430483ddb437
function max(a)
end

# ╔═╡ 37841502-f895-11ea-1e2c-b141acb7f6cc


# ╔═╡ ee48bf00-f892-11ea-2e82-3b58b2310328
md"### 2 - Mean
Create a function called **mean(a)** that returns the average of the elements in an array of integers."

# ╔═╡ 09b24360-f893-11ea-0598-a1fcac07b732
function mean(a)
end

# ╔═╡ 38cb6210-f895-11ea-189d-bfdacba6c281


# ╔═╡ 3369bcb0-f893-11ea-139d-2be448c4b3ae
md"### 3 - Divisors
Create a function called **divisors(n)** that returns an **array** of integers containing the divisors of the integer **n**."

# ╔═╡ 16e20c30-f895-11ea-00d0-5f1dc6f31347
function divisors(n)
end

# ╔═╡ 3a2e9b90-f895-11ea-0a7c-1367ed90c964


# ╔═╡ d32691f2-f894-11ea-0fd5-138f3cd847d9
md"### 4 - Is Prime?
Create a function called **isPrime(n)** that determines whether the integer **n** is a **prime number**.  If so, it should return **_true_**, otherwise it should return **_false_**. You should use the function **divisors(n)** that you created in _Exercise 3_ to solve this problem. **Note:** A number **n** is *prime* if it only has two divisors; 1 and **n**."

# ╔═╡ 1e0103e0-f895-11ea-323e-4fbc10f96474
function isPrime(n)
end

# ╔═╡ 3ba4c0d0-f895-11ea-2b6f-cb0a5b718c4d


# ╔═╡ 681ca490-f893-11ea-1cc2-3963e914770c
md"### 5 - Is Perfect?
Create a function called **isPerfect(n)** that determines whether the integer **n** is a **perfect number**.  If so, it should return **_true_**, otherwise it should return **_false_**. You should use the function **divisors(n)** that you created in _Exercise 3_ to solve this problem. **Note:** The divisors of a perfect number _(except for the number itself)_ add up to the number. For example: 6 has divisors 1, 2, 3, 6 and 1 + 2 + 3 = 6. So, 6 is a perfect number."

# ╔═╡ 312ed5f2-f895-11ea-1817-15b0845aaa4d
function isPerfect(n)
end

# ╔═╡ 3cff95e0-f895-11ea-3cab-211996064b25


# ╔═╡ Cell order:
# ╟─7d668ff2-f87f-11ea-34e1-3f0f93d64c67
# ╠═a8ad0650-f882-11ea-0738-0b2624a74202
# ╟─7500b1a0-f885-11ea-0a39-050fe4f715c1
# ╠═f6aba962-f887-11ea-285d-4fe14d150a85
# ╟─0fa6ece0-f888-11ea-1cca-6dcf57f47367
# ╠═cfea7030-f888-11ea-110b-2b45693cd089
# ╠═00b9dc50-f889-11ea-1582-83ddc12a4f67
# ╟─1a41cf70-f889-11ea-3ad3-ade5de43604a
# ╠═fa9e23d0-f888-11ea-1052-2747ea4415c9
# ╠═11e32bd0-f889-11ea-3f28-7d89f50f5370
# ╟─4cc6dad0-f889-11ea-0167-bfcd07670f7c
# ╠═ad20aff0-f889-11ea-12da-055d2fa76ca9
# ╟─09807410-f88a-11ea-3535-6fe38b5921a8
# ╠═3036e262-f88a-11ea-0bc0-357ee982cb90
# ╟─6ad264d0-f88a-11ea-364b-1bc0c9d6f7aa
# ╠═8010c760-f88a-11ea-0833-5f817b2647c9
# ╟─fcad69e0-f88a-11ea-1517-cbb1cc236843
# ╠═10c48a80-f88b-11ea-3e87-b9bb80539436
# ╟─9367afce-f88b-11ea-0389-e358edeb2d11
# ╠═fd387660-f88b-11ea-070f-51d9c28cb933
# ╟─2c7b9d30-f88c-11ea-1ece-59bd7ce0feed
# ╠═91538060-f88c-11ea-23a8-673a689dff8c
# ╟─8364cd00-f88d-11ea-22e2-53129fe59abc
# ╠═d87e8970-f88d-11ea-13d1-5ffc710a0d8d
# ╠═4121f390-f88e-11ea-04f5-99d4fda76ac3
# ╟─5236f7c0-f88e-11ea-1193-0b4bb037f7cc
# ╠═342eb730-f88f-11ea-2cda-eb4946abee79
# ╠═a8efe53e-f88e-11ea-3110-d9132ebf63b6
# ╟─6932f360-f88f-11ea-0977-b374dfa412b4
# ╠═084bd260-f88f-11ea-0821-7d64cb99f987
# ╟─4544e1f0-f891-11ea-104c-37605f693df0
# ╟─3168eb00-f890-11ea-13e2-c58489498df0
# ╠═40ee2770-f890-11ea-1e66-cb81906fd854
# ╟─6b12ba70-f890-11ea-184c-f91780bbf7a4
# ╠═5ff78ee0-f890-11ea-0b43-653ce85b9573
# ╟─a81eeec0-f890-11ea-298d-05ab2a2c099d
# ╠═cb55fa50-f890-11ea-1f41-0faa5a764f50
# ╟─d496e7a0-f890-11ea-2f27-017e9495c6bf
# ╟─ffc71e42-f890-11ea-310b-795e5714519e
# ╠═b350c4b0-f892-11ea-129a-430483ddb437
# ╠═37841502-f895-11ea-1e2c-b141acb7f6cc
# ╟─ee48bf00-f892-11ea-2e82-3b58b2310328
# ╠═09b24360-f893-11ea-0598-a1fcac07b732
# ╠═38cb6210-f895-11ea-189d-bfdacba6c281
# ╟─3369bcb0-f893-11ea-139d-2be448c4b3ae
# ╠═16e20c30-f895-11ea-00d0-5f1dc6f31347
# ╠═3a2e9b90-f895-11ea-0a7c-1367ed90c964
# ╟─d32691f2-f894-11ea-0fd5-138f3cd847d9
# ╠═1e0103e0-f895-11ea-323e-4fbc10f96474
# ╠═3ba4c0d0-f895-11ea-2b6f-cb0a5b718c4d
# ╟─681ca490-f893-11ea-1cc2-3963e914770c
# ╠═312ed5f2-f895-11ea-1817-15b0845aaa4d
# ╠═3cff95e0-f895-11ea-3cab-211996064b25
