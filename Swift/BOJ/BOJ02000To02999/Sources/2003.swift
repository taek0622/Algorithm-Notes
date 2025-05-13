//
//  2003.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/09/14.
//

//  문제 링크: https://www.acmicpc.net/problem/2003
//  알고리즘 분류: 브루트포스 알고리즘, 누적 합, 두 포인터

import Shared

public struct BOJ2003: Solvable {
    public init() {}

    public func run() {
        solution2()
    }

    // 메모리: 70012KB, 시간: 36ms, 코드 길이: 506B
    private func solution1() {
        let input = readLine()!.split(separator: " ").map { Int(String($0))! }
        let A = readLine()!.split(separator: " ").map { Int(String($0))! }
        var (start, end, count) = (0, 0, 0)

        while start < input[0] && end < input[0] {
            let sum = A[start...end].reduce(0, +)

            if sum == input[1] {
                count += 1
                start += 1
                end += 1
            } else if sum < input[1] {
                end += 1
            } else if start < end {
                start += 1
            } else {
                start += 1
                end += 1
            }
        }

        print(count)
    }

    // 메모리: 70012KB, 시간: 12ms, 코드 길이: 512B
    private func solution2() {
        let input = readLine()!.split(separator: " ").map { Int(String($0))! }
        let A = readLine()!.split(separator: " ").map { Int(String($0))! }
        var (start, end, count) = (0, 0, 0)
        var sum = A[end]

        while start < input[0] && end < input[0] {
            if sum == input[1] {
                count += 1
                sum -= A[start]
                start += 1
            } else if sum < input[1] {
                end += 1

                if end < input[0] {
                    sum += A[end]
                }
            } else {
                sum -= A[start]
                start += 1
            }
        }

        print(count)
    }
}
