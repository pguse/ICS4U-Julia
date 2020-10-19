### A Pluto.jl notebook ###
# v0.12.4

using Markdown
using InteractiveUtils

# ╔═╡ b0f918c0-089b-11eb-2d18-619789bb3083
using Colors

# ╔═╡ 50685520-089b-11eb-2f03-418d41236bd8
md"# Connect4
_From Wikipedia_:  
\"Connect Four _(also known as Four Up, Plot Four, Find Four, Four in a Row, Four in a Line, Drop Four, and Gravitrips in the Soviet Union)_ is a two-player connection board game, in which the players choose a color and then take turns dropping colored discs into a seven-column, six-row vertically suspended grid. The pieces fall straight down, occupying the lowest available space within the column. The objective of the game is to be the first to form a horizontal, vertical, or diagonal line of four of one's own discs. Connect Four is a solved game. The first player can always win by playing the right moves.\""

# ╔═╡ 733f1740-08a6-11eb-06b0-937122b6861b
html"<img src=\"https://upload.wikimedia.org/wikipedia/commons/e/e9/Connect4.PNG\" width=320 height=275>"

# ╔═╡ d5fc2300-08a1-11eb-2277-eb3691eb0d84
md"### placePiece()

This function places a piece given a column number **col** and a **piece**.  On a **Connect4** board, the columns run from 1 to 7, and the **piece** can be either 'r' _(for red)_ or 'y' _(for yellow)_. In this notebook, our board is just made up of grayscale squares where a **red** piece is represented by the value **0.5** and a **yellow** piece is represented by **0.75**.  Note: **black** is represented by **0.0** and white is represented by **1.0**."

# ╔═╡ 34daff9e-089c-11eb-1350-57b8c98717e8
function placePiece(b, col, piece)
	# Choose colour
	if piece == 'r'
		c = 0.5
	else
		c = 0.75
	end
	# Place piece
	for row in size(b,1):-1:1   # Scans from row 6 to row 1 - notice the -1 step
		if b[row,col] == 0.0
			b[row,col] = c
			break
		end
	end
	b
end

# ╔═╡ e0d6b560-089c-11eb-327e-25aea49c4b03
begin
	board = zeros(6,7)
	placePiece(board,1,'y')
	placePiece(board,2,'y')
	placePiece(board,3,'r')
	placePiece(board,4,'r')
	placePiece(board,2,'y')
	placePiece(board,3,'r')
	placePiece(board,4,'r')
	placePiece(board,3,'y')
	placePiece(board,4,'r')
	placePiece(board,4,'y')
	Gray.(board)
end

# ╔═╡ 1e5f21c0-08a1-11eb-2198-b31f7328d4b1
md"## Determining a Win

### isWinRow()

This function should determine if there is a win in any row of the **Connect4** board.  As it is given to you, it only determines whether there is a win along the bottom row, starting in the bottom left corner.

* **Complete the isWinRow() function.**"

# ╔═╡ e13c6c30-0f17-11eb-0490-a34ec431be89
function isWinRow(b)
	win = false
	for r in 6:-1:1
		for c in 1:4
			if b[r,c] == b[r,c+1] == b[r,c+2] == b[r,c+3] && b[r,c] != 0.0
				win = true
			end
		end
	end
	return win
end

# ╔═╡ c8c10f90-089f-11eb-1ccc-bb9e85ab4f67
isWinRow(board)

# ╔═╡ cefdeb00-08a7-11eb-18b8-5f57402b0913
md"### isWinCol()

This function should determine if there is a win in any column of the **Connect4** board.  As it is given to you, it only determines whether there is a win along the leftmost column, starting in the bottom left corner.

* **Complete the isWinCol() function.**"

# ╔═╡ 3e5157fe-08a0-11eb-3d21-ff4fcbd80256
function isWinCol(b)
	for c in 1:7
		for r in 6:-1:4
			if b[r,c] == b[r-1,c] == b[r-2,c] == b[r-3,c] && b[r,c] != 0.0
				return true
			end
		end
	end
	return false
end

# ╔═╡ 46793a90-08a8-11eb-13c5-d9e936de21df
isWinCol(board)

# ╔═╡ f6e40a40-08a8-11eb-0d61-95026c0ea80f
md"### isWinDiag()

This function should determine if there is a win along any diagonal _(upwards or downwards)_ of the **Connect4** board.  As it is given to you, it only determines whether there is a win along an upwards diagonal, starting in the bottom left corner.

* **Complete the isWinDiag() function.**"

# ╔═╡ 4543e880-08a0-11eb-2342-659dc191c717
function isWinDiag(b)
	if b[6,1] == b[5,2] && b[5,2] == b[4,3] && b[4,3] == b[3,4] && b[3,4] != 0.0
		true
	else
		false
	end
end

# ╔═╡ 4dcedd30-08a9-11eb-3edb-ad18a9becdc3
isWinDiag(board)

# ╔═╡ Cell order:
# ╟─50685520-089b-11eb-2f03-418d41236bd8
# ╟─733f1740-08a6-11eb-06b0-937122b6861b
# ╠═b0f918c0-089b-11eb-2d18-619789bb3083
# ╟─d5fc2300-08a1-11eb-2277-eb3691eb0d84
# ╠═34daff9e-089c-11eb-1350-57b8c98717e8
# ╠═e0d6b560-089c-11eb-327e-25aea49c4b03
# ╟─1e5f21c0-08a1-11eb-2198-b31f7328d4b1
# ╠═e13c6c30-0f17-11eb-0490-a34ec431be89
# ╠═c8c10f90-089f-11eb-1ccc-bb9e85ab4f67
# ╟─cefdeb00-08a7-11eb-18b8-5f57402b0913
# ╠═3e5157fe-08a0-11eb-3d21-ff4fcbd80256
# ╠═46793a90-08a8-11eb-13c5-d9e936de21df
# ╟─f6e40a40-08a8-11eb-0d61-95026c0ea80f
# ╠═4543e880-08a0-11eb-2342-659dc191c717
# ╠═4dcedd30-08a9-11eb-3edb-ad18a9becdc3
