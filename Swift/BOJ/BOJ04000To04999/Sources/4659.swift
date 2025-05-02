//
//  4659.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 3/21/25.
//

//  문제 링크: https://www.acmicpc.net/problem/4659
//  알고리즘 분류: 구현, 문자열

import Shared

public struct BOJ4659: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69100KB, 시간: 8ms, 코드 길이: 874B
        let vowels: Set<Character> = ["a", "e", "i", "o", "u"]

        while let input = readLine(), input != "end" {
            let pw = input.map { $0 }
            var isAcceptable = true
            var isContainVowel = false

            for idx in pw.indices {
                if !isContainVowel && vowels.contains(pw[idx]) {
                    isContainVowel = true
                }

                if idx > 0 && pw[idx-1] != "e" && pw[idx-1] != "o" && pw[idx-1] == pw[idx] {
                    isAcceptable = false
                    break
                }

                if idx > 1 && ((vowels.contains(pw[idx-2]) && vowels.contains(pw[idx-1]) && vowels.contains(pw[idx])) || (!vowels.contains(pw[idx-2]) && !vowels.contains(pw[idx-1]) && !vowels.contains(pw[idx]))) {
                    isAcceptable = false
                    break
                }
            }

            if !isContainVowel {
                isAcceptable = false
            }

            print("<\(input)> is\(isAcceptable ? "" : " not") acceptable.")
        }
    }
}
