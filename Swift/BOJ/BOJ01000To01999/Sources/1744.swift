//
//  1744.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 1/28/24.
//

//  문제 링크: https://www.acmicpc.net/problem/1744
//  알고리즘 분류: 그리디 알고리즘, 정렬, 많은 조건 분기

import Shared

public struct BOJ1744: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69108KB, 시간: 8ms, 코드 길이: 784B
        let N = Int(readLine()!)!
        var positive = [Int]()
        var negative = [Int]()
        var zeroCount = 0
        var sum = 0

        for _ in 0..<N {
            let input = Int(readLine()!)!

            if input > 0 {
                positive.append(input)
            } else if input < 0 {
                negative.append(input)
            } else {
                zeroCount += 1
            }
        }

        positive.sort(by: >)
        negative.sort()

        var idx = 1

        while idx < positive.count {
            if positive[idx] == 1 {
                sum += positive[idx-1] + positive[idx]
            } else {
                sum += positive[idx-1] * positive[idx]
            }

            idx += 2
        }

        if idx == positive.count {
            sum += positive[idx-1]
        }

        idx = 1

        while idx < negative.count {
            sum += negative[idx-1] * negative[idx]
            idx += 2
        }

        if idx == negative.count && zeroCount == 0 {
            sum += negative[idx-1]
        }

        print(sum)
    }
}
