typealias Count = Int
class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        let chars = Array(s)
        var hash: [Character: Count] = [:]

        var left = 0
        var best = 0

        for right in chars.indices {
            hash[chars[right], default: 0] += 1

            while hash[chars[right]]! > 1 {
                hash[chars[left]]! -= 1
                left += 1
            }

            best = max(best, right - left + 1)
        }

        return best
    }
}
