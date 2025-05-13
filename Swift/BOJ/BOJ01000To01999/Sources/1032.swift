//
//  1032.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 6/12/24.
//

//  문제 링크: https://www.acmicpc.net/problem/1032
//  알고리즘 분류: 구현, 문자열

import Shared

public struct BOJ1032: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69100KB, 시간: 8ms, 코드 길이: 286B
        let N = Int(readLine()!)!
        var fileName = Array(readLine()!)

        for _ in 1..<N {
            let input = Array(readLine()!)

            for idx in fileName.indices where fileName[idx] != "?" && fileName[idx] != input[idx] {
                fileName[idx] = "?"
            }
        }

        print(fileName.map { String($0) }.joined())
    }
}
