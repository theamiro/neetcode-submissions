class Solution {
    func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
        var dict: [Int: Int] = [:]
        for num in nums {
                dict[num, default: 0] += 1
            }

            if dict.count <= k {
                return dict.keys.sorted()
            }
            return dict.sorted { $0.value < $1.value }.suffix(k).map { $0.key }
    }
}
