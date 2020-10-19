### A Pluto.jl notebook ###
# v0.11.14

using Markdown
using InteractiveUtils

# ╔═╡ 26eb6e00-ff3e-11ea-2c0c-438447f7d4c8
md"# Algorithms - Searching

## Linear Search

A linear search is an algorithm that we can use to find an value in an array.  The algorithm begin by looking at the first element in the array, and then moves to the next element and the next element, in sequence, until it finds the value or reaches the end of the array.

The main advantage of the linear search include:  1.  It is a simple algorithm; 2. It does not require the array to be sorted in any order.  The main disadvantage is that if you have many elements in an array, it is a slow algorithm.  In the worst case, if the element is at the end of the array, every element must be looked at.  On average, half the element must be looked at to find the value being searched for, if it exists in the array."

# ╔═╡ 32bc9130-ff40-11ea-24d2-1563646d8851
function linSearch(n, values)
	index = -1
	
	for i in 1:length(values)
		
		if values[i] == n
			index = i
			break
		end
		
	end
	
	return index
end

# ╔═╡ 36a3e3e0-ff48-11ea-1f95-f38766d42b4f
begin
	a = [-4, 3, -2, 18, 5, 25, 0, 7, 4]
	linSearch(4, a)
end

# ╔═╡ b60c6282-ff46-11ea-0b46-6bba8c590070
md"## Binary Search

A binary search is also an algorithm that we can use to find an value in an array.  However, it goes about the process in a very different way compared with a linear search.  First of all, the array must be sorted - this will be used to our advantage.  When looking for a value, we can first look at the middle element.  If the middle element is lower than the value being searched for, we know we only need to look at the second half of the array in the next step.  If the middle element is higher than the value being searched for, we only need to look in the first half of the array in the next step.  So, with each step, we reduce to number of elements to be searched by half.  In each step, we look at the middle element of the portion of the array we are searching, and divide the array in half depending on whether the middle element is higher or lower than the value being searched for.  This search algorithm is the best way of playing the guessing game that you may have created in 11 Computer Science.  The main advantage of this algorithm is its speed.  For example, to find a value in an array of 100 elements only requires 7 steps, since 2^7= 128, and our array is smaller than this power of 2.  Its main disadvantages is 1. The array must first be sorted; 2. The algorithm is more complex than the linear search.

Here is a visual description of how the algorithm works:

For example, let's say we are looking for the value 25.  Here is visually how the algorithm would work.

| 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 |
|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:---:|
| -4 | -2 | 0 | 3 | **4** | 5 | 7 | 18 | 25 |
| ```-4``` | ```-2``` | ```0``` | ```3``` | ```4``` | 5 | **7** | 18 | 25 |
| ```-4``` | ```-2``` | ```0``` | ```3``` | ```4``` | ```5``` | ```7``` | **18** | 25 |
| ```-4``` | ```-2``` | ```0``` | ```3``` | ```4``` | ```5``` | ```7``` | ```18``` | **25** |
"

# ╔═╡ a0913db0-ff49-11ea-1ee8-a33c69a435f0
md"#### The While-Loop
In order to perform a binary search, will will need to introduce the while-loop in Julia.  Here is an example,"

# ╔═╡ 8c2dee50-ff48-11ea-2f31-9b14d8125e34
function whileExample()
	steps = 0
	total = 0
	while steps < 10
		total += steps
		steps += 1
	end
	total
end

# ╔═╡ 00337810-ff49-11ea-218b-6dd437d28342
md"Notice that the loop is based on the given condition ```steps < 10```.  As long as the condition is **true** the loop continues to run."

# ╔═╡ f1e8694e-ff48-11ea-3355-87f228a3db2d
whileExample()

# ╔═╡ 8cdb28d0-ff49-11ea-3ba3-f784bd027ca0
md"#### The Built-in Sort Function
In order to perform a binary search, our array must be sorted."

# ╔═╡ 2a4b0832-ff48-11ea-0974-855bed7a3fb5
function binSearch(n, values)
	min = 1
	max = length(values)
	index = -1
	while min <= max           # Loop Begins
		mid = (min + max) ÷ 2  # Find the middle index
		if values[mid] == n
			index = mid
			break
		elseif values[mid] < n
			min = mid + 1      # Moves the minimum index to middle+1
		else
			max = mid - 1
		end
	end                        # Loop Ends
	index
end

# ╔═╡ 6e46fbd0-0343-11eb-30b2-7de24fcfa784
b = rand( 1:1000, 500 )

# ╔═╡ e471ce30-0351-11eb-2a13-bde6786097ca
c = sort(b)

# ╔═╡ 350e9dde-ff48-11ea-2404-c5f3dd2abe5f
binSearch(12,c)

# ╔═╡ 1a7ca4f0-0352-11eb-3080-354183b949cb
linSearch(12,c)

# ╔═╡ Cell order:
# ╟─26eb6e00-ff3e-11ea-2c0c-438447f7d4c8
# ╠═32bc9130-ff40-11ea-24d2-1563646d8851
# ╠═36a3e3e0-ff48-11ea-1f95-f38766d42b4f
# ╟─b60c6282-ff46-11ea-0b46-6bba8c590070
# ╟─a0913db0-ff49-11ea-1ee8-a33c69a435f0
# ╠═8c2dee50-ff48-11ea-2f31-9b14d8125e34
# ╟─00337810-ff49-11ea-218b-6dd437d28342
# ╠═f1e8694e-ff48-11ea-3355-87f228a3db2d
# ╟─8cdb28d0-ff49-11ea-3ba3-f784bd027ca0
# ╠═2a4b0832-ff48-11ea-0974-855bed7a3fb5
# ╠═6e46fbd0-0343-11eb-30b2-7de24fcfa784
# ╠═e471ce30-0351-11eb-2a13-bde6786097ca
# ╠═350e9dde-ff48-11ea-2404-c5f3dd2abe5f
# ╠═1a7ca4f0-0352-11eb-3080-354183b949cb
