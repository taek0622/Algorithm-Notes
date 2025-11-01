//
//  34032.swift
//  BOJ34000To34999
//
//  Created by 김민택 on 11/1/25.
//

//  문제 링크: https://www.acmicpc.net/problem/34032
//  알고리즘 분류: 구현, 문자열

import Shared

public struct BOJ34032: Solvable {
    public init() {}

    public func run() {
        // 메모리: 70884KB, 시간: 40ms, 코드 길이: 125B
        let N = Int(readLine()!)!
        let commands = readLine()!.filter { $0 == "O" }.count
        print(commands >= (N + 1) / 2 ? "Yes" : "No")
    }
}
