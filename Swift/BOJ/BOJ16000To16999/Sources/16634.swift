//
//  16634.swift
//  BOJ16000To16999
//
//  Created by 김민택 on 3/2/26.
//

//  문제 링크: https://www.acmicpc.net/problem/16634
//  알고리즘 분류: 구현, 문자열

import Shared

public struct BOJ16634: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 622B
        let input = readLine()!.split(separator: " ").map { String($0) }
        let message = input[1].map { String($0) }
        var result = ""

        if input[0] == "E" {
            var count = (message[0], 1)

            for idx in stride(from: 1, to: message.count, by: 1) {
                if message[idx] != count.0 {
                    result += "\(count.0)\(count.1)"
                    count = (message[idx], 1)
                } else {
                    count.1 += 1
                }
            }

            result += "\(count.0)\(count.1)"
        } else {
            for idx in stride(from: 1, to: message.count, by: 2) {
                result += String(repeating: message[idx-1], count: Int(message[idx])!)
            }
        }

        print(result)
    }
}
