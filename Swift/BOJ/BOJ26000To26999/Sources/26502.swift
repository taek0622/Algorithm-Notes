//
//  26502.swift
//  BOJ26000To26999
//
//  Created by 김민택 on 1/6/26.
//

//  문제 링크: https://www.acmicpc.net/problem/26502
//  알고리즘 분류: 구현, 문자열

import Shared

public struct BOJ26502: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 277B
        let n = Int(readLine()!)!
        let trans = ["y": "a", "a": "e", "e": "i", "i": "o", "o": "u", "u": "y", "Y": "A", "A": "E", "E": "I", "I": "O", "O": "U", "U": "Y"]

        for _ in 0..<n {
            print(readLine()!.map { trans[String($0)] != nil ? trans[String($0)]! : String($0) }.joined())
        }
    }
}
