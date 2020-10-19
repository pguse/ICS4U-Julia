### A Pluto.jl notebook ###
# v0.11.14

using Markdown
using InteractiveUtils

# ╔═╡ 46fc3da0-024f-11eb-34b7-5f7247e3426b
md"# Algorithms - Sorting

In this course we need to investigate different types of algorithms that are commonly used to manipulate data.  One topic that is quite relevant is how to efficiently sort a large amount of data, to make it easier to work with.  Read following examples of sorting algorithms and watch the accompanying video:

## Selection Sort

The selection sort is a sorting algorithm where each item in a list is examined to find the item that should be first. For an array of numbers this would be the smallest. For strings, it would be the alphabetically least. When the smallest item is found it is moved to the beginning of the list. Then the array from the 2nd entry to the last is examined to select the smallest (least) item, which is then moved to the second position. This continues until the second last entry is reached."

# ╔═╡ 8f265ca0-024f-11eb-1f2e-392fd328b9b0
function selSort(a)
	a
end

# ╔═╡ eba122d0-024f-11eb-38cc-1f66a2539772
begin
	d = [10, -5, 4, 18, -7, 3, 0, 15, 2]
	selSort(d)
end

# ╔═╡ 6f7b0fe2-024f-11eb-3661-d5bd1cbc116f
md"# Bubble Sort

The bubble sort works by swapping adjacent pairs in an array until all adjacent pairs are in order, at which time the entire array is sorted. It does this by making repeated passes through the array. The first pass compares element 1 and 2 and swaps them if they are out of order, then compares element 2 to element 3 and swaps them if they are out of order, and so on. Each pass moves from left to right across the array, comparing the two elements in each pair and swapping the elements if they are out of order."

# ╔═╡ 822a6320-024f-11eb-16bf-fd47a5b5453e
function bubSort(a)
	a
end

# ╔═╡ ed3138b0-024f-11eb-0a5b-b92652d7f79b
begin
	e = [10, -5, 4, 18, -7, 3, 0, 15, 2]
	bubSort(e)
end

# ╔═╡ Cell order:
# ╟─46fc3da0-024f-11eb-34b7-5f7247e3426b
# ╠═8f265ca0-024f-11eb-1f2e-392fd328b9b0
# ╠═eba122d0-024f-11eb-38cc-1f66a2539772
# ╟─6f7b0fe2-024f-11eb-3661-d5bd1cbc116f
# ╠═822a6320-024f-11eb-16bf-fd47a5b5453e
# ╠═ed3138b0-024f-11eb-0a5b-b92652d7f79b
