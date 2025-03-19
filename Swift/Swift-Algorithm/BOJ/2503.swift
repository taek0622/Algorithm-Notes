//
//  2503.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 3/19/25.
//

//  문제 링크: https://www.acmicpc.net/problem/2503
//  알고리즘 분류: 구현, 브루트포스 알고리즘

class BOJ2503: Solvable {
    func run() {
        // 메모리: 69108KB, 시간: 8ms, 코드 길이: 929B
        var candidates = [[Int]]()

        for hundred in 1...9 {
            for ten in 1...9 where hundred != ten {
                for one in 1...9 where hundred != one && ten != one {
                    candidates.append([hundred, ten, one])
                }
            }
        }

        let N = Int(readLine()!)!

        for _ in 0..<N {
            let input = readLine()!.split(separator: " ").map { Int($0)! }
            var tempCandidates = [[Int]]()

            for candidate in candidates {
                var (strike, ball) = (0, 0)
                var num = [input[0] / 100, input[0] % 100 / 10, input[0] % 10]

                for idx in 0..<3 {
                    if candidate[idx] == num[idx] {
                        strike += 1
                    }

                    if candidate[idx] != num[idx] && num.contains(candidate[idx]) {
                        ball += 1
                    }
                }

                if (strike, ball) == (input[1], input[2]) {
                    tempCandidates.append(candidate)
                }
            }

            candidates = tempCandidates
        }

        print(candidates.count)
    }
}
