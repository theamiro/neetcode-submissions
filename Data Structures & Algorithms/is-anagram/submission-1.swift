class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        // guard s.count == t.count else { return false }

        // var table: [String: Int] = [:]
        // for char in s {
        //     table[String(char)] = (table[String(char)] ?? 0) + 1
        // }

        // var table2: [String: Int] = [:]
        // for char in t {
        //     table2[String(char)] = (table2[String(char)] ?? 0) + 1
        // }

        // let charactersMatch = table.keys.count == table2.keys.count
        // let valuesMatch = table.allSatisfy { table2[$0.key] == $0.value }
        
        // return charactersMatch && valuesMatch

        s.sorted() == t.sorted()
    }
}
