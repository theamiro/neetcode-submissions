class Solution {
    func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
        var dict: [Int: Int] = [:]
        for num in nums {// O(n)
                dict[num, default: 0] += 1
            }

            if dict.count <= k {
                return Array(dict.keys)
            }
            return dict.sorted { $0.value > $1.value }.prefix(k).map { $0.key
            }
    }
}
