# ---
# title: 886. Possible Bipartition
# id: problem886
# author: Tian Jun
# date: 2020-10-31
# difficulty: Medium
# categories: Depth-first Search, Graph
# link: <https://leetcode.com/problems/possible-bipartition/description/>
# hidden: true
# ---
# 
# Given a set of `N` people (numbered `1, 2, ..., N`), we would like to split
# everyone into two groups of **any** size.
# 
# Each person may dislike some other people, and they should not go into the
# same group.
# 
# Formally, if `dislikes[i] = [a, b]`, it means it is not allowed to put the
# people numbered `a` and `b` into the same group.
# 
# Return `true` if and only if it is possible to split everyone into two groups
# in this way.
# 
# 
# 
# **Example 1:**
# 
#     
#     
#     Input: N = 4, dislikes = [[1,2],[1,3],[2,4]]
#     Output: true
#     **Explanation** : group1 [1,4], group2 [2,3]
#     
# 
# **Example 2:**
# 
#     
#     
#     Input: N = 3, dislikes = [[1,2],[1,3],[2,3]]
#     Output: false
#     
# 
# **Example 3:**
# 
#     
#     
#     Input: N = 5, dislikes = [[1,2],[2,3],[3,4],[4,5],[1,5]]
#     Output: false
#     
# 
# 
# 
# **Constraints:**
# 
#   * `1 <= N <= 2000`
#   * `0 <= dislikes.length <= 10000`
#   * `dislikes[i].length == 2`
#   * `1 <= dislikes[i][j] <= N`
#   * `dislikes[i][0] < dislikes[i][1]`
#   * There does not exist `i != j` for which `dislikes[i] == dislikes[j]`.
# 
# 
## @lc code=start
using LeetCode

using DataStructures
function possible_bipartition(n::Int, dislikes::Vector{Vector{Int}})
    int_ds = IntDisjointSets(n)
    graph = [Int[] for _ in 1:n]
    for (a, b) in dislikes
        push!(graph[a], b)
        push!(graph[b], a)
    end
    for i in 1:n
        for j in graph[i]
            union!(int_ds, graph[i][1], j)
            DataStructures.in_same_set(int_ds, i, j) && return false
        end
    end
    return true
end
## @lc code=end
