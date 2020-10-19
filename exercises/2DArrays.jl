### A Pluto.jl notebook ###
# v0.12.4

using Markdown
using InteractiveUtils

# ╔═╡ e91e82c0-0685-11eb-2c39-17d23d0117c9
md"# 2-Dimensional Arrays

A **1 dimensional array** is a **linear** representation of elements.  It represents a type of list that can be accessed by subsequent memory locations.  A 1D array in **Julia** is known as a **vector**. For example:"

# ╔═╡ 2b24b240-068e-11eb-34e0-dd5c05c06eb7
v = [4, 5, -3, 0, 7]

# ╔═╡ 6efe62de-068e-11eb-1b26-c3fb195b9eee
md"where each element of the array can be accessed by an ordered **index** starting from 1.  For example:"

# ╔═╡ 5fcdd620-068e-11eb-2248-e9d9758fa90f
v[3]

# ╔═╡ f6602c40-068f-11eb-2708-b71e7c8c9f51
md"A **2 dimensional array** is a representation of items in the form of **rows** and **columns**.  This is called a **tabular** representation of data.  A 2D array in **Julia** is known as a **matrix**.  Elements in a matrix are accessed by using a **row** and **column** index. A 2D array can be created by removing the commas between elements of a vector at the time of array creation, and using a semicolon to separate the rows."

# ╔═╡ a9398af0-0690-11eb-250e-c7b9575b900a
m = [1 2; 3 4]

# ╔═╡ 280417b0-0696-11eb-1b4e-f36d5c16f9e1
md"You can also create a **matrix** by writing the **rows** on **separate lines** as follows:"

# ╔═╡ 4ab7c270-0696-11eb-2b3d-0defdae3e6bc
n = [ 1 2 3
	  4 5 6
	  7 8 9]

# ╔═╡ bcd2fdd0-0695-11eb-152e-2d5b98d80197
md"## Accessing an Element
An element in a **matrix** is accessed by using the **row** and **column** values as follows:"

# ╔═╡ 209bfe80-0695-11eb-170c-fdb8a72fab35
m[2,1]

# ╔═╡ c3ab6f40-0698-11eb-17f7-1548955e6cac
md"## Using Functions to Generate a Matrix
### **rand()**
You can create a **matrix** of any size using the function **rand()**, by specifying a range of values, the number of rows, and the number of columns."

# ╔═╡ 3fcedf90-0698-11eb-10f3-11f316ae159b
p = rand( 1:20, 3, 4)

# ╔═╡ 2710c4c0-069b-11eb-2e4b-6fe215b5ce92
md"### ones()
This function generates a 2 dimensional array filled with 1.0's with a specified number of rows and columns."

# ╔═╡ 2d0d0e60-069b-11eb-303c-1f65ba22b692
ones(5, 4)

# ╔═╡ 4726ba30-069b-11eb-073c-e7f202e1d76b
md"### zeros()
This function generates a 2 dimensional array filled with 0's with a specified number of rows and columns."

# ╔═╡ 3f497b90-069b-11eb-1d4d-b3c45f4d8928
zeros(2,4)

# ╔═╡ 6cdd3a1e-069a-11eb-3dab-3b53350ebf1f
md"## Using a For Loop
A for-loop can be used to scan through the rows and columns of a 2 dimensional array."

# ╔═╡ 7744cd20-069a-11eb-2ad6-d50dc7aaea8f
function total(a)
	s = 0
	for i in 1:3
		for j in 1:4
			s += a[i,j]
		end
	end
	s
end

# ╔═╡ fdf86610-06a4-11eb-2187-5b8193d91587
md"This function finds the **total sum** of the elements in the matrix."

# ╔═╡ e5019af0-069a-11eb-1515-b3c1b14c9a10
total(p)

# ╔═╡ f4f9c900-0690-11eb-2b63-5b85bbdb3695
md"## Slices
A slice of any array can be accessed using the following notation"

# ╔═╡ a7f7c5b0-069c-11eb-3fb5-c1880d173557
begin
	w = [8, -4, 1, 0, -2, 10, 5]
	w[2:5]
