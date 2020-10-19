### A Pluto.jl notebook ###
# v0.11.14

using Markdown
using InteractiveUtils

# ╔═╡ d9ba7480-f940-11ea-3022-c34249fc9986
md"# Strings
Strings are not like integers, floats, and booleans.  A string is a **sequence of characters** - an ordered collection.

English language speakers are familiar with the letters of the alphabet _(A,B,C,...)_, numerals, and common punctuation.  These characters are mapped to integer values between 0 and 127 by the **_ASCII_** standard _(American Standard Code for Information Interchange)_.  Of course, there are many other characters used in non-English languages.  The **_Unicode_** standard addresses this problem and provides a unique number for every character on a world-wide scale.

## Characters

Characters in Julia are called **Char** values - these are single characters surrounded by single quotes."

# ╔═╡ 6215e350-f946-11ea-17d9-79218eaaeb85
letter = 's'

# ╔═╡ e9ac46b2-f946-11ea-38d8-45d952cc3d92
typeof(letter)

# ╔═╡ f4035ef0-f946-11ea-37dd-83fccba6b29f
md"You can determine the number that represents each character by using the ```Int()``` function.  You can also determine what character is stored by an integer by using the ```Char()``` function."

# ╔═╡ 186ecbd0-f947-11ea-37b7-93778ae72d0a
Int(letter)

# ╔═╡ 28a70490-f947-11ea-2e98-6d9d929f6973
Char(97)

# ╔═╡ ca486dc0-f947-11ea-23d0-69756c1197e3
md"**Note:** Even emojis are part of the Unicode standard._(eg. \:banana: TAB)_.  **Reference:** [Unicode Input](https://benlauwens.github.io/ThinkJulia.jl/latest/book.html#_unicode_input)"

# ╔═╡ f6378790-f947-11ea-1e5d-f55a28f19d84
x = '🍌'

# ╔═╡ ca20fdb0-f949-11ea-3c56-d15363709263
md"## A String is a Sequence
A string is a sequence of characters, surrounded by double-quotes ```\" \"```. You can access each character with the bracket operator and an **index**:"

# ╔═╡ 032cdf6e-f94a-11ea-0efa-ef1b0006e9d5
sentence = "The quick brown fox jumps over the lazy dog."

# ╔═╡ c9d4bb50-fcdf-11ea-2ab4-1323b8befa4b
typeof(sentence)

# ╔═╡ 252c5560-f94a-11ea-13f5-71a85869c98c
another_letter = sentence[5]

# ╔═╡ aba84810-f94a-11ea-1a76-417256736c29
md"All indexing in Julia is **1-based** - the first element of any integer-indexed object is found at index **1** and the last element at index **end**."

# ╔═╡ c83bf490-f94a-11ea-11a5-cb8d245a4580
last_character = sentence[end]

# ╔═╡ 080c51f0-f94b-11ea-00ad-796fa5260464
md"### length"

# ╔═╡ fd617460-f94a-11ea-0643-9da786e70d7b
md"**length** is a built-in function that returns the number of characters in a string:"

# ╔═╡ 234be020-f94b-11ea-2958-5bdf39df3c44
len = length(sentence)

# ╔═╡ 5c510b20-f94b-11ea-02a1-13b6d54d8cf6
md"### Traversal
A lot of computations involve processing a string one character at a time.  Often they start at the beginning, select each character in turn, do something to it, and continue to the end.  This pattern of processing is called a **traversal**.

The following function performs a **traversal** of a string in order to **count** the number of occurrences of a given character."

# ╔═╡ 515c5580-f95a-11ea-1552-b17223ffd05c
function count(s, ch)
	n = 0
	
	for letter in s
		if ch == letter
			n += 1
		end
	end
	
	n
end

# ╔═╡ f2facd40-fce3-11ea-2f73-b30d45c3fd85
count(sentence, ' ')+1

# ╔═╡ 2487c460-fce1-11ea-0c7a-eb7b17b61e07
text = "Albert College"

# ╔═╡ 52e7de2e-fce1-11ea-0a96-93ca5e118e12
character = 'l'

# ╔═╡ 2c227bc0-fce1-11ea-026a-471523a4b748
count(text,character)

