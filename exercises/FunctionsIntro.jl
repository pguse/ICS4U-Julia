### A Pluto.jl notebook ###
# v0.11.14

using Markdown
using InteractiveUtils

# ╔═╡ 0575fa60-f700-11ea-0185-63b2d5d1d51e
md"# Functions in Julia
In programming, a function is a **named** sequence of statements that performs a computation.  When you define a function, you specify the name and the sequence of statements.  When you **call** the function by name, the sequence of statements runs.

Often a function **takes** an argument and **returns** a result.  The result is called the **return value**."

# ╔═╡ fdadfc00-f700-11ea-230d-87ba456a6880
md" ## An Example"

# ╔═╡ 27a761e0-f765-11ea-277d-251c3eb21209
md"Look at the function below that calculates the area of a circle with a given radius.  How did I get the $$\pi$$ symbol to appear?  Type \pi , press the TAB button on your keyboard, and wait a moment"

# ╔═╡ 1e0523b0-f702-11ea-3700-2d704edb52d1
function area(radius)
	π * radius^2
end

# ╔═╡ 47db2180-f702-11ea-28aa-87a78a3e3180
md"The value returned by a function is the value of the **last expression** evaluated in the body of the function definition."

# ╔═╡ 36cde580-f702-11ea-2ef4-71ffd9432cbe
area(5)

# ╔═╡ 99ec7f80-f77c-11ea-36b5-81c7a84b866d
function test(x)
	sqrt(x)
end

# ╔═╡ abaf01c0-f77c-11ea-2cb5-c5c18b617e27
test(9)

# ╔═╡ 8321b100-f702-11ea-26b2-09087b794762
md"### The return statement
Explicit **return** statements can sometimes make debugging easier and are often useful.  For example:"

# ╔═╡ 9be7b3ae-f702-11ea-3aae-79dcef120d6d
function absvalue(x)
	if x < 0
		return -x
	else
		return x
	end
end

# ╔═╡ 70aa8f4e-f703-11ea-3041-fbca8d664196
absvalue(-3)

# ╔═╡ 9fd684a0-f703-11ea-287c-0b06f86dfaaf
absvalue(3)

# ╔═╡ 32172950-f704-11ea-053a-fd3bb6948da0
md"However, **return** statements are often not necessary.  It is often better form to have only one position where a value is returned.  This can be done by using a temporary variable"

# ╔═╡ 67b77e70-f704-11ea-3b94-094a89216825
function absolute(x)
	if x < 0
		value = -x
	else
		value = x
	end
	value
end

