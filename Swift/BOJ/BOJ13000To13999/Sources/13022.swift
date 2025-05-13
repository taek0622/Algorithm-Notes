//
//  13022.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 3/30/25.
//

//  문제 링크: https://www.acmicpc.net/problem/13022
//  알고리즘 분류: 구현, 문자열

import Shared

public struct BOJ13022: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69100KB, 시간: 8ms, 코드 길이: 731B
        let word = readLine()!.map { String($0) }
        var isCorrect = true
        var corrects = Array(repeating: "", count: 12)
        var idx = 0

        for idx in 0..<12 {
            corrects[idx] = String(repeating: "w", count: idx+1) + String(repeating: "o", count: idx+1) + String(repeating: "l", count: idx+1) + String(repeating: "f", count: idx+1)
        }

        while idx < word.count {
            if idx == 0 && word[idx] != "w" {
                isCorrect = false
            }

            var isOut = false

            for num in 1...12 where idx+num*4-1 < word.count {
                if word[idx..<idx+num*4].joined() == corrects[num-1] {
                    idx += num*4
                    isOut = true
                    break
                }
            }

            if !isOut {
                isCorrect = false
                break
            }
        }

        print(isCorrect ? 1 : 0)
    }
}
