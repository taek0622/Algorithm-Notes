//
//  11971.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 1/4/25.
//

//  문제 링크: https://www.acmicpc.net/problem/11971
//  알고리즘 분류: 구현, 시뮬레이션

class BOJ11971: Solvable {
    func run() {
        // 메모리: 69108KB, 시간: 8ms, 코드 길이: 637B
        let NM = readLine()!.split(separator: " ").map { Int($0)! }
        var roads = Array(repeating: 0, count: 100)
        var part = 0

        for _ in 0..<NM[0] {
            let input = readLine()!.split(separator: " ").map { Int($0)! }

            for road in part..<input[0]+part {
                roads[road] = input[1]
            }

            part += input[0]
        }

        part = 0

        for _ in 0..<NM[1] {
            let input = readLine()!.split(separator: " ").map { Int($0)! }

            for road in part..<input[0]+part {
                if input[1] <= roads[road] {
                    roads[road] = 0
                } else {
                    roads[road] = input[1] - roads[road]
                }
            }

            part += input[0]
        }

        print(roads.max()!)
    }
}
