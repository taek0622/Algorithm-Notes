//
//  1181.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/01/05.
//

// 문제: https://www.acmicpc.net/problem/1181

class BOJ1181: Solvable {
    func run() {
        solution3()
    }

    // 메모리: 74408KB, 시간: 708ms, 코드 길이: 519B
    private func solution1() {
        let N = Int(readLine()!)!
        var words = Set<String>()
        var copiedWords = [String]()
        var result = ""

        for _ in 0..<N {
            words.insert(readLine()!)
        }

        copiedWords = Array(words)

        let stringSort: (String, String) -> Bool = { first, second in
            if first.count < second.count {
                return first.count < second.count
            } else if first.count == second.count {
                return first < second
            }

            return false
        }

        copiedWords.sort(by: stringSort)

        for word in copiedWords {
            result += "\(word)\n"
        }

        print(result)
    }

    // 메모리: 74196KB, 시간: 704ms, 코드 길이: 477B
    private func solution2() {
        let N = Int(readLine()!)!
        var words = Set<String>()
        var copiedWords = [String]()

        for _ in 0..<N {
            words.insert(readLine()!)
        }

        copiedWords = Array(words)

        let stringSort: (String, String) -> Bool = { first, second in
            if first.count < second.count {
                return first.count < second.count
            } else if first.count == second.count {
                return first < second
            }

            return false
        }

        copiedWords.sort(by: stringSort)

        print(copiedWords.joined(separator: "\n"))
    }

    // 메모리: 75400KB, 시간: 60ms, 코드 길이: 339B
    private func solution3() {
        let N = Int(readLine()!)!
        var words = Set<String>()
        var copiedWords = [String]()

        for _ in 0..<N {
            words.insert(readLine()!)
        }

        copiedWords = Array(words)

        let wordTuple: [(Int, String)] = copiedWords.map { ($0.count, $0) }

        print(wordTuple.sorted(by: { $0.0 == $1.0 ? $0.1 < $1.1 : $0.0 < $1.0 }).map { $0.1 }.joined(separator: "\n"))
    }
}
