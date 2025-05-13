//
//  9226.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 11/16/24.
//

//  문제 링크: https://www.acmicpc.net/problem/9226
//  알고리즘 분류: 구현, 문자열

import Shared

public struct BOJ9226: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69100KB, 시간: 8ms, 코드 길이: 330B
        while let input = readLine(), input != "#" {
            var word = input.map { String($0) }

            for idx in word.indices where word[idx] == "a" || word[idx] == "e" || word[idx] == "i" || word[idx] == "o" || word[idx] == "u" {
                word = Array(word[idx...]) + Array(word[..<idx])
                break
            }

            print(word.joined() + "ay")
        }
    }
}
