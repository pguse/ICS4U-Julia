### A Pluto.jl notebook ###
# v0.11.14

using Markdown
using InteractiveUtils

# ╔═╡ a1049890-f7ac-11ea-0d47-1b9761310fe9
md"# Conditional Execution
In order to write useful programs, we must have the ability to have the program change its behaviour due to certain conditions.  The simplest form of conditional statement is the ```if``` statement."

# ╔═╡ 92f40ab0-f7c0-11ea-3886-f5cedd7b2df2
x = 5

# ╔═╡ b0a55c30-f7c0-11ea-19d3-4dad997b6521
if x > 0
	"x is positive"
end

# ╔═╡ c1bb71d0-f7c0-11ea-18a1-fb5a32d40936
md"The Boolean expression after the ```if``` is called the _condition_. If it is **true**, the indented statement runs, otherwise nothing happens. Notice the value of the _condition_ given in the next cell. Change the value of x in the cell above so that it is **negative** and notice how the cell above and below change their values."

# ╔═╡ 451515e0-f7c1-11ea-1705-85d861639c86
x > 0

# ╔═╡ 8c5215c0-f7c1-11ea-3266-bf5e2df7c5b0
md"```if``` statements have the same structure as **function** definitions:  a header followed by a body terminated with the keyword ```end```.  Statements like these are called **compound** statements."

# ╔═╡ 1e62f7e0-f7c2-11ea-3a5d-7bddf81515b1
md"## Alternative Execution
The second form of ```if``` statement has _alternative execution_, where there are two possibilities.  The condition determines which statement runs.  For example:"

# ╔═╡ 9cd17430-f7c2-11ea-1a36-d7102e4702e4
if x % 2 == 0
	"x is even"
else
	"x is odd"
end

# ╔═╡ bca864d0-f7c2-11ea-3a00-c58df029e012
md"Notice the value of the _condition_ given in the cell below.  Remember, this is called a **Boolean** expression.  If the _condition_ is **true**, the first statement(s) run, but if it is **false**, the second statement(s) run.  Since the condition must be either **true** or **false**, only one of the alternatives will run.  The alternatives are called _branches_ because they are branches in the flow of execution."

# ╔═╡ e919a6f0-f7c2-11ea-1106-e795e0d2e2cb
x % 2 == 0

# ╔═╡ fe576d40-f7c2-11ea-0c56-d1c4a4686181
md"Notice the type of the _condition_ given below."

# ╔═╡ 1131ef30-f7c3-11ea-204f-0bd1865514ce
typeof( x % 2 == 0 )

# ╔═╡ 7560c120-f7c3-11ea-159d-4dd373a968ba
md"Remember ```x % 2``` represents the remainder of $$x \div 2$$.  If the remainder is zero, then x must be even."

# ╔═╡ a1583f60-f7c3-11ea-1321-95aea51548e6
md"## Chained Conditionals
Sometimes there are more than two possibilities and we need **more than two** branches.  One way to deal with this is by using a _chained conditional_."

# ╔═╡ 6f48206e-f7c4-11ea-15af-5b1798d0ab29
y = 8

# ╔═╡ 7745df60-f7c4-11ea-249c-d5cb8143fde3
if x < y
	"x is less than y"
elseif x > y
	"x is greater than y"
else
	"x and y are equal"
end

# ╔═╡ 9771a6c0-f7c4-11ea-00cc-99ede22c4406
md"Again, only one branch will run.  There is **no limit** on the number of ```elseif``` statements.  Again, notice the value of the _conditions_."

# ╔═╡ bdd27b00-f7c4-11ea-3310-8bfb382069df
x < y

# ╔═╡ ccc71030-f7c4-11ea-3762-57f219c07c49
x > y

# ╔═╡ d72c0b20-f7c4-11ea-1374-bfcd8cbbb2d0
md"Each _condition_ is **checked in order** and the first **true** statement runs.  Only **one branch** will run."

