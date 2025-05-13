//
//  1297.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2/27/24.
//

//  문제 링크: https://www.acmicpc.net/problem/1297
//  알고리즘 분류: 기하학, 피타고라스 정리

import Foundation

import Shared

public struct BOJ1297: Solvable {
    public init() {}

    public func run() {
        // 메모리: 79508KB, 시간: 12ms, 코드 길이: 199B
        let DHW = readLine()!.split(separator: " ").map { Double($0)! }
        let x = sqrt((DHW[0] * DHW[0]) / (DHW[1] * DHW[1] + DHW[2] * DHW[2]))
        print("\(Int(DHW[1] * x)) \(Int(DHW[2] * x))")
    }
}
