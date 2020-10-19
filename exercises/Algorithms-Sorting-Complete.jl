### A Pluto.jl notebook ###
# v0.11.14

using Markdown
using InteractiveUtils

# ╔═╡ 46fc3da0-024f-11eb-34b7-5f7247e3426b
md"# Algorithms - Sorting - Complete

In this course we need to investigate different types of algorithms that are commonly used to manipulate data.  One topic that is quite relevant is how to efficiently sort a large amount of data, to make it easier to work with.  Read following examples of sorting algorithms and watch the accompanying video:

## Selection Sort

The selection sort is a sorting algorithm where each item in a list is examined to find the item that should be first. For an array of numbers this would be the smallest. For strings, it would be the alphabetically least. When the smallest item is found it is moved to the beginning of the list. Then the array from the 2nd entry to the last is examined to select the smallest (least) item, which is then moved to the second position. This continues until the second last entry is reached."

# ╔═╡ 0c5d6b70-1027-11eb-1234-1b6a1a52af37
md"### Mutating Function"

# ╔═╡ 8f265ca0-024f-11eb-1f2e-392fd328b9b0
function selSort!(a)
	for start in 1:length(a)-1  	# increase start by 1 and repeat
		minIndex = start			# Search through the array for the minimum value
		for i in start:length(a)
			if a[i] < a[minIndex]  	# Find the index of the minimum value
				minIndex = i
			end
		end
		# Swap the minimum value with element in start position
		s = a[start]
		a[start] = a[minIndex]
		a[minIndex] = s
	end
	a
end

# ╔═╡ 133ac642-1027-11eb-2eba-c5f2a2e2b571
md"### Non-Mutating Function"

# ╔═╡ 3e7bfec0-1025-11eb-2ede-51e2db1c8ff6
function selSort(a)
	b = copy(a)
	for start in 1:length(b)-1  	# increase start by 1 and repeat
		minIndex = start			# Search through the array for the minimum value
		for i in start:length(b)
			if b[i] < b[minIndex]  	# Find the index of the minimum value
				minIndex = i
			end
		end
		# Swap the minimum value with element in start position
		s = b[start]
		b[start] = b[minIndex]
		b[minIndex] = s
	end
	b
end

# ╔═╡ eba122d0-024f-11eb-38cc-1f66a2539772
begin
	d = [10, -5, 4, 18, -7, 3, 0, 15, 2]
	selSort(d)
	#selSort!(d)
end

# ╔═╡ 04078c50-1025-11eb-2264-8f70f5cfa5e8
d

# ╔═╡ 6f7b0fe2-024f-11eb-3661-d5bd1cbc116f
md"# Bubble Sort

The bubble sort works by swapping adjacent pairs in an array until all adjacent pairs are in order, at which time the entire array is sorted. It does this by making repeated passes through the array. The first pass compares element 1 and 2 and swaps them if they are out of order, then compares element 2 to element 3 and swaps them if they are out of order, and so on. Each pass moves from left to right across the array, comparing the two elements in each pair and swapping the elements if they are out of order."

# ╔═╡ fe651090-1026-11eb-3ee0-5157b64569bd
md"### Mutating Function"

# ╔═╡ 822a6320-024f-11eb-16bf-fd47a5b5453e
function bubSort!(a)
	# Start at element 1 of the array
	for j in 1:length(a)-1
		for i in 1:length(a)-j  # Move one step down the array
			if a[i] > a[i+1]	# Compare adjacent elements - swap if necessary
				s = a[i]
				a[i] = a[i+1]
				a[i+1] = s
			end
		end
	end
	a
end

# ╔═╡ f2a98650-1026-11eb-37ab-0b43c7931d18
md"### Non-Mutating Function"

# ╔═╡ 3239e9f0-1026-11eb-3ccd-839b667bfd3d
function bubSort(a)
	b = copy(a)
	# Start at element 1 of the array
	for j in 1:length(b)-1
		for i in 1:length(b)-j  # Move one step down the array
			if b[i] > b[i+1]	# Compare adjacent elements - swap if necessary
				s = b[i]
				b[i] = b[i+1]
				b[i+1] = s
			end
		end
	end
	b
end

# ╔═╡ ed3138b0-024f-11eb-0a5b-b92652d7f79b
begin
	e = [10, -5, 4, 18, -7, 3, 0, 15, 2]
	#bubSort!(e)
	bubSort(e)
end

# ╔═╡ 2e2461b0-1026-11eb-3886-31c1a40f5813
e

# ╔═╡ Cell order:
# ╟─46fc3da0-024f-11eb-34b7-5f7247e3426b
# ╟─0c5d6b70-1027-11eb-1234-1b6a1a52af37
# ╠═8f265ca0-024f-11eb-1f2e-392fd328b9b0
# ╟─133ac642-1027-11eb-2eba-c5f2a2e2b571
# ╠═3e7bfec0-1025-11eb-2ede-51e2db1c8ff6
# ╠═eba122d0-024f-11eb-38cc-1f66a2539772
# ╠═04078c50-1025-11eb-2264-8f70f5cfa5e8
# ╟─6f7b0fe2-024f-11eb-3661-d5bd1cbc116f
# ╟─fe651090-1026-11eb-3ee0-5157b64569bd
# ╠═822a6320-024f-11eb-16bf-fd47a5b5453e
# ╟─f2a98650-1026-11eb-37ab-0b43c7931d18
# ╠═3239e9f0-1026-11eb-3ccd-839b667bfd3d
# ╠═ed3138b0-024f-11eb-0a5b-b92652d7f79b
# ╠═2e2461b0-1026-11eb-3886-31c1a40f5813
