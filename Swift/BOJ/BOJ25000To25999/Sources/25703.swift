//
//  25703.swift
//  BOJ25000To25999
//
//  Created by 김민택 on 6/21/25.
//

//  문제 링크: https://www.acmicpc.net/problem/25703
//  알고리즘 분류: 구현

import Shared

public struct BOJ25703: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69100KB, 시간: 8ms, 코드 길이: 207B
        let N = Int(readLine()!)!
        print("int a;")

        for num in 1...N {
            print("int \(String(repeating: "*", count: num))ptr\(num == 1 ? "" : "\(num)") = &\(num == 1 ? "a" : "ptr")\(num <= 2 ? "" : "\(num-1)");")
        }
    }
}