end

# ╔═╡ 2c4edc90-069d-11eb-10c5-3b00c7389542
md"This notation can also be used to access any number of rows or columns of a matrix."

# ╔═╡ d2354270-069d-11eb-161b-05b2630501e1
magic = [ 2 7 6
	      9 5 1
	      4 3 8]

# ╔═╡ c7d11560-069e-11eb-033c-974af13e7ca1
md"For example, the first two columns of the matrix **magic** can be accessed using the following notation."

# ╔═╡ 17628912-0686-11eb-1a98-eb02f888e994
magic[:,1:2]

# ╔═╡ f115f6c0-069e-11eb-16fc-158f6e9841a0
md"A **single row** can be accessed as follows:"

# ╔═╡ 284c7c40-069f-11eb-0ac1-f948a4931633
magic[3,:]

# ╔═╡ 60514e40-069f-11eb-3bd8-89e07cfd8d33
md"Sometimes, we want to analyze a single row or column of a matrix. For example, we can find the **sum** of the **first column** of the **magic** matrix using the following notation."

# ╔═╡ 2dee7a40-0686-11eb-245a-0964ca8a38ba
sum(magic[:,1])

# ╔═╡ a00faa40-069f-11eb-263e-b9505b2d0379
md"We can find the **sum** of a matrix just like we find the **sum** of a vector.  Hence, our previous **total()** function is unnecessary."

# ╔═╡ 47e8de42-0686-11eb-16e0-dbcf25bb88f1
sum(magic)

# ╔═╡ 62b8bbde-06a0-11eb-0c06-a94b7a80908e
md"### The **size()** function
The **size()** function determines the size of a matrix.  It can be used in two ways.  The use below returns a **tuple** containing the number of **rows** and **columns**.  We'll discuss **tuples** later."

# ╔═╡ 709fb1a0-06a0-11eb-228a-196d89644ab7
size(p)

# ╔═╡ b5419440-06a0-11eb-27a2-9574775069e6
md"You can also determine the number of rows _(dimension 1)_ and columns _(dimension 2)_ separately."

# ╔═╡ b1b6bfd0-06a0-11eb-226d-3915592ddac0
size(p, 1)

# ╔═╡ 0290d6c0-06a1-11eb-2a22-ad0e226cc938
size(p, 2)

# ╔═╡ d93d44d0-069f-11eb-25da-8fb272c62704
md"## Exercises"

# ╔═╡ 7ef3cba0-06a1-11eb-0c8e-7f9d948f642a
md"## 1 - Random Matrix

Create a function called **randomMatrix(n)** that creates a 2-dimensional array (matrix), with **n** rows and **n** columns, made up of 0's and 1's chosen randomly.  The function should return the array that gets created."

# ╔═╡ fcfb84f0-06a3-11eb-237d-a5878dbd131a
function randomMatrix(n)
	rand(0:1, n, n)
end

# ╔═╡ 048faca0-06a4-11eb-1293-438b8b11cdf4
randomMatrix(6)

# ╔═╡ 29188200-06a3-11eb-312a-93ecf856b419
md"## 2 - Find

Create a function called **find(m, x)** that searches for a value **x** in a matrix _(2-dimensional array)_ **m**.  It should return the position (row, col) if it finds it, otherwise it returns (-1,-1).  **Note:** The returned pair is called a **tuple**."

# ╔═╡ 06044b42-06a4-11eb-23d8-4b2655edf254
function find(m, x)
	
	position = (-1,-1)
	
	for col in 1:size(m,2)
		for row in 1:size(m,1)
			if m[row,col] == x
				position = (row,col)
				break
			end
		end
	end	
		
	position
end

# ╔═╡ 0b33a7f0-06a4-11eb-35f9-61cc2127ef85
find(magic, 1)

# ╔═╡ fe120930-08c0-11eb-1e64-c7476d9efff4
magic2 = [ 2 7 6 11
	       9 5 1 12
	       4 3 8 13]

