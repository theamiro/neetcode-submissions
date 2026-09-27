class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        if nums.count == 2 {
            if nums[0] + nums[1] == target {
                return [0,1]
            }
        }
        var indices: [Int] = []
        for (index, num) in nums.enumerated() {
            let remainder = target - nums[index]
            if let remainderIndex = nums.firstIndex(where: { 
                $0 == remainder
            }) {
                if remainderIndex != index {
                    indices = [remainderIndex, index].sorted()
                }
            }
        }
        return indices
    }
}
