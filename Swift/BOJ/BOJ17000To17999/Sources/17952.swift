//
//  17952.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 12/6/24.
//

//  문제 링크: https://www.acmicpc.net/problem/17952
//  알고리즘 분류: 구현, 자료 구조, 시뮬레이션, 스택

class BOJ17952: Solvable {
    func run() {
        // 메모리: 81596KB, 시간: 928ms, 코드 길이: 541B
        let N = Int(readLine()!)!
        var score = 0
        var homeworks = [(Int, Int)]()

        for _ in 0..<N {
            let input = readLine()!.split(separator: " ").map { Int($0)! }

            if input[0] == 0 {
                if !homeworks.isEmpty {
                    homeworks[homeworks.count - 1].1 -= 1

                    if homeworks.last!.1 == 0 {
                        score += homeworks.removeLast().0
                    }
                }

                continue
            }

            if input[2] - 1 == 0 {
                score += input[1]
                continue
            }

            homeworks.append((input[1], input[2] - 1))
        }

        print(score)
    }
}
