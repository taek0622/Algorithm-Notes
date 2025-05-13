//
//  2857.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 6/30/24.
//

//  문제 링크: https://www.acmicpc.net/problem/2857
//  알고리즘 분류: 구현, 문자열

import Foundation

import Shared

public struct BOJ2857: Solvable {
    public init() {}

    public func run() {
        // 메모리: 76504KB, 시간: 12ms, 코드 길이: 161B
        var result = ""

        for idx in 1...5 where readLine()!.contains("FBI") {
            result += "\(idx) "
        }

        print(result == "" ? "HE GOT AWAY!" : result)
    }
}