# ╔═╡ 0b3c9880-f7c5-11ea-0394-af6294534481
md"## Logical Operators
You can combine together _conditions_ by using the **and** ```&&``` and **or** ```||``` logical operators. For example:"

# ╔═╡ 75c64ed0-f7c5-11ea-2470-9f7d112f4052
if x % 3 == 0 && x % 5 == 0
	"x is divisible by both 3 and 5"
elseif x % 3 == 0
	"x is divisible by 3"
elseif x % 5 == 0
	"x is divisible by 5"
else
	"x is not divisible by 3 or 5"
end

# ╔═╡ 4d37b330-f7c7-11ea-1540-c36dfd739399
md"or another example:"

# ╔═╡ fc834220-f7c5-11ea-2224-09069657c43d
course = "Mathematics"

# ╔═╡ 839ea920-f7c6-11ea-0a1d-436d2b9b627e
if course == "Mathematics" || course == "Computer Science"
	"Nice course"
else
	"OK"
end

# ╔═╡ 9a5fe5b0-f7c7-11ea-0a98-17add603bc76
md"## Exercises
Complete the following exercises using **conditional execution**."

# ╔═╡ 570408e0-f7cd-11ea-115e-9d999d5c286f
md"### 1 - Is it Odd?

Create a function called **isOdd(n)**, that returns **true** if **n** is an **odd number**. Otherwise, it should return **false**.  Test your function to determine if it works correctly."

# ╔═╡ e2c83770-f7cd-11ea-21d4-6f4020381158
function isOdd(n)
end

# ╔═╡ e386f390-f7cd-11ea-09f6-1d9c1bdbdfa0


# ╔═╡ f68eaec0-f7c7-11ea-3eb1-03d22069b32b
md"### 2 - At Least One Odd Number

Create a function called **atLeastOneOdd(x,y)**, that returns **true** if at least one of x or y is an **odd number**. Otherwise, it should return **false**.  Test your function to determine if it works correctly."

# ╔═╡ 9f81df70-f7c8-11ea-12b7-7fa24b6e7d3c
function atLeastOneOdd(x,y)
end

# ╔═╡ 040da900-f7ca-11ea-14c1-a166d9382465


# ╔═╡ cb245fe0-f7c8-11ea-1476-bf0fd40d6332
md"### 3 - Ascending Integers

Create a function called **ascendingInt(a,b,c)**, that returns **true** if a, b, and c are _ascending integers_. Otherwise, it should return **false**. Test your function to determine if it works correctly. An example of ascending integers is: 3, 7, 8."

# ╔═╡ 00b99c02-f7ca-11ea-24af-23ccd44e853c
function ascendingInt(a,b,c)
	if a < b && b < c
		true
	end
end

# ╔═╡ fa5e6b10-f82d-11ea-1dc2-0b2359ca1652
3 < 7 && 7 < 8

# ╔═╡ 05691a50-f7ca-11ea-1b6a-7f60413fa809
ascendingInt(3, 7, 1)

# ╔═╡ dad96970-f7c9-11ea-1492-213104203cc8
md"### 4 - FizzBuzz

Create a function called **fizzBuzz(n)**, that returns a different value according to the following rules:
* if the number **n** is divisible by 3, return **Fizz**
* if the number **n** is divisible by 5, return **Buzz**
* if the number **n** is divisible by both 3 and 5, return **FizzBuzz**
* if none of the above apply, just return the number **n**."

# ╔═╡ 6c1b4650-f7cb-11ea-1b07-d3efb73cb70f
function fizzBuzz(n)
end

# ╔═╡ 73ec4ff0-f7cb-11ea-15bb-bff9920180a3


# ╔═╡ 6d929cb0-f7ce-11ea-2854-6fbc2c38c61b
md"### 5 - Leap Year

