//
//  3009.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/01/10.
//

// 문제: https://www.acmicpc.net/problem/3009

class BOJ3009: Solvable {
    func run() {
        // 메모리: 69108KB, 시간: 12ms, 코드 길이: 422B
        var pointX = Set<Int>()
        var pointY = Set<Int>()
        var result = ""

        for _ in 0..<3 {
            let point = readLine()!.split(separator: " ").map { Int(String($0))! }

            if !pointX.insert(point[0]).inserted {
                pointX.remove(point[0])
            }

            if !pointY.insert(point[1]).inserted {
                pointY.remove(point[1])
            }
        }

        pointX.forEach {
            result += "\($0) "
        }

        pointY.forEach {
            result += "\($0)"
        }

        print(result)
    }
}
