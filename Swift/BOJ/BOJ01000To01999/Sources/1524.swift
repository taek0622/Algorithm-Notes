//
//  1524.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 10/28/24.
//

//  문제 링크: https://www.acmicpc.net/problem/1524
//  알고리즘 분류: 구현, 정렬

class BOJ1524: Solvable {
    func run() {
        solution2()
    }

    // 메모리: 78652KB, 시간: 212ms, 코드 길이: 583B
    private func solution1() {
        let T = Int(readLine()!)!

        for _ in 0..<T {
            _ = readLine()
            _ = readLine()
            var sejun = readLine()!.split(separator: " ").map { Int($0)! }.sorted(by: >)
            var sebi = readLine()!.split(separator: " ").map { Int($0)! }.sorted(by: >)

            while sejun.count > 0 && sebi.count > 0 && sejun.count + sebi.count > 1 {
                let sejunWeakest = sejun.last!
                let sebiWeakest = sebi.last!

                if sebiWeakest > sejunWeakest {
                    sejun.removeLast()
                } else {
                    sebi.removeLast()
                }
            }

            print(sejun.count > sebi.count ? "S" : "B")
        }
    }

    // 메모리: 77952KB, 시간: 176ms, 코드 길이: 267B
    private func solution2() {
        let T = Int(readLine()!)!

        for _ in 0..<T {
            _ = readLine()
            _ = readLine()
            let sejun = readLine()!.split(separator: " ").map { Int($0)! }.max()!
            let sebi = readLine()!.split(separator: " ").map { Int($0)! }.max()!

            print(sejun < sebi ? "B" : "S")
        }
    }
}
