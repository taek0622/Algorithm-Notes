//
//  3009.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/01/10.
//

// 문제: https://www.acmicpc.net/problem/3009

class BOJ3009: Solvable {
    func run() {
        solution3()
    }

    // 메모리: 69108KB, 시간: 12ms, 코드 길이: 422B
    private func solution1() {
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

    // 메모리: 69108KB, 시간: 12ms, 코드 길이: 358B
    private func solution2() {
        var points: (Set<Int>, Set<Int>) = ([], [])

        for _ in 0..<3 {
            let point = readLine()!.split(separator: " ").map { Int(String($0))! }

            if !points.0.insert(point[0]).inserted {
                points.0.remove(point[0])
            }

            if !points.1.insert(point[1]).inserted {
                points.1.remove(point[1])
            }
        }

        print("\(points.0.first!) \(points.1.first!)")
    }

    // 메모리: 69104KB, 시간: 8ms, 코드 길이: 208B
    private func solution3() {
        var location = (0, 0)

        for _ in 0..<3 {
            let point = readLine()!.split(separator: " ").map { Int(String($0))! }
            location.0 ^= point[0]
            location.1 ^= point[1]
        }

        print("\(location.0) \(location.1)")
    }
}
