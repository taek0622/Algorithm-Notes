//
//  33277.swift
//  BOJ33000To33999
//
//  Created by 김민택 on 10/24/25.
//

//  문제 링크: https://www.acmicpc.net/problem/33277
//  알고리즘 분류: 수학, 구현, 사칙연산

import Foundation

import Shared

public struct BOJ33277: Solvable {
    public init() {}

    public func run() {
        // 메모리: 79508KB, 시간: 8ms, 코드 길이: 231B
        let NM = readLine()!.split(separator: " ").map { Double($0)! }
        let percent = Int((NM[1] / NM[0]) * (24 * 60 * 60))
        print("\(String(format: "%02d", percent / 3600)):\(String(format: "%02d", percent % 3600 / 60))")
    }
}
