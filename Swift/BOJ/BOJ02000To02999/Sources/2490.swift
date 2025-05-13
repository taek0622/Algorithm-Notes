//
//  2490.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 6/4/24.
//

//  문제 링크: https://www.acmicpc.net/problem/2490
//  알고리즘 분류: 구현

import Shared

public struct BOJ2490: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69100KB, 시간: 8ms, 코드 길이: 303B
        for _ in 0..<3 {
            let input = readLine()!.split(separator: " ").filter { $0 == "0" }.count

            switch input {
            case 0:
                print("E")
            case 1:
                print("A")
            case 2:
                print("B")
            case 3:
                print("C")
            case 4:
                print("D")
            default:
                break
            }
        }
    }
}
