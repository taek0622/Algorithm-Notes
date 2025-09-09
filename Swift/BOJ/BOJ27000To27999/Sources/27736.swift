//
//  27736.swift
//  BOJ27000To27999
//
//  Created by 김민택 on 9/9/25.
//

//  문제 링크: https://www.acmicpc.net/problem/27736
//  알고리즘 분류: 구현

import Shared

public struct BOJ27736: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 197B
        let N = Int(readLine()!)!
        let vote = readLine()!.split(separator: " ").map { Int($0)! }
        print(vote.filter { $0 == 0 }.count >= (N+1)/2 ? "INVALID" : vote.reduce(0, +) > 0 ? "APPROVED" : "REJECTED")
    }
}