# ╔═╡ 872acb42-f704-11ea-22f2-87b0bf277d0f
absolute(-1 // 3)

# ╔═╡ 91169e90-f704-11ea-1fc6-db3d743ee5b0
absolute( 1 // 3)

# ╔═╡ 16a5c03e-f705-11ea-17b5-c51d2798c445
md"## Exercises

Create the following functions and try an example to verify that they work, at least in certain cases.

### 1: Volume of a Sphere
Write a function called **volume(radius)** that calculates the **volume** of a sphere of a given **radius**.  The equation for the volume of a sphere is $$\frac{4}{3} \pi r^3$$."

# ╔═╡ 56d8ba90-f706-11ea-193b-e7ef97106c67


# ╔═╡ 0a750930-f709-11ea-18b2-e9d17940d902


# ╔═╡ a0ed2650-f767-11ea-2f3c-d3c881ef9ee3
md"### 2: Slope
Write a function called **slope(x1, y1, x2, y2)** that calculates and **returns a value** representing the slope of a line passing through the points (x1,y1) and (x2,y2)."

# ╔═╡ aee755f0-f767-11ea-0a24-df2e84a9e2e7


# ╔═╡ afc9c6b0-f767-11ea-0854-61ea834a9c3b


# ╔═╡ 60a73750-f705-11ea-2f3e-7dade24f41fa
md"### 3: Hypotenuse
Write a function called **hypotenuse(a, b)** that calculates and **returns a float** representing the hypotenuse of a right triangle with sides a and b."

# ╔═╡ 584801fe-f706-11ea-2910-698e9e228933


# ╔═╡ 0bf47d40-f709-11ea-221e-2b1f18b0b87d


# ╔═╡ 6de0fd20-f705-11ea-1c80-796a3f67feca
md"### 4: Distance
Write a function called **distance(x1,y1,x2, y2)** that calculates and **returns a value** representing the distance between the points (x1,y1) and (x2,y2)."

# ╔═╡ 59c245f0-f706-11ea-1a1b-233749be59ca


# ╔═╡ 0dc0b1c0-f709-11ea-0b40-c574c93847c3


# ╔═╡ 797d8db0-f705-11ea-2902-65b9bea2650e
md"### 5: Is Divisible
Write a function called **isDivisible(x, y)** that determines whether a number x is divisible by a number y and **returns a Boolean value** ... either **true or false** ."

# ╔═╡ 0f3e2a00-f709-11ea-388e-614eb1824ee5


# ╔═╡ 15e3d300-f709-11ea-2a71-f5177ed565ea


# ╔═╡ 5b519880-f706-11ea-2556-dde1e28ecf04
md"## Note
We have already introduced three types of number values:  integers, floating-point, and rational values.  Another type of value is called a **Boolean** value.  Boolean values are either **true** or **false**.  Here are some examples of Boolean values:"

# ╔═╡ b816fc3e-f706-11ea-04bb-731e878e768e
helpful = true

# ╔═╡ 15776780-f707-11ea-02ad-1f59890bc0b1
truthful = false

# ╔═╡ 1c50557e-f707-11ea-34b6-c16a8c1485f7
5 < 7

# ╔═╡ 2ce55440-f707-11ea-1e16-9999dd336957
-4 > 0

# ╔═╡ 7d74a68e-f707-11ea-3495-dfdd84f3ee4e
md"### Some examples of Boolean functions"

# ╔═╡ e131a3e0-f707-11ea-0460-f5f8907fe537
function even(x)
	x % 2 == 0
end

# ╔═╡ eb5e02a0-f707-11ea-3c62-3d8cb3e6da41
even(4)

# ╔═╡ a042c1b0-f708-11ea-11d4-69fd33736015
function isPositive(x)
	x > 0
end

# ╔═╡ ac79bd80-f708-11ea-0fee-1b5d77e64911
isPositive(-1 // 3)

# ╔═╡ Cell order:
# ╟─0575fa60-f700-11ea-0185-63b2d5d1d51e
# ╟─fdadfc00-f700-11ea-230d-87ba456a6880
# ╟─27a761e0-f765-11ea-277d-251c3eb21209
# ╠═1e0523b0-f702-11ea-3700-2d704edb52d1
# ╟─47db2180-f702-11ea-28aa-87a78a3e3180
# ╠═36cde580-f702-11ea-2ef4-71ffd9432cbe
# ╠═99ec7f80-f77c-11ea-36b5-81c7a84b866d
# ╠═abaf01c0-f77c-11ea-2cb5-c5c18b617e27
# ╟─8321b100-f702-11ea-26b2-09087b794762
# ╠═9be7b3ae-f702-11ea-3aae-79dcef120d6d
# ╠═70aa8f4e-f703-11ea-3041-fbca8d664196
# ╠═9fd684a0-f703-11ea-287c-0b06f86dfaaf
# ╟─32172950-f704-11ea-053a-fd3bb6948da0
# ╠═67b77e70-f704-11ea-3b94-094a89216825
# ╠═872acb42-f704-11ea-22f2-87b0bf277d0f
# ╠═91169e90-f704-11ea-1fc6-db3d743ee5b0
# ╟─16a5c03e-f705-11ea-17b5-c51d2798c445
# ╠═56d8ba90-f706-11ea-193b-e7ef97106c67
# ╠═0a750930-f709-11ea-18b2-e9d17940d902
# ╟─a0ed2650-f767-11ea-2f3c-d3c881ef9ee3
# ╠═aee755f0-f767-11ea-0a24-df2e84a9e2e7
# ╠═afc9c6b0-f767-11ea-0854-61ea834a9c3b
# ╟─60a73750-f705-11ea-2f3e-7dade24f41fa
# ╠═584801fe-f706-11ea-2910-698e9e228933
# ╠═0bf47d40-f709-11ea-221e-2b1f18b0b87d
# ╟─6de0fd20-f705-11ea-1c80-796a3f67feca
# ╠═59c245f0-f706-11ea-1a1b-233749be59ca
# ╠═0dc0b1c0-f709-11ea-0b40-c574c93847c3
# ╟─797d8db0-f705-11ea-2902-65b9bea2650e
# ╠═0f3e2a00-f709-11ea-388e-614eb1824ee5
# ╠═15e3d300-f709-11ea-2a71-f5177ed565ea
# ╟─5b519880-f706-11ea-2556-dde1e28ecf04
# ╠═b816fc3e-f706-11ea-04bb-731e878e768e
# ╠═15776780-f707-11ea-02ad-1f59890bc0b1
# ╠═1c50557e-f707-11ea-34b6-c16a8c1485f7
# ╠═2ce55440-f707-11ea-1e16-9999dd336957
# ╟─7d74a68e-f707-11ea-3495-dfdd84f3ee4e
# ╠═e131a3e0-f707-11ea-0460-f5f8907fe537
# ╠═eb5e02a0-f707-11ea-3c62-3d8cb3e6da41
# ╠═a042c1b0-f708-11ea-11d4-69fd33736015
# ╠═ac79bd80-f708-11ea-0fee-1b5d77e64911