# ╔═╡ caadcb52-06a5-11eb-1ef1-cd3b33f5aa84
md"## 3 - Maximum

Create a function called **max(m)** that returns the maximum value in a matrix _(2-dimensional array)_ **m**."

# ╔═╡ fcea0de0-06a5-11eb-11b7-75249154a840
function max(m)
	max = m[1,1]
	# Row 1
	for row in 1:size(m,1)
		for col in 1:size(m,2)
			if m[row,col] > max
				max = m[row,col]
			end
		end
	end
	max
end

# ╔═╡ d07d5c70-06a1-11eb-114b-a1cd1e240cf3
md"## 4 - Addition

Create a function called **add(m, n)** that adds two matrices *(2d-arrays)* , of the same size, and returns a new 2-dimensional array. **Addition of matrices** produces a new matrix of the same size by adding **elements** from the original matrices with the **same row and column**, and placing the **sum** in the **same position** in the new matrix."

# ╔═╡ 0ca168c0-06a4-11eb-20cf-4d4a4cc53ba0
function add(m, n)
	s = zeros(size(m,1),size(m,2))     # Matrix filled with zeros::Float64
		for row in 1:size(m,1)
			for col in 1:size(m,2)
				s[row,col] = m[row,col] + n[row,col]
			end
		end
	s
end

# ╔═╡ 13001680-0e1f-11eb-23ce-9f8ec556fde8
begin
	a = [1 2
		 4 5]
	b = [3 6
		 7 9]
	add(a,b)
end

# ╔═╡ a104a6ae-06a1-11eb-297f-4b51aa935468
md"## 5 - Scalar

Create a function called **scalar(m, k)** that multiplies every value of a matrix **m** by the value **k** and returns the new 2-dimensional array."

# ╔═╡ 130ceef0-06a4-11eb-11a2-f921105e3dbf
function scalar(m, k)
	for row in 1:size(m,1)
		for col in 1:size(m,2)
			m[row,col] = m[row,col]*k
		end
	end
	return m
end

# ╔═╡ bf7ad560-0e21-11eb-21d8-a3a85b5a71cf
begin
	d = [9 3 5 2 1
		 5 4 1 6 7
		 7 8 2 0 9]
	scalar(d,3)
end

# ╔═╡ 8d3ae2c0-06a1-11eb-17e7-3de43c1063a5
md"## 6 - Sum of Neighbours

Create a function called **sumNeighbours(m, row, col)** that finds the sum of the neighbours of any value in the position _(row,col)_ of the matrix (2-dimensional array).  A neighbour is any value left, right, above, below, or diagonal to the position _(row,col)_.  The function should return the number of neighbours."

# ╔═╡ 1aa07a60-06a4-11eb-1a41-c72a7994ee5c
function sumNeighbours(m, row, col)
	s = 0
	# Row Above
	if row-1 >= 1 && col-1 >=1
		s += m[row-1,col-1]
	end
	s += m[row-1,col]
	if row-1 >=0 && col+1 <= size(m,2)
		s += m[row-1,col+1]
	end
	# Same Row
	s += m[row,col-1]
	if row >= 1 && col+1 <= size(m,2)
		s += m[row,col+1]
	end
	# Row Below
	
	return s
end

# ╔═╡ b9ba6600-0970-11eb-31b8-af21ce4520bf
begin
	myArray = [ 6 9 8 3 5
				1 2 4 9 7
				2 1 5 8 3
				3 4 1 9 7
				2 5 8 1 0]
	sumNeighbours(myArray,2,5)
end

