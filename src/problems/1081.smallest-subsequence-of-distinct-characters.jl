# ---
# title: 1081. Smallest Subsequence of Distinct Characters
# id: problem1081
# author: Tian Jun
# date: 2020-10-31
# difficulty: Medium
# categories: String, Stack, Greedy
# link: <https://leetcode.com/problems/smallest-subsequence-of-distinct-characters/description/>
# hidden: true
# ---
# 
# Return the lexicographically smallest subsequence of `s` that contains all the
# distinct characters of `s` exactly once.
# 
# **Note:** This question is the same as 316:
# <https://leetcode.comhttps://leetcode.com/problems/remove-duplicate-letters/>
# 
# 
# 
# **Example 1:**
# 
#     
#     
#     Input: s = "bcabc"
#     Output: "abc"
#     
# 
# **Example 2:**
# 
#     
#     
#     Input: s = "cbacdcbc"
#     Output: "acdb"
#     
# 
# 
# 
# **Constraints:**
# 
#   * `1 <= s.length <= 1000`
#   * `s` consists of lowercase English letters.
# 
# 
## @lc code=start
using LeetCode

function smallest_subsequence(s::String)
    sascii = codeunits(s)[:] .- Int8('a' - 1)
    scnt = fill(0, 26)
    cur_cnt = fill(false, 26)
    cur = UInt8[]
    for c in sascii
        scnt[c] += 1
    end
    for c in sascii
        scnt[c] -= 1
        cur_cnt[c] && continue
        while !isempty(cur) && cur[end] > c && scnt[cur[end]] > 0
            cur_cnt[pop!(cur)] = false
        end
        push!(cur, c)
        cur_cnt[c] = true
    end
    return join(cur .+ ('a' - 1))
end
## @lc code=end
