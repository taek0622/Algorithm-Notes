//
//  9557.swift
//  
//
//  Created by 김민택 on 1/30/26.
//

//  문제 링크: https://www.acmicpc.net/problem/9557
//  알고리즘 분류: 구현, 문자열

import Shared

public struct BOJ9557: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 575B
        let T = Int(readLine()!)!

        for _ in 0..<T {
            let N = Int(readLine()!)!
            let words = readLine()!.split(separator: " ").map { String($0) }
            var res = words
            var eng = -1

            for idx in 0..<N where !words[idx].contains("#") {
                eng = idx
            }

            if eng != -1 {
                res = []

                for idx in stride(from: eng+1, to: N, by: 1) {
                    res.append(words[idx])
                }

                res.append(words[eng])

                for idx in stride(from: 0, to: eng, by: 1) {
                    res.append(words[idx])
                }
            }

            print(res.joined(separator: " "))
        }
    }
}
