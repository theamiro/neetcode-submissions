class Solution {
    func encode(_ strs: [String]) -> String {
            return strs.map { str in
                str.count.description + "#" + str
            }
            .joined()
        }

        func decode(_ str: String) -> [String] {
            var result: [String] = []
    var index = str.startIndex

    while index < str.endIndex {
        guard let separator = str[index...].firstIndex(of: "#"),
              let length = Int(str[index..<separator]) else {
            return []
        }

        let start = str.index(after: separator)

        guard let end = str.index(
            start,
            offsetBy: length,
            limitedBy: str.endIndex
        ) else {
            return []
        }

        result.append(String(str[start..<end]))
        index = end
    }

    return result
        }
}
