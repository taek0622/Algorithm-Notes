//
//  1092.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2/3/24.
//

//  문제 링크: https://www.acmicpc.net/problem/1092
//  알고리즘 분류: 그리디 알고리즘, 정렬

import Shared

public struct BOJ1092: Solvable {
    public init() {}

    public func run() {
        // 메모리: 70100KB, 시간: 28ms, 코드 길이: 744B
        _ = readLine()
        var cranes = readLine()!.split(separator: " ").map { Int($0)! }.sorted(by: >)
        _ = readLine()
        var boxes = readLine()!.split(separator: " ").map { Int($0)! }.sorted(by: >)

        while !cranes.isEmpty && cranes.last! < boxes.last! {
            cranes.removeLast()
        }

        if cranes.isEmpty || cranes.first! < boxes.first! {
            print(-1)
        } else {
            var time = 0

            while !boxes.isEmpty {
                for craneIdx in cranes.indices {
                    var boxIdx = 0

                    while boxIdx < boxes.count && cranes[craneIdx] < boxes[boxIdx] {
                        boxIdx += 1
                    }

                    if boxIdx < boxes.count {
                        boxes.remove(at: boxIdx)
                    }
                }

                time += 1
            }

            print(time)
        }
    }
}
