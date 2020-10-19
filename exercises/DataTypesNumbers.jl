### A Pluto.jl notebook ###
# v0.11.14

using Markdown
using InteractiveUtils

# ╔═╡ cecfff50-f5f2-11ea-3871-11060b438b28
md"# Mathematics in Julia

## Types of Numbers

We're going to look at three types of numbers that we many encounter this year using Julia:  integer, floating-point, and rational values.  Notice below that we can use the **_typeof()_** function to indicate the data type of the given values."

# ╔═╡ 3f0c92d0-f5f6-11ea-09ea-91f05bd5fd7f
typeof(5)

# ╔═╡ 441ccec0-f5f6-11ea-3f2f-2f8d72c3d743
typeof(3.0)

# ╔═╡ 4c336ce2-f5f6-11ea-3062-6fe335de22c6
typeof( 1 // 2 )

# ╔═╡ 24a04840-f5f8-11ea-2228-7f25e980ad97
md"### Operations

Look at how the results of addition and subtraction operations compare when using different types of numbers."

# ╔═╡ 2cbbc860-f5f8-11ea-0d70-d51f411244cb
7 - 10

# ╔═╡ 35111d30-f5f8-11ea-0db3-5526fa49e5aa
5.0 + 1.3

# ╔═╡ 3bd08fc0-f5f8-11ea-3d7d-77dbe38635d0
1 // 2 + 2 // 3

# ╔═╡ 9ddaa7c0-f60a-11ea-05ae-6f4a95f40276
6.5 - 4

# ╔═╡ 23d6bc10-f60b-11ea-01a0-11fd1cf15b6d
5 / 3

# ╔═╡ 613e2fc0-f60b-11ea-18a4-87e68ef03761
md"##### Integer Division
Sometimes you only want to calculate the integer part of a division operation.  You accomplish this by using the integer division operator $$\div$$."

# ╔═╡ 54a93572-f60b-11ea-28ae-f352464456f8
5 ÷ 3

# ╔═╡ c21969e0-f60b-11ea-33c0-07930d6a77b8
md"Obtained by typing 5 \div TAB 3"

# ╔═╡ 2b137f80-f60c-11ea-1ee8-1f5ec9e3bb30
md"##### Modulus _(Remainder)_
The modulus or remainder operator calculates the remainder of a division operation.  So, **a % b** calculates the remainder of $$a \div b$$."

# ╔═╡ 3be1b6ae-f60c-11ea-2a4b-9f8d39a6b6d7
5 % 3

# ╔═╡ cbdf3410-f60a-11ea-04c3-930698164378
md"To learn more about mathematics using Julia, see [Mathematical Operations and Elementary Functions](https://docs.julialang.org/en/v1/manual/mathematical-operations/)."

# ╔═╡ 57d498b0-f5f3-11ea-33d1-1971978d8a19
md"## Exercises"

# ╔═╡ 055d7390-f5f3-11ea-2477-7d715330af7f
md"1\. How many seconds are there in 13 minutes and 13 seconds?"

# ╔═╡ 0704baf0-f5f3-11ea-0221-294aed39c8b9
time_minutes = time_seconds = 13

# ╔═╡ 88aac220-f620-11ea-249f-c91a536a8d99


# ╔═╡ 12d776b0-f5f3-11ea-0ea6-dbf86e7b014f
md"2\. How many miles are in 10 kilometers? _(1 mile is 1.61 kilometers)_"

# ╔═╡ 1753d710-f5f3-11ea-07a7-59b87228473c
kilometers = 10

# ╔═╡ d3a11090-f60c-11ea-0b9c-9988afec0a92


# ╔═╡ 19496580-f5f3-11ea-0aea-cd35b54b6e25
md"3\. How many minutes and seconds are there in 1423 seconds?"

# ╔═╡ 1e86f300-f5f3-11ea-12e2-c3b381af7c82
seconds = 1423

# ╔═╡ 543f2800-f616-11ea-0513-6ff4aca76ac1


# ╔═╡ 2cf03950-f60d-11ea-3dac-4f1e0bf43b4e
md"4\. If you run 10 kilometers in 33 minutes and 14 seconds,

		a. What is your average time per mile in minutes and seconds?
		b. What is your average speed in miles per hour?
"

# ╔═╡ 9425bb90-f60d-11ea-3fa0-27a4a4f92d0f
begin
	run_distance = 10
	run_minutes = 33
	run_seconds = 14
end

# ╔═╡ 8386d722-f620-11ea-1aa6-bf01a0d36b1b


# ╔═╡ 303caebe-f619-11ea-21c2-a59a8fbe3a09
radius = 5

# ╔═╡ 877a6e90-f617-11ea-3acf-4188780886dc
md"5\. The **volume** of a **sphere** with a radius **r** is $$\frac{4}{3} \pi r^3$$.  What is the **volume** of a **sphere** with a radius of $radius ?"

# ╔═╡ 9edbbee0-f61c-11ea-17e6-a3eda3b8e40b


# ╔═╡ e43fe010-f61c-11ea-2f0a-51be5a2f7ebf
a = 5

# ╔═╡ f7faafde-f61c-11ea-1d66-37e82614d640
b = 9

# ╔═╡ a7f8ba60-f625-11ea-08a0-d5ebb3d2a9ef
md"6\.  Given a right angled triangle with side lengths **a = $a** and **b = $b**, calculate the _hypotenuse_ **c**"

# ╔═╡ 01bb0660-f61d-11ea-30c7-83f838764eb6


# ╔═╡ 83341480-f626-11ea-2e07-d77059c228c4
md"## Markdown

If you want to see how to add **Markdown** to your notebooks, check out the [Markdown Guide](https://www.markdownguide.org/basic-syntax/)"

# ╔═╡ Cell order:
# ╟─cecfff50-f5f2-11ea-3871-11060b438b28
# ╠═3f0c92d0-f5f6-11ea-09ea-91f05bd5fd7f
# ╠═441ccec0-f5f6-11ea-3f2f-2f8d72c3d743
# ╠═4c336ce2-f5f6-11ea-3062-6fe335de22c6
# ╟─24a04840-f5f8-11ea-2228-7f25e980ad97
# ╠═2cbbc860-f5f8-11ea-0d70-d51f411244cb
# ╠═35111d30-f5f8-11ea-0db3-5526fa49e5aa
# ╠═3bd08fc0-f5f8-11ea-3d7d-77dbe38635d0
# ╠═9ddaa7c0-f60a-11ea-05ae-6f4a95f40276
# ╠═23d6bc10-f60b-11ea-01a0-11fd1cf15b6d
# ╟─613e2fc0-f60b-11ea-18a4-87e68ef03761
# ╠═54a93572-f60b-11ea-28ae-f352464456f8
# ╟─c21969e0-f60b-11ea-33c0-07930d6a77b8
# ╟─2b137f80-f60c-11ea-1ee8-1f5ec9e3bb30
# ╠═3be1b6ae-f60c-11ea-2a4b-9f8d39a6b6d7
# ╟─cbdf3410-f60a-11ea-04c3-930698164378
# ╟─57d498b0-f5f3-11ea-33d1-1971978d8a19
# ╟─055d7390-f5f3-11ea-2477-7d715330af7f
# ╠═0704baf0-f5f3-11ea-0221-294aed39c8b9
# ╠═88aac220-f620-11ea-249f-c91a536a8d99
# ╠═12d776b0-f5f3-11ea-0ea6-dbf86e7b014f
# ╠═1753d710-f5f3-11ea-07a7-59b87228473c
# ╠═d3a11090-f60c-11ea-0b9c-9988afec0a92
# ╟─19496580-f5f3-11ea-0aea-cd35b54b6e25
# ╠═1e86f300-f5f3-11ea-12e2-c3b381af7c82
# ╠═543f2800-f616-11ea-0513-6ff4aca76ac1
# ╟─2cf03950-f60d-11ea-3dac-4f1e0bf43b4e
# ╠═9425bb90-f60d-11ea-3fa0-27a4a4f92d0f
# ╠═8386d722-f620-11ea-1aa6-bf01a0d36b1b
# ╟─877a6e90-f617-11ea-3acf-4188780886dc
# ╠═303caebe-f619-11ea-21c2-a59a8fbe3a09
# ╠═9edbbee0-f61c-11ea-17e6-a3eda3b8e40b
# ╠═a7f8ba60-f625-11ea-08a0-d5ebb3d2a9ef
# ╠═e43fe010-f61c-11ea-2f0a-51be5a2f7ebf
# ╠═f7faafde-f61c-11ea-1d66-37e82614d640
# ╠═01bb0660-f61d-11ea-30c7-83f838764eb6
# ╟─83341480-f626-11ea-2e07-d77059c228c4
