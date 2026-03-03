//
//  10914.swift
//  BOJ10000To10999
//
//  Created by 김이안 on 3/3/26.
//

//  문제 링크: https://www.acmicpc.net/problem/10914
//  알고리즘 분류: 구현, 문자열

import Shared

public struct BOJ10914: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69108KB, 시간: 8ms, 코드 길이: 482B
        let n = Int(readLine()!)!
        let input = readLine()!.split(separator: " ").map { String($0) }
        var decrypt = Array(repeating: "", count: input.count)

        for word in input.indices {
            let crypted = input[word].map { Int($0.asciiValue!) - 97 }

            for idx in stride(from: 1, to: crypted.count, by: 2) {
                let decoded = UnicodeScalar((crypted[idx-1] + crypted[idx] - n + 26) % 26 + 97)!
                decrypt[word].append(Character(decoded))
            }
        }

        print(decrypt.joined(separator: " "))
    }
}
