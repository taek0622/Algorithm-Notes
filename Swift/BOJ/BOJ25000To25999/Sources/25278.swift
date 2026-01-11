//
//  25278.swift
//  BOJ25000To25999
//
//  Created by 김민택 on 1/11/26.
//

//  문제 링크: https://www.acmicpc.net/problem/25278
//  알고리즘 분류: 구현, 문자열

import Shared

public struct BOJ25278: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69104KB, 시간: 4ms, 코드 길이: 375B
        let n = Int(readLine()!)!
        var (w, t, o) = (0, -30, 0)

        for _ in 0..<n {
            let input = readLine()!.split(separator: " ").map { String($0) }

            if input[0] == "ocean" {
                w += Int(input[1])!
            } else if input[0] == "oxygen" {
                o += Int(input[1])!
            } else {
                t += Int(input[1])!
            }
        }

        print("\(w >= 9 && t >= 8 && o >= 14 ? "" : "not ")liveable")
    }
}
