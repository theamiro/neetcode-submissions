class Solution {
    private let separator: UInt8 = 35 // "#"
    func encode(_ strs: [String]) -> String {
            var encoded: [UInt8] = []

        for str in strs {
            let bytes = Array(str.utf8)

            encoded.append(contentsOf: String(bytes.count).utf8)
            encoded.append(separator)
            encoded.append(contentsOf: bytes)
        }

        return String(decoding: encoded, as: UTF8.self)
        }

        func decode(_ str: String) -> [String] {
            let bytes = Array(str.utf8)

        var result: [String] = []
        var index = 0

        while index < bytes.count {
            var length = 0

            while bytes[index] != separator {
                length = length * 10 + Int(bytes[index] - 48)
                index += 1
            }

            index += 1

            let end = index + length

            result.append(
                String(decoding: bytes[index..<end], as: UTF8.self)
            )

            index = end
        }

        return result
        }
}
