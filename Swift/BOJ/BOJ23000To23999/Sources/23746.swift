//
//  23746.swift
//  BOJ23000To23999
//
//  Created by 김민택 on 11/8/25.
//

//  문제 링크: https://www.acmicpc.net/problem/23746
//  알고리즘 분류: 구현, 문자열

import Shared

public struct BOJ23746: Solvable {
    public init() {}

    public func run() {
        // 메모리: 85848KB, 시간: 192ms, 코드 길이: 414B
        let N = Int(readLine()!)!
        var pattern = Array(repeating: "", count: 26)

        for _ in 0..<N {
            let input = readLine()!.split(separator: " ").map { String($0) }
            pattern[Int(input[1].first!.asciiValue!) - 65] = input[0]
        }

        let zip = readLine()!.map { pattern[Int($0.asciiValue!) - 65] }.joined().map { String($0) }
        let SE = readLine()!.split(separator: " ").map { Int($0)! - 1 }
        print(zip[SE[0]...SE[1]].joined())
    }
}