# ╔═╡ fc7b6300-fce0-11ea-3b9c-075113efa0b4
count("Albert College", 'b')

# ╔═╡ 37c774a0-f95b-11ea-2dd9-e3b842ffd1d0
md"This function demonstrates a pattern of computation called a **counter** or an **accumulator**.  The variable **n** is initialized to 0 and then incremented each time the character bound to **ch** is found in the string **s**."

# ╔═╡ c876c060-f95a-11ea-3a71-f1d7d1a1c484
count("Hello, World!", 'l')

# ╔═╡ 6db09980-f9d2-11ea-2ea0-5d3878d1f628
md"Notice that an argument to a function can be a **string literal** like ```\"Hello, World!\"```, or it can be a variable that is bound to a string."

# ╔═╡ 9354ad6e-f9d2-11ea-2704-d5e41a747186
count(sentence,'f')

# ╔═╡ 6d5c9ba2-f95a-11ea-277b-275847dd29a5
md"### Concatenation
String **concatenation** is an operation that combines strings together.  For example,"

# ╔═╡ 097f30f0-f94d-11ea-315e-4364e3658b5f
first = "Hello, "

# ╔═╡ 13388290-f94d-11ea-1a26-df9f83cd2fa9
second = "World!"

# ╔═╡ 196d6860-f94d-11ea-2199-cb32d6bc85d2
greeting = first*second

# ╔═╡ 3b852140-f94d-11ea-30f8-ab56b87dd798
md"Here's an example that combines **traversal** with **concatenation**. In Robert McCloskey's book _Make Way for Ducklings_, the names of the ducklings are _Jack, Kack, Lack, Mack, Nack, Ouack, Pack, and Quack_.  This program attempts to generate their names and stores them in an **array**."

# ╔═╡ ea43eea0-f94d-11ea-3bab-53a1a40bdf1c
begin
	prefixes = "JKLMNOPQ"
	suffix = "ack"
	ducklings = []
	
	for letter in prefixes
		push!(ducklings, letter*suffix)
	end
	
	ducklings
end

# ╔═╡ 62612e10-f94f-11ea-1547-cbec0e684f3f
md"**Notice:** This is not quite right because _Ouack_ and _Quack_ are misspelled.  Think about how the code could be modified to fix these two problems."

# ╔═╡ 10de28c0-f956-11ea-3cfe-1d5b1872ee52
md"## Strings are Immutable

Since strings are **immutable**, you can't change an existing string.  The best you can do is create a new string that is a variation on the original.  For example, the following statement causes an **error** because it is attempting to alter an existing string."

# ╔═╡ 720538f2-f956-11ea-35f3-7ff72b45a0bf
greeting[1] = 'J'

# ╔═╡ b462bef0-f958-11ea-3811-8d63ece36437
md"The function below **reverses** a string by building a new string from the characters of the given string."

# ╔═╡ d1841760-f956-11ea-1d06-499720d5b08a
function reverse(s)
	new_s = ""
	len = length(s)
	
	for i in len:-1:1
		new_s = new_s * s[i]
	end
	
	new_s
end

# ╔═╡ ac04d410-f957-11ea-033d-491ecdf410a8
reverse(greeting)

# ╔═╡ 64ad3560-f959-11ea-2910-59571e334bae
md"## String Library"

# ╔═╡ 2c686cd0-f95c-11ea-341f-03ce6195fa22
md"Julia provides functions that perform a variety of useful operations on strings.  For example, the function **uppercase** takes a string and returns a new string with all **uppercase letters**."

# ╔═╡ b7b91910-f95c-11ea-0587-6fe9f291b333
uppercase(greeting)

# ╔═╡ e78a00f0-f95c-11ea-1d00-274f87bf02a4
md"Similarly, the function **lowercase** takes a string and returns a new string with all **lowercase letters**."

# ╔═╡ 3fbae870-f95d-11ea-0ae0-a5b1ecef459f
lowercase(greeting)

# ╔═╡ 520f4a70-f95d-11ea-1473-058bb73f7d05
md"There are also functions that help find characters in a string.  For example, the **findfirst** function returns the index of the first occurrence of a string within a string."

