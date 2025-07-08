//
//  11586.swift
//  BOJ11000To11999
//
//  Created by 김민택 on 7/8/25.
//

//  문제 링크: https://www.acmicpc.net/problem/11586
//  알고리즘 분류: 구현, 문자열

import Shared

public struct BOJ11586: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69100KB, 시간: 8ms, 코드 길이: 358B
        let N = Int(readLine()!)!
        var mirror = Array(repeating: "", count: N)

        for idx in 0..<N {
            mirror[idx] = readLine()!
        }

        let K = Int(readLine()!)!

        if K == 1 {
            print(mirror.joined(separator: "\n"))
        } else if K == 2 {
            print(mirror.map { String($0.reversed()) }.joined(separator: "\n"))
        } else {
            print(mirror.reversed().joined(separator: "\n"))
        }
    }
}
