//
//  20540.swift
//  BOJ20000To20999
//
//  Created by 김민택 on 7/29/25.
//

//  문제 링크: https://www.acmicpc.net/problem/20540
//  알고리즘 분류: 구현, 문자열

import Shared

public struct BOJ20540: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69096KB, 시간: 8ms, 코드 길이: 167B
        let mbti = readLine()!.map { String($0) }
        print("\(mbti[0] == "E" ? "I" : "E")\(mbti[1] == "S" ? "N" : "S")\(mbti[2] == "T" ? "F" : "T")\(mbti[3] == "J" ? "P" : "J")")
    }
}
