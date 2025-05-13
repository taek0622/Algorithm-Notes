//
//  2386.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 7/30/24.
//

//  문제 링크: https://www.acmicpc.net/problem/2386
//  알고리즘 분류: 구현, 문자열, 브루트포스 알고리즘

import Shared

public struct BOJ2386: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69096KB, 시간: 8ms, 코드 길이: 131B
        while let input = readLine()?.lowercased(), input != "#" {
            print(input.first!, input.filter { $0 == input.first! }.count - 1)
        }
    }
}
