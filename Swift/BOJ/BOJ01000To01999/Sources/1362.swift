//
//  1362.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 10/7/24.
//

//  문제 링크: https://www.acmicpc.net/problem/1362
//  알고리즘 분류: 구현, 시뮬레이션

import Shared

public struct BOJ1362: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69100KB, 시간: 8ms, 코드 길이: 822B
        var idx = 1
        var start = true
        var weight = (0.0, 0.0)
        var status = ""

        while let input = readLine(), input != "0 0" {
            let effect = input.split(separator: " ")

            if start {
                weight = (Double(effect[0])!, Double(effect[1])!)
                start = false
                continue
            }

            switch effect[0] {
                case "#":
                    if status != "RIP" {
                        status = weight.1 > weight.0 * 0.5 && weight.1 < weight.0 * 2 ? ":-)" : ":-("
                    }

                    print("\(idx) \(status)")
                    idx += 1
                    start = true
                    status = ""
                    continue
                case "E":
                    weight.1 -= Double(effect[1])!

                    if weight.1 <= 0 {
                        status = "RIP"
                    }
                case "F":
                    if status != "RIP" {
                        weight.1 += Double(effect[1])!
                    }
                default:
                    break
            }
        }
    }
}