# ╔═╡ Cell order:
# ╟─e91e82c0-0685-11eb-2c39-17d23d0117c9
# ╠═2b24b240-068e-11eb-34e0-dd5c05c06eb7
# ╟─6efe62de-068e-11eb-1b26-c3fb195b9eee
# ╠═5fcdd620-068e-11eb-2248-e9d9758fa90f
# ╟─f6602c40-068f-11eb-2708-b71e7c8c9f51
# ╠═a9398af0-0690-11eb-250e-c7b9575b900a
# ╟─280417b0-0696-11eb-1b4e-f36d5c16f9e1
# ╠═4ab7c270-0696-11eb-2b3d-0defdae3e6bc
# ╟─bcd2fdd0-0695-11eb-152e-2d5b98d80197
# ╠═209bfe80-0695-11eb-170c-fdb8a72fab35
# ╟─c3ab6f40-0698-11eb-17f7-1548955e6cac
# ╠═3fcedf90-0698-11eb-10f3-11f316ae159b
# ╟─2710c4c0-069b-11eb-2e4b-6fe215b5ce92
# ╠═2d0d0e60-069b-11eb-303c-1f65ba22b692
# ╟─4726ba30-069b-11eb-073c-e7f202e1d76b
# ╠═3f497b90-069b-11eb-1d4d-b3c45f4d8928
# ╟─6cdd3a1e-069a-11eb-3dab-3b53350ebf1f
# ╠═7744cd20-069a-11eb-2ad6-d50dc7aaea8f
# ╟─fdf86610-06a4-11eb-2187-5b8193d91587
# ╠═e5019af0-069a-11eb-1515-b3c1b14c9a10
# ╟─f4f9c900-0690-11eb-2b63-5b85bbdb3695
# ╠═a7f7c5b0-069c-11eb-3fb5-c1880d173557
# ╟─2c4edc90-069d-11eb-10c5-3b00c7389542
# ╠═d2354270-069d-11eb-161b-05b2630501e1
# ╟─c7d11560-069e-11eb-033c-974af13e7ca1
# ╠═17628912-0686-11eb-1a98-eb02f888e994
# ╟─f115f6c0-069e-11eb-16fc-158f6e9841a0
# ╠═284c7c40-069f-11eb-0ac1-f948a4931633
# ╟─60514e40-069f-11eb-3bd8-89e07cfd8d33
# ╠═2dee7a40-0686-11eb-245a-0964ca8a38ba
# ╟─a00faa40-069f-11eb-263e-b9505b2d0379
# ╠═47e8de42-0686-11eb-16e0-dbcf25bb88f1
# ╟─62b8bbde-06a0-11eb-0c06-a94b7a80908e
# ╠═709fb1a0-06a0-11eb-228a-196d89644ab7
# ╟─b5419440-06a0-11eb-27a2-9574775069e6
# ╠═b1b6bfd0-06a0-11eb-226d-3915592ddac0
# ╠═0290d6c0-06a1-11eb-2a22-ad0e226cc938
# ╟─d93d44d0-069f-11eb-25da-8fb272c62704
# ╟─7ef3cba0-06a1-11eb-0c8e-7f9d948f642a
# ╠═fcfb84f0-06a3-11eb-237d-a5878dbd131a
# ╠═048faca0-06a4-11eb-1293-438b8b11cdf4
# ╟─29188200-06a3-11eb-312a-93ecf856b419
# ╠═06044b42-06a4-11eb-23d8-4b2655edf254
# ╠═0b33a7f0-06a4-11eb-35f9-61cc2127ef85
# ╠═fe120930-08c0-11eb-1e64-c7476d9efff4
# ╟─caadcb52-06a5-11eb-1ef1-cd3b33f5aa84
# ╠═fcea0de0-06a5-11eb-11b7-75249154a840
# ╟─d07d5c70-06a1-11eb-114b-a1cd1e240cf3
# ╠═0ca168c0-06a4-11eb-20cf-4d4a4cc53ba0
# ╠═13001680-0e1f-11eb-23ce-9f8ec556fde8
# ╟─a104a6ae-06a1-11eb-297f-4b51aa935468
# ╠═130ceef0-06a4-11eb-11a2-f921105e3dbf
# ╠═bf7ad560-0e21-11eb-21d8-a3a85b5a71cf
# ╟─8d3ae2c0-06a1-11eb-17e7-3de43c1063a5
# ╠═1aa07a60-06a4-11eb-1a41-c72a7994ee5c
# ╠═b9ba6600-0970-11eb-31b8-af21ce4520bf
