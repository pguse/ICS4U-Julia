### A Pluto.jl notebook ###
# v0.12.4

using Markdown
using InteractiveUtils

# ╔═╡ 0a683da2-fd0c-11ea-3b30-c5ca96116224
begin
	using Pkg
	Pkg.add("Colors")
end

# ╔═╡ 55f5b270-fd39-11ea-1ce5-a9baf7dc580e
using Colors

# ╔═╡ bf34c8c0-fc67-11ea-0f29-312c0ce656f0
md"# Tic-Tac-Toe Project

This project demonstrates how you might use a single-dimensional array in Julia to store information in a grid-based game like Tic-Tac-Toe . In this case a 9 element array is used to store the 9 possible positions of the tic-tac-toe game. The index values of the array  match the grid positions given in the table below.

|   Tic  |  Tac   |  Toe   |
|:---:|:---:|:---:|
|  1  |  2  |  3  |
|  4  |  5  |  6  |
|  7  |  8  |  9  |

"

# ╔═╡ 201ce400-fd40-11ea-2297-61059f52a67a
md"## Board Setup

The **grid** array is filled initially with the values ```0.75```.  In this game, this value will represent an empty square and be displayed as a light-grey square. A value of ```0``` will represent an 'O' and a value of ```0.5``` will represent an 'X' on a typical tic-tac-toe board. Change some of the values in the **grid** array to ```0``` and ```0.5``` to represent  some position in a tic-tac-toe game."

# ╔═╡ ab099702-fc7f-11ea-00bd-f911b1ed1556
grid = [0.5, 0.5, 0.5, 0.75, 0.75, 0.75, 0.75, 0.75, 0.75]

# ╔═╡ 5f557160-fd44-11ea-2bff-0d2ed2165a58
Gray.([ grid[1] grid[2] grid[3]
	   grid[4] grid[5] grid[6]
	   grid[7] grid[8] grid[9] ])

# ╔═╡ 6d43cc10-fd42-11ea-07b2-1d0e2ff3805c
md"## Tasks
### 1 - Is there a Win?
Complete the **isWin()** function. It should return **true** if there is a win on the board.  Otherwise, it should return **false**. Remember, there are 8 possible ways to win in the tic-tac-toe game:  3 of the same kind _('X' or 'O')_ in any row _(3)_, any column _(3)_, or either diagonal _(2)_."

# ╔═╡ eca84552-fd3b-11ea-22be-956cc38bc6ab
function isWin(g)
	if g[1]==g[2] && g[2]==g[3] && g[3] != 0.75       # Top Row
		true
	elseif g[4]==g[5] && g[5]==g[6] && g[6] != 0.75   # Middle Row
		true
	else
		false
	end
end

# ╔═╡ aa9a3780-fd3c-11ea-08c5-4101b7cca272
isWin(grid)

# ╔═╡ e55d13e2-fd43-11ea-35e6-13e72f1bd621
### 1 - isWin
md"### 2 - Is there a Tie?
Complete the **isTie()** function. It should return **true** if there is a tie on the board.  Otherwise, it should return **false**.  A **tie** occurs if the board is filled, with 'X's and 'O's but there is **no win**."

# ╔═╡ f64b7d40-fd43-11ea-1e2c-fb76722c31f5
function isTie()
end

# ╔═╡ b0d9aed2-ff64-11ea-0a51-a96493ee54ee


# ╔═╡ Cell order:
# ╟─bf34c8c0-fc67-11ea-0f29-312c0ce656f0
# ╠═0a683da2-fd0c-11ea-3b30-c5ca96116224
# ╠═55f5b270-fd39-11ea-1ce5-a9baf7dc580e
# ╟─201ce400-fd40-11ea-2297-61059f52a67a
# ╠═ab099702-fc7f-11ea-00bd-f911b1ed1556
# ╠═5f557160-fd44-11ea-2bff-0d2ed2165a58
# ╟─6d43cc10-fd42-11ea-07b2-1d0e2ff3805c
# ╠═eca84552-fd3b-11ea-22be-956cc38bc6ab
# ╠═aa9a3780-fd3c-11ea-08c5-4101b7cca272
# ╟─e55d13e2-fd43-11ea-35e6-13e72f1bd621
# ╠═f64b7d40-fd43-11ea-1e2c-fb76722c31f5
# ╠═b0d9aed2-ff64-11ea-0a51-a96493ee54ee
