# ---
# title: 695. Max Area of Island
# id: problem695
# author: Indigo
# date: 2021-06-29
# difficulty: Medium
# categories: Array, Depth-first Search
# link: <https://leetcode.com/problems/max-area-of-island/description/>
# hidden: true
# ---
# 
# Given a non-empty 2D array `grid` of 0's and 1's, an **island** is a group of
# `1`'s (representing land) connected 4-directionally (horizontal or vertical.)
# You may assume all four edges of the grid are surrounded by water.
# 
# Find the maximum area of an island in the given 2D array. (If there is no
# island, the maximum area is 0.)
# 
# **Example 1:**
# 
#     
#     
#     [[0,0,1,0,0,0,0,1,0,0,0,0,0],
#      [0,0,0,0,0,0,0,1,1,1,0,0,0],
#      [0,1,1,0,1,0,0,0,0,0,0,0,0],
#      [0,1,0,0,1,1,0,0, **1** ,0, **1** ,0,0],
#      [0,1,0,0,1,1,0,0, **1** , **1** , **1** ,0,0],
#      [0,0,0,0,0,0,0,0,0,0, **1** ,0,0],
#      [0,0,0,0,0,0,0,1,1,1,0,0,0],
#      [0,0,0,0,0,0,0,1,1,0,0,0,0]]
#     
# 
# Given the above grid, return `6`. Note the answer is not 11, because the
# island must be connected 4-directionally.
# 
# **Example 2:**
# 
#     
#     
#     [[0,0,0,0,0,0,0,0]]
# 
# Given the above grid, return `0`.
# 
# **Note:** The length of each dimension in the given `grid` does not exceed 50.
# 
# 
## @lc code=start
using LeetCode

function max_area_of_island(grid::Matrix{Int})
    function dfs(grid::Matrix{Int}, I)
        grid[I] = 0
        res = 1
        idcs = CartesianIndices(grid)
        for neighb in ((1, 0), (0, 1), (-1, 0), (0, -1))
            new_I = I + CartesianIndex(neighb)
            (new_I ∈ idcs && grid[new_I] == 1) && (res += dfs(grid, new_I))
        end
        return res
    end
    res = 0
    for I in CartesianIndices(grid)
        (grid[I] == 1) && (res = max(res, dfs(grid, I)))
    end
    return res
end
## @lc code=end
