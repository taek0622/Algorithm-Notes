//
//  34668.swift
//  BOJ34000To34999
//
//  Created by 김이안 on 3/12/26.
//

//  문제 링크: https://www.acmicpc.net/problem/34668
//  알고리즘 분류: 수학, 구현, 사칙연산, 시뮬레이션

import Foundation

import Shared

public struct BOJ34668: Solvable {
    public init() {}

    public func run() {
        // 메모리: 79508KB, 시간: 8ms, 코드 길이: 319B
        let Q = Int(readLine()!)!

        for _ in 0..<Q {
            let M = Int(readLine()!)! / 50
            let time = M * 12 + 6 + 360
            let hour = time / 60
            let minute = time % 60
            print((hour == 24 && 0...6 ~= minute) || hour < 24 ? "\(String(format: "%02d", hour % 24)):\(String(format: "%02d", minute))" : -1)
        }
    }
}
