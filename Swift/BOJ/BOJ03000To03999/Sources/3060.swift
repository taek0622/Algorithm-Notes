//
//  3060.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 12/25/24.
//

//  문제 링크: https://www.acmicpc.net/problem/3060
//  알고리즘 분류: 수학, 구현, 시뮬레이션

class BOJ3060: Solvable {
    func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 247B
        let T = Int(readLine()!)!

        for _ in 0..<T {
            let N = Int(readLine()!)!
            var eat = readLine()!.split(separator: " ").map { Int($0)! }.reduce(0, +)
            var day = 1

            while eat <= N {
                eat *= 4
                day += 1
            }

            print(day)
        }
    }
}
