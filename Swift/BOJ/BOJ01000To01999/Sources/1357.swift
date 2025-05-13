//
//  1357.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 6/10/24.
//

//  문제 링크: https://www.acmicpc.net/problem/1357
//  알고리즘 분류: 구현, 문자열

import Shared

public struct BOJ1357: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 147B
        let input = readLine()!.split(separator: " ").map { String($0.reversed()) }
        print(Int(String(String(Int(input[0])! + Int(input[1])!).reversed()))!)
    }
}