Create a function called **leapYear(year)**, that returns **true** if **year** is a leap year.  Otherwise, it should return **false**.  Here are the rules for leap years:
* a year is a **leap year** if its value is **divisible by 4** and is **not exactly divisible by 100**.
* a year is always a **leap year** if its value is **exactly divisible by 400**.
**Examples:**  1800 is not a leap year, whereas 1600 and 2020 are both leap years."

# ╔═╡ 19bbcb10-f7cf-11ea-26c8-6f6347631f59
function leapYear(year)
end

# ╔═╡ 1a7975be-f7cf-11ea-37bb-a3283bb2b362


# ╔═╡ Cell order:
# ╟─a1049890-f7ac-11ea-0d47-1b9761310fe9
# ╠═92f40ab0-f7c0-11ea-3886-f5cedd7b2df2
# ╠═b0a55c30-f7c0-11ea-19d3-4dad997b6521
# ╟─c1bb71d0-f7c0-11ea-18a1-fb5a32d40936
# ╠═451515e0-f7c1-11ea-1705-85d861639c86
# ╟─8c5215c0-f7c1-11ea-3266-bf5e2df7c5b0
# ╟─1e62f7e0-f7c2-11ea-3a5d-7bddf81515b1
# ╠═9cd17430-f7c2-11ea-1a36-d7102e4702e4
# ╟─bca864d0-f7c2-11ea-3a00-c58df029e012
# ╠═e919a6f0-f7c2-11ea-1106-e795e0d2e2cb
# ╟─fe576d40-f7c2-11ea-0c56-d1c4a4686181
# ╠═1131ef30-f7c3-11ea-204f-0bd1865514ce
# ╟─7560c120-f7c3-11ea-159d-4dd373a968ba
# ╟─a1583f60-f7c3-11ea-1321-95aea51548e6
# ╠═6f48206e-f7c4-11ea-15af-5b1798d0ab29
# ╠═7745df60-f7c4-11ea-249c-d5cb8143fde3
# ╟─9771a6c0-f7c4-11ea-00cc-99ede22c4406
# ╠═bdd27b00-f7c4-11ea-3310-8bfb382069df
# ╠═ccc71030-f7c4-11ea-3762-57f219c07c49
# ╟─d72c0b20-f7c4-11ea-1374-bfcd8cbbb2d0
# ╟─0b3c9880-f7c5-11ea-0394-af6294534481
# ╠═75c64ed0-f7c5-11ea-2470-9f7d112f4052
# ╟─4d37b330-f7c7-11ea-1540-c36dfd739399
# ╠═fc834220-f7c5-11ea-2224-09069657c43d
# ╠═839ea920-f7c6-11ea-0a1d-436d2b9b627e
# ╟─9a5fe5b0-f7c7-11ea-0a98-17add603bc76
# ╟─570408e0-f7cd-11ea-115e-9d999d5c286f
# ╠═e2c83770-f7cd-11ea-21d4-6f4020381158
# ╠═e386f390-f7cd-11ea-09f6-1d9c1bdbdfa0
# ╟─f68eaec0-f7c7-11ea-3eb1-03d22069b32b
# ╠═9f81df70-f7c8-11ea-12b7-7fa24b6e7d3c
# ╠═040da900-f7ca-11ea-14c1-a166d9382465
# ╟─cb245fe0-f7c8-11ea-1476-bf0fd40d6332
# ╠═00b99c02-f7ca-11ea-24af-23ccd44e853c
# ╠═fa5e6b10-f82d-11ea-1dc2-0b2359ca1652
# ╠═05691a50-f7ca-11ea-1b6a-7f60413fa809
# ╟─dad96970-f7c9-11ea-1492-213104203cc8
# ╠═6c1b4650-f7cb-11ea-1b07-d3efb73cb70f
# ╠═73ec4ff0-f7cb-11ea-15bb-bff9920180a3
# ╟─6d929cb0-f7ce-11ea-2854-6fbc2c38c61b
# ╠═19bbcb10-f7cf-11ea-26c8-6f6347631f59
# ╠═1a7975be-f7cf-11ea-37bb-a3283bb2b362