# ╔═╡ aa3de800-f95d-11ea-0bbb-a316c9d6f617
findfirst("e", greeting)

# ╔═╡ 2a4e2d70-f95e-11ea-2b6d-979b80fc1e44
md"You can find information about more functions in the string library at [Common Operations](https://docs.julialang.org/en/v1/manual/strings/#Common-Operations)."

# ╔═╡ b9de4d90-f95d-11ea-390f-491fc2e3a138
md"# Exercises
### 1 - Hello
Create a function called **hello(name)** that takes in a person's name and returns a greeting ```Hi, {name}```. For example, ```hello(\"Paul\")``` should return ```Hi, Paul!```."


# ╔═╡ fa570730-f9d1-11ea-24ab-cf6cbd18282e
function hello(name)
	
end

# ╔═╡ 0b297760-fc33-11ea-1534-d1204e26ad43


# ╔═╡ 56593770-f9d1-11ea-1741-79e6458b0722
md"### 2 - Username
Create a function called **username(first, last)** that takes in a person's first and last names as parameters, and returns a **lowercase** username consisting of the person's first name and the first initial of their last name.  For example, ```username(\"Paul\",\"Guse\")``` should return the username ```paulg```."

# ╔═╡ 424da500-f9d0-11ea-06e9-c36ae96fdb52
function username(first, last)
end

# ╔═╡ 6114524e-fcea-11ea-2d20-3b1bfafde361


