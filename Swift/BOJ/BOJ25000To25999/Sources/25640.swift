//
//  25640.swift
//  BOJ25000To25999
//
//  Created by 김민택 on 6/22/25.
//

//  문제 링크: https://www.acmicpc.net/problem/25640
//  알고리즘 분류: 구현, 문자열

import Shared

public struct BOJ25640: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69100KB, 시간: 8ms, 코드 길이: 139B
        let jinho = readLine()!
        let N = Int(readLine()!)!
        var count = 0

        for _ in 0..<N where readLine()! == jinho {
            count += 1
        }

        print(count)
    }
}
