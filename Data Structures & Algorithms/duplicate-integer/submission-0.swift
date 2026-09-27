class Solution {
    func hasDuplicate(_ nums: [Int]) -> Bool {
        let dedupNums = Set<Int>(nums) // 0(n)
        return dedupNums.count < nums.count
    }
}
