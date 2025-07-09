//
//  10769.swift
//  BOJ10000To10999
//
//  Created by 김민택 on 7/9/25.
//

//  문제 링크: https://www.acmicpc.net/problem/10769
//  알고리즘 분류: 구현, 문자열, 파싱

import Shared

public struct BOJ10769: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69096KB, 시간: 8ms, 코드 길이: 390B
        let message = readLine()!.map { String($0) }
        var (happy, sad) = (0, 0)

        for idx in stride(from: 2, to: message.count, by: 1) where message[idx-2] == ":" && message[idx-1] == "-" {
            if message[idx] == "(" {
                sad += 1
            } else if message[idx] == ")" {
                happy += 1
            }
        }

        print(happy == 0 && sad == 0 ? "none" : (happy == sad ? "unsure" : (happy > sad ? "happy" : "sad")))
    }
}
