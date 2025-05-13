//
//  17413.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 11/11/24.
//

//  문제 링크: https://www.acmicpc.net/problem/17413
//  알고리즘 분류: 구현, 자료 구조, 문자열, 스택

import Shared

public struct BOJ17413: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69568KB, 시간: 28ms, 코드 길이: 541B
        let S = readLine()!
        var result = ""
        var isTag = false
        var temp = ""

        for char in S {
            if isTag {
                if char == ">" {
                    isTag = false
                }

                result += "\(char)"
                continue
            }

            if char == "<" {
                isTag = true
                result += "\(String(temp.reversed()))\(char)"
                temp = ""
                continue
            }

            if char == " " {
                result += "\(String(temp.reversed())) "
                temp = ""
                continue
            }

            temp += "\(char)"
        }

        result += "\(String(temp.reversed()))"

        print(result)
    }
}
