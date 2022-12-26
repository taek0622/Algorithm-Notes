//
//  1316.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2022/12/26.
//

// 문제: https://www.acmicpc.net/problem/1316

class BOJ1316: Solvable {
    func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 500B
        let N = Int(readLine()!)!
        var countGroupWord = 0

        for _ in 0..<N {
            let input = Array(readLine()!)

            if checkGroupWord(input) {
                countGroupWord += 1
            }
        }

        print(countGroupWord)

        func checkGroupWord(_ input: [Character]) -> Bool {
            var char = Set<Character>()

            for idx in 0..<input.count {
                let isInsertable = char.insert(input[idx]).inserted
                if idx > 0 && input[idx - 1] != input[idx] && !isInsertable {
                    return false
                }
            }
            return true
        }
    }
}
