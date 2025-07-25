//
//  2712.swift
//  BOJ02000To02999
//
//  Created by 김민택 on 7/25/25.
//

//  문제 링크: https://www.acmicpc.net/problem/2712
//  알고리즘 분류: 수학, 구현, 사칙연산

import Foundation

import Shared

public struct BOJ2712: Solvable {
    public init() {}

    public func run() {
        // 메모리: 79512KB, 시간: 8ms, 코드 길이: 513B
        let T = Int(readLine()!)!

        for _ in 0..<T {
            let input = readLine()!.split(separator: " ").map { String($0) }
            let num = Double(input[0])!

            if input[1] == "kg" {
                print(String(format: "%.4f lb", num * 2.2046))
            } else if input[1] == "lb" {
                print(String(format: "%.4f kg", num * 0.4536))
            } else if input[1] == "l" {
                print(String(format: "%.4f g", num * 0.2642))
            } else if input[1] == "g" {
                print(String(format: "%.4f l", num * 3.7854))
            }
        }
    }
}
