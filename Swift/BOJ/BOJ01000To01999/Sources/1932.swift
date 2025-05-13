//
//  1932.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 9/30/23.
//

//  문제 링크: https://www.acmicpc.net/problem/1932
//  알고리즘 분류: 다이나믹 프로그래밍

import Shared

public struct BOJ1932: Solvable {
    public init() {}

    public func run() {
        solution4()
    }

    // 메모리: 71124KB, 시간: 56ms, 코드 길이: 548B
    private func solution1() {
        let n = Int(readLine()!)!
        var triangle = [[Int]]()

        for _ in 0..<n {
            triangle.append(readLine()!.split(separator: " ").map { Int(String($0))! })
        }

        var sum = triangle

        for row in 0..<n-1 {
            for col in triangle[row].indices {
                let left = sum[row][col] + triangle[row+1][col]
                let right = sum[row][col] + triangle[row+1][col+1]

                if sum[row+1][col] < left {
                    sum[row+1][col] = left
                }

                if sum[row+1][col+1] < right {
                    sum[row+1][col+1] = right
                }
            }
        }

        print(sum[n-1].max()!)
    }

    // 메모리: 70212KB, 시간: 52ms, 코드 길이: 411B
    private func solution2() {
        let n = Int(readLine()!)!
        var triangle = [[Int]]()

        for _ in 0..<n {
            triangle.append(readLine()!.split(separator: " ").map { Int(String($0))! })
        }

        for row in 1..<n {
            for col in triangle[row].indices {
                let left = col - 1 >= 0 ? triangle[row-1][col-1] : 0
                let right = col < row ? triangle[row-1][col] : 0
                triangle[row][col] += max(left, right)
            }
        }

        print(triangle[n-1].max()!)
    }

    // 메모리: 70216KB, 시간: 48ms, 코드 길이: 403B
    private func solution3() {
        let n = Int(readLine()!)!
        var triangle = [[Int]]()

        for _ in 0..<n {
            triangle.append(readLine()!.split(separator: " ").map { Int($0)! })
        }

        for row in 1..<n {
            for col in triangle[row].indices {
                let left = col - 1 >= 0 ? triangle[row-1][col-1] : 0
                let right = col < row ? triangle[row-1][col] : 0
                triangle[row][col] += max(left, right)
            }
        }

        print(triangle[n-1].max()!)
    }

    // 메모리: 70200KB, 시간: 48ms, 코드 길이: 410B
    private func solution4() {
        let n = Int(readLine()!)!
        var triangle = Array(repeating: [Int](), count: n)

        for i in 0..<n {
            triangle[i] = readLine()!.split(separator: " ").map { Int($0)! }
        }

        for row in 1..<n {
            for col in 0...row {
                let left = col-1 >= 0 ? triangle[row-1][col-1] : 0
                let right = col < row ? triangle[row-1][col] : 0
                triangle[row][col] += max(left, right)
            }
        }

        print(triangle[n-1].max()!)
    }
}
