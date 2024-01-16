//
//  5052.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 1/16/24.
//

//  문제 링크: https://www.acmicpc.net/problem/5052
//  알고리즘 분류: 자료 구조, 문자열, 정렬, 트리, 트라이

class BOJ5052: Solvable {
    func run() {
        solution2()
    }

    // 메모리: 76112KB, 시간: 552ms, 코드 길이: 750B
    private func solution1() {
        for _ in 0..<Int(readLine()!)! {
            var trie = Trie()
            var isConsist = true

            for _ in 0..<Int(readLine()!)! {
                let string = Array(readLine()!)

                if isConsist {
                    isConsist = trie.insert(string)
                }
            }

            print(isConsist ? "YES" : "NO")
        }

        struct Trie: CustomStringConvertible {
            private var next = [Character: Trie]()
            var isEnd = false
            var description: String {
                "\(next)"
            }

            mutating func insert(_ s: Array<Character>, _ idx: Int = 0) -> Bool {
                if isEnd {
                    return false
                }

                if s.count == idx {
                    isEnd = true
                    return next.isEmpty ? true : false
                }

                return next[s[idx], default: Trie()].insert(s, idx+1)
            }
        }
    }

    // 메모리: 69628KB, 시간: 112ms, 코드 길이: 398B
    private func solution2() {
        for _ in 0..<Int(readLine()!)! {
            var numbers = [String]()

            for _ in 0..<Int(readLine()!)! {
                numbers.append(readLine()!)
            }

            numbers.sort()

            print(checkConsistency(numbers) ? "YES" : "NO")
        }

        func checkConsistency(_ numbers: [String]) -> Bool {
            for idx in 0..<numbers.count-1 where numbers[idx+1].hasPrefix(numbers[idx]) {
                return false
            }

            return true
        }
    }
}
