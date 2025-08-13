//
//  23303.swift
//  BOJ23000To23999
//
//  Created by 김민택 on 8/13/25.
//

//  문제 링크: https://www.acmicpc.net/problem/23303
//  알고리즘 분류: 구현, 문자열

import Shared

public struct BOJ23303: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69244KB, 시간: 8ms, 코드 길이: 196B
        let string = readLine()!.uppercased().map { String($0) }
        var result = "unrated"

        for idx in 0..<string.count-1 where string[idx] == "D" && string[idx+1] == "2" {
            result = "D2"
        }

        print(result)
    }
}
