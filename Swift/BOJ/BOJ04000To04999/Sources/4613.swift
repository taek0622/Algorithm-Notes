//
//  4613.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 11/7/24.
//

//  문제 링크: https://www.acmicpc.net/problem/4613
//  알고리즘 분류: 구현, 문자열

import Shared

public struct BOJ4613: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69100KB, 시간: 8ms, 코드 길이: 228B
        while let input = readLine(), input != "#" {
            let packet = input.map { $0 == " " ? 0 : Int($0.asciiValue!) - 64 }
            var sum = 0

            for idx in packet.indices {
                sum += (idx + 1) * packet[idx]
            }

            print(sum)
        }
    }
}
