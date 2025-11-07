//
//  31496.swift
//  BOJ31000To31999
//
//  Created by 김민택 on 11/7/25.
//

//  문제 링크: https://www.acmicpc.net/problem/31496
//  알고리즘 분류: 구현, 문자열

import Shared

public struct BOJ31496: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69104KB, 시간: 388ms, 코드 길이: 302B
        let NS = readLine()!.split(separator: " ").map { String($0) }
        var count = 0

        for _ in 0..<Int(NS[0])! {
            let input = readLine()!.split(separator: " ").map { String($0) }

            if input[0].split(separator: "_").map { String($0) }.contains(NS[1]) {
                count += Int(input[1])!
            }
        }

        print(count)
    }
}
