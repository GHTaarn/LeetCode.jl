# ---
# title: 313. Super Ugly Number
# id: problem313
# author: Indigo
# date: 2021-06-10
# difficulty: Medium
# categories: Math, Heap
# link: <https://leetcode.com/problems/super-ugly-number/description/>
# hidden: true
# ---
# 
# Write a program to find the `nth` super ugly number.
# 
# Super ugly numbers are positive numbers whose all prime factors are in the
# given prime list `primes` of size `k`.
# 
# **Example:**
# 
#     
#     
#     Input: n = 12, primes = [2,7,13,19]
#     Output: 32 
#     Explanation:[1,2,4,7,8,13,14,16,19,26,28,32] is the sequence of the first 12 
#                  super ugly numbers given primes = [2,7,13,19] of size 4.
# 
# **Note:**
# 
#   * `1` is a super ugly number for any given `primes`.
#   * The given numbers in `primes` are in ascending order.
#   * 0 < `k` ≤ 100, 0 < `n` ≤ 106, 0 < `primes[i]` < 1000.
#   * The nth super ugly number is guaranteed to fit in a 32-bit signed integer.
# 
# 
## @lc code=start
using LeetCode

function nth_super_ugly_number(n::Int, primes::Vector{Int})
    dp = fill(1, n)
    len = length(primes)
    cur_min = primes[:]
    ptrs = fill(1, len)
    
    @inbounds for i in 2:n
        minn = minimum(cur_min)
        dp[i] = minn
        @simd for pidx in 1:len
            if minn == cur_min[pidx]
                ptrs[pidx] += 1
                cur_min[pidx] = dp[ptrs[pidx]] * primes[pidx]
            end
        end
    end
    return dp[end]
end
## @lc code=end
