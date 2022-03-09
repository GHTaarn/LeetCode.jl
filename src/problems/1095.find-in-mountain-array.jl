# ---
# title: 1095. Find in Mountain Array
# id: problem1095
# author: Indigo
# date: 2022-03-08
# difficulty: Hard
# categories: Binary Search
# link: <https://leetcode.com/problems/find-in-mountain-array/description/>
# hidden: true
# ---
# 
# _(This problem is an   **interactive problem**.)_
# 
# You may recall that an array `A` is a _mountain array_ if and only if:
# 
#   * `A.length >= 3`
#   * There exists some `i` with `0 < i < A.length - 1` such that: 
#     * `A[0] < A[1] < ... A[i-1] < A[i]`
#     * `A[i] > A[i+1] > ... > A[A.length - 1]`
# 
# Given a mountain array `mountainArr`, return the **minimum**  `index` such
# that `mountainArr.get(index) == target`.  If such an `index` doesn't exist,
# return `-1`.
# 
# **You can 't access the mountain array directly.**  You may only access the
# array using a `MountainArray` interface:
# 
#   * `MountainArray.get(k)` returns the element of the array at index `k` (0-indexed).
#   * `MountainArray.length()` returns the length of the array.
# 
# Submissions making more than `100` calls to `MountainArray.get` will be judged
# _Wrong Answer_.  Also, any solutions that attempt to circumvent the judge will
# result in disqualification.
# 
# 
# 
# **Example 1:**
# 
#     
#     
#     Input: array = [1,2,3,4,5,3,1], target = 3
#     Output: 2
#     Explanation: 3 exists in the array, at index=2 and index=5. Return the minimum index, which is 2.
# 
# **Example 2:**
# 
#     
#     
#     Input: array = [0,1,2,4,2,1], target = 3
#     Output: -1
#     Explanation: 3 does not exist in the array, so we return -1.
#     
# 
# 
# 
# **Constraints:**
# 
#   * `3 <= mountain_arr.length() <= 10000`
#   * `0 <= target <= 10^9`
#   * `0 <= mountain_arr.get(index) <= 10^9`
# 
# 
## @lc code=start
using LeetCode

struct MountainArray
    vec::Vector{Int}
end

Base.length(ma::MountainArray) = length(ma.vec)
Base.getindex(ma::MountainArray, i) = ma.vec[i]

function find_in_mountain_array(ma::MountainArray, target::Int)
    len = length(ma)
    i, j = 1, len
    while i != j
        mid = (i + j) >> 1
        ma[mid] > ma[mid + 1] ? (j = mid) : (i = mid + 1)
    end
    idx1 = searchsortedfirst(1:i, i; by=i -> ma[i] >= target)
    ma[idx1] == target && return idx1
    idx2 = searchsortedfirst((i + 1):len, i; by=i -> ma[i] <= target) + i
    ma[idx2] == target && return idx2
    return -1
end
## @lc code=end
