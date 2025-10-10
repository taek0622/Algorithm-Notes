//
//  30889.swift
//  BOJ30000To30999
//
//  Created by 김민택 on 10/10/25.
//

//  문제 링크: https://www.acmicpc.net/problem/30889
//  알고리즘 분류: 구현, 문자열

import Shared

public struct BOJ30889: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 319B
        var seat = Array(repeating: Array(repeating: ".", count: 20), count: 10)
        let N = Int(readLine()!)!

        for _ in 0..<N {
            let input = readLine()!.map { String($0) }
            seat[Int(Character(input[0]).asciiValue!) - 65][Int(Array(input[1...]).joined())! - 1] = "o"
        }

        print(seat.map { $0.joined() }.joined(separator: "\n"))
    }
}