# ╔═╡ 4a457080-f9d0-11ea-0afa-9725acd6dea1
md"### 3 - Number of Words
Create a function called **numberOfWords(s)** that takes in a string, and returns the number of words in the string.  For example, numberOfWords(\"$sentence\") should return ```9```."

# ╔═╡ 6bb98f00-f9d3-11ea-1c96-6f85d4264ad8
function numberOfWords(s)
end

# ╔═╡ 6d9c7b60-fcea-11ea-1e51-275e7261eb35


# ╔═╡ 7d7b26e2-f9d3-11ea-060b-2dc0df37ca4c
md"### 4 - Rotate
A **Caesar cypher** is a weak form of encryption that involves **rotating** each letter by a fixed number of places. To rotate a letter means to shift it through the alphabet, wrapping around to the beginning if necessary, so ’A’ rotated by 3 is ’D’ and ’Z’ rotated by 1 is ’A’.

To rotate a word, rotate each letter by the same amount. For example, \"cheer\" rotated by 7 is \"jolly\" and \"melon\" rotated by -10 is \"cubed\". In the movie 2001: A Space Odyssey, the ship computer is called HAL, which is IBM rotated by -1.

Write a function called **rotateWord(s, n)** that takes a string **s** and an integer **n** as parameters, and returns a new string that contains the letters from the original string rotated by the given amount.

##### TIP
You might want to use the built-in function **Int**, which converts a character to a numeric code, and **Char**, which converts numeric codes to characters. Letters of the alphabet are encoded in alphabetical order, so for example:
```
julia> Int('c') - Int('a')
2
```
Because c is the third letter of the alphabet. But beware: the numeric codes for uppercase letters are different.
```
julia> Char(Int('A') + 32)
'a': ASCII/Unicode U+0061 (category Ll: Letter, lowercase)
```
"

# ╔═╡ 61aca9ae-f9d4-11ea-2c00-6781458ab8e8
function rotateWord(s, n)
end

# ╔═╡ 6fcf12d0-fcea-11ea-118b-b9b6c3971d09


# ╔═╡ Cell order:
# ╟─d9ba7480-f940-11ea-3022-c34249fc9986
# ╠═6215e350-f946-11ea-17d9-79218eaaeb85
# ╠═e9ac46b2-f946-11ea-38d8-45d952cc3d92
# ╟─f4035ef0-f946-11ea-37dd-83fccba6b29f
# ╠═186ecbd0-f947-11ea-37b7-93778ae72d0a
# ╠═28a70490-f947-11ea-2e98-6d9d929f6973
# ╟─ca486dc0-f947-11ea-23d0-69756c1197e3
# ╠═f6378790-f947-11ea-1e5d-f55a28f19d84
# ╟─ca20fdb0-f949-11ea-3c56-d15363709263
# ╠═032cdf6e-f94a-11ea-0efa-ef1b0006e9d5
# ╠═f2facd40-fce3-11ea-2f73-b30d45c3fd85
# ╠═c9d4bb50-fcdf-11ea-2ab4-1323b8befa4b
# ╠═252c5560-f94a-11ea-13f5-71a85869c98c
# ╟─aba84810-f94a-11ea-1a76-417256736c29
# ╠═c83bf490-f94a-11ea-11a5-cb8d245a4580
# ╟─080c51f0-f94b-11ea-00ad-796fa5260464
# ╟─fd617460-f94a-11ea-0643-9da786e70d7b
# ╠═234be020-f94b-11ea-2958-5bdf39df3c44
# ╟─5c510b20-f94b-11ea-02a1-13b6d54d8cf6
# ╠═515c5580-f95a-11ea-1552-b17223ffd05c
# ╠═2487c460-fce1-11ea-0c7a-eb7b17b61e07
# ╠═52e7de2e-fce1-11ea-0a96-93ca5e118e12
# ╠═2c227bc0-fce1-11ea-026a-471523a4b748
# ╠═fc7b6300-fce0-11ea-3b9c-075113efa0b4
# ╟─37c774a0-f95b-11ea-2dd9-e3b842ffd1d0
# ╠═c876c060-f95a-11ea-3a71-f1d7d1a1c484
# ╟─6db09980-f9d2-11ea-2ea0-5d3878d1f628
# ╠═9354ad6e-f9d2-11ea-2704-d5e41a747186
# ╟─6d5c9ba2-f95a-11ea-277b-275847dd29a5
# ╠═097f30f0-f94d-11ea-315e-4364e3658b5f
# ╠═13388290-f94d-11ea-1a26-df9f83cd2fa9
# ╠═196d6860-f94d-11ea-2199-cb32d6bc85d2
# ╟─3b852140-f94d-11ea-30f8-ab56b87dd798
# ╠═ea43eea0-f94d-11ea-3bab-53a1a40bdf1c
# ╟─62612e10-f94f-11ea-1547-cbec0e684f3f
# ╟─10de28c0-f956-11ea-3cfe-1d5b1872ee52
# ╠═720538f2-f956-11ea-35f3-7ff72b45a0bf
# ╟─b462bef0-f958-11ea-3811-8d63ece36437
# ╠═d1841760-f956-11ea-1d06-499720d5b08a
# ╠═ac04d410-f957-11ea-033d-491ecdf410a8
# ╟─64ad3560-f959-11ea-2910-59571e334bae
# ╟─2c686cd0-f95c-11ea-341f-03ce6195fa22
# ╠═b7b91910-f95c-11ea-0587-6fe9f291b333
# ╟─e78a00f0-f95c-11ea-1d00-274f87bf02a4
# ╠═3fbae870-f95d-11ea-0ae0-a5b1ecef459f
# ╟─520f4a70-f95d-11ea-1473-058bb73f7d05
# ╠═aa3de800-f95d-11ea-0bbb-a316c9d6f617
# ╟─2a4e2d70-f95e-11ea-2b6d-979b80fc1e44
# ╟─b9de4d90-f95d-11ea-390f-491fc2e3a138
# ╠═fa570730-f9d1-11ea-24ab-cf6cbd18282e
# ╠═0b297760-fc33-11ea-1534-d1204e26ad43
# ╟─56593770-f9d1-11ea-1741-79e6458b0722
# ╠═424da500-f9d0-11ea-06e9-c36ae96fdb52
# ╠═6114524e-fcea-11ea-2d20-3b1bfafde361
# ╟─4a457080-f9d0-11ea-0afa-9725acd6dea1
# ╠═6bb98f00-f9d3-11ea-1c96-6f85d4264ad8
# ╠═6d9c7b60-fcea-11ea-1e51-275e7261eb35
# ╟─7d7b26e2-f9d3-11ea-060b-2dc0df37ca4c
# ╠═61aca9ae-f9d4-11ea-2c00-6781458ab8e8
# ╠═6fcf12d0-fcea-11ea-118b-b9b6c3971d09
