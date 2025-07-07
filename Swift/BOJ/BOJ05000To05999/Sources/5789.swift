//
//  5789.swift
//  BOJ05000To05999
//
//  Created by 김민택 on 7/7/25.
//

//  문제 링크: https://www.acmicpc.net/problem/5789
//  알고리즘 분류: 구현, 문자열

import Shared

public struct BOJ5789: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69100KB, 시간: 8ms, 코드 길이: 180B
        let N = Int(readLine()!)!

        for _ in 0..<N {
            let string = readLine()!.map { $0 }
            let idx = string.count / 2
            print("Do-it\(string[idx] != string[idx-1] ? "-Not" : "")")
        }
    }
}
