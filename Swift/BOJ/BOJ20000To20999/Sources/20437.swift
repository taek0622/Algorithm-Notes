//
//  20437.swift
//  BOJ20000To20999
//
//  Created by 김이안 on 4/8/26.
//

//  문제 링크: https://www.acmicpc.net/problem/20437
//  알고리즘 분류: 문자열, 슬라이딩 윈도우

import Shared

public struct BOJ20437: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69252KB, 시간: 40ms, 코드 길이: 652B
        let T = Int(readLine()!)!

        for _ in 0..<T {
            var alphabets = Array(repeating: [Int](), count: 26)
            let W = readLine()!.map { Int($0.asciiValue!) - 97 }
            let K = Int(readLine()!)!
            var minLength = Int.max
            var maxLength = Int.min

            for idx in W.indices {
                alphabets[W[idx]].append(idx)
            }

            for alphabet in alphabets where alphabet.count >= K {
                for idx in 0...alphabet.count - K {
                    minLength = min(minLength, alphabet[idx+K-1]-alphabet[idx]+1)
                    maxLength = max(maxLength, alphabet[idx+K-1]-alphabet[idx]+1)
                }
            }

            print(minLength == Int.max ? -1 : "\(minLength) \(maxLength)")
        }
    }
}
