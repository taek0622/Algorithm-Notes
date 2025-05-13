//
//  1759.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/02/01.
//

//  문제 링크: https://www.acmicpc.net/problem/1759
//  알고리즘 분류: 수학, 브루트포스 알고리즘, 조합론, 백트래킹

import Shared

public struct BOJ1759: Solvable {
    public init() {}

    public func run() {
        solution2()
    }

    // 메모리: 69120KB, 시간: 20ms, 코드 길이: 693B
    private func solution1() {
        let LC = readLine()!.split(separator: " ").map { Int(String($0))! }
        let chars = readLine()!.split(separator: " ").map { String($0) }.sorted()
        let vowels: Set<String> = ["a", "e", "i", "o", "u"]
        var result = ""

        for idx in 0...LC[1]-LC[0] {
            dfs(idx, [chars[idx]])
        }

        print(result)

        func dfs(_ current: Int, _ password: Set<String>) {
            if password.count == LC[0] {
                if password.subtracting(vowels).count >= 2 && password.intersection(vowels).count >= 1 {
                    result += "\(password.sorted().joined())\n"
                }
                
                return
            }
            
            for idx in current+1..<chars.count {
                var nextPW = password
                nextPW.insert(chars[idx])
                dfs(idx, nextPW)
            }
        }
    }

    // 메모리: 69112KB, 시간: 12ms, 코드 길이: 873B
    private func solution2() {
        let LC = readLine()!.split(separator: " ").map { Int(String($0))! }
        let chars = readLine()!.split(separator: " ").map { String($0) }.sorted()
        let vowels = ["a", "e", "i", "o", "u"]
        var password = [String]()

        for idx in 0...LC[1]-LC[0] {
            password.append(chars[idx])
            dfs(idx)
            password.removeLast()
        }

        func dfs(_ current: Int) {
            if password.count == LC[0] {
                var (conCount, vowCount) = (0, 0)

                for char in password where (vowCount < 1 || conCount < 2) {
                    if vowels.contains(char) {
                        vowCount += 1
                        continue
                    }

                    conCount += 1
                }

                if conCount >= 2 && vowCount >= 1 {
                    print(password.joined())
                }

                return
            }

            for idx in current+1..<chars.count {
                password.append(chars[idx])
                dfs(idx)
                password.removeLast()
            }
        }
    }
}
