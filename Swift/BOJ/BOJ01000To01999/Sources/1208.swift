//
//  1208.swift
//  BOJ01000To01999
//
//  Created by 김이안 on 4/7/26.
//

//  문제 링크: https://www.acmicpc.net/problem/1208
//  알고리즘 분류: 이분 탐색, 집합과 맵, 중간에서 만나기

import Shared

public struct BOJ1208: Solvable {
    public init() {}

    public func run() {
        solution2()
    }

    // 메모리: 93892KB, 시간: 312ms, 코드 길이: 584B
    private func solution1() {
        let NS = readLine()!.split(separator: " ").map { Int($0)! }
        let A = readLine()!.split(separator: " ").map { Int($0)! }
        var leftSum = [Int: Int]()
        var count = 0

        for bit in 0..<(1<<(NS[0]/2)) {
            var sum = 0

            for choose in 0..<NS[0]/2 where bit & 1<<choose != 0 {
                sum += A[choose]
            }

            leftSum[sum, default: 0] += 1
        }

        for bit in 0..<(1<<(NS[0]-NS[0]/2)) {
            var sum = 0

            for choose in 0..<NS[0]-NS[0]/2 where bit & 1<<choose != 0 {
                sum += A[choose + NS[0]/2]
            }

            count += leftSum[NS[1]-sum, default: 0]
        }

        print(NS[1] == 0 ? count - 1 : count)
    }

    // 메모리: 93892KB, 시간: 196ms, 코드 길이: 649B
    private func solution2() {
        let NS = readLine()!.split(separator: " ").map { Int(String($0))! }
        let A = [0] + readLine()!.split(separator: " ").map { Int(String($0))! }
        var leftSum = [Int: Int]()
        var count = 0

        leftPart(0, 0)
        rightPart(NS[0]/2, 0)
        print(NS[1] == 0 ? count - 1 : count)

        func leftPart(_ current: Int, _ sum: Int) {
            leftSum[sum, default: 0] += 1

            for next in stride(from: current+1, through: NS[0]/2, by: 1) {
                leftPart(next, sum+A[next])
            }
        }

        func rightPart(_ current: Int, _ sum: Int) {
            count += leftSum[NS[1]-sum, default: 0]

            for next in stride(from: current+1, through: NS[0], by: 1) {
                rightPart(next, sum+A[next])
            }
        }
    }
}
