//
//  10372.swift
//  BOJ10000To10999
//
//  Created by 김민택 on 3/1/26.
//

//  문제 링크: https://www.acmicpc.net/problem/10372
//  알고리즘 분류: 구현, 브루트포스 알고리즘

import Foundation

import Shared

public struct BOJ10372: Solvable {
    public init() {}

    public func run() {
        // 메모리: 79508KB, 시간: 8ms, 코드 길이: 482B
        let segment = [6, 2, 5, 5, 4, 5, 6, 3, 7, 6]
        let n = Int(readLine()!)!
        var res = "Impossible"

        outer: for hour in 0..<24 {
            let hourCount = segment[hour / 10] + segment[hour % 10]

            for minute in 0..<60 {
                let minuteCount = segment[minute / 10] + segment[minute % 10]

                if hourCount + minuteCount == n {
                    res = String(format: "%02d", hour) + ":" + String(format: "%02d", minute)
                    break outer
                }
            }
        }

        print(res)
    }
}
