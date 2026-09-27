class Solution {
    func groupAnagrams(_ strs: [String]) -> [[String]] {
        if strs.count == 1 {
            return [strs]
        }

        var groups: [String: [String]] = [:]

        for str in strs {
            let key = String(str.sorted())
            groups[key, default: []].append(str)
        }

        return Array(groups.values)
    }
}
