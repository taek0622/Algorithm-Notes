//
//  3448.swift
//  BOJ03000To03999
//
//  Created by 김민택 on 11/21/25.
//

//  문제 링크: https://www.acmicpc.net/problem/3448
//  알고리즘 분류: 구현, 문자열

import Foundation

import Shared

public struct BOJ3448: Solvable {
    public init() {}

    public func run() {
        // 메모리: 79508KB, 시간: 8ms, 코드 길이: 367B
        let N = Int(readLine()!)!

        for _ in 0..<N {
            var text = ""

            while let input = readLine(), input != "" {
                text += input
            }

            var eff = String(format: "%.1f", Double(text.filter { $0 != "#" }.count) / Double(text.count) * 100)

            if eff.last! == "0" {
                eff.removeLast(2)
            }

            print("Efficiency ratio is \(eff)%.")
        }
    }
}
