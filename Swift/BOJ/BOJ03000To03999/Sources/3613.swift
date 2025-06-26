//
//  3613.swift
//  BOJ03000To03999
//
//  Created by 김민택 on 6/26/25.
//

//  문제 링크: https://www.acmicpc.net/problem/3613
//  알고리즘 분류: 구현, 문자열, 많은 조건 분기, 파싱

import Shared

public struct BOJ3613: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69108KB, 시간: 8ms, 코드 길이: 1019B
        var name = readLine()!.map { $0 }

        if name.contains("_") && name.last! != "_" && name.first! != "_" && !name.contains(where: { 65...90 ~= $0.asciiValue! }) {
            for idx in name.indices where name[idx] == "_" && idx+1 < name.count {
                if name[idx+1] == "_" {
                    name = ["E", "r", "r", "o", "r", "!"]
                    break
                }

                name[idx+1] = Character(UnicodeScalar(name[idx+1].asciiValue! - 32))
            }

            name.removeAll(where: { $0 == "_" })
        } else if name.contains(where: { 65...90 ~= $0.asciiValue! }) && !name.contains("_") && !(65...90 ~= name.first!.asciiValue!) {
            var idx = 0

            while idx < name.count {
                if 65...90 ~= name[idx].asciiValue! {
                    name[idx] = Character(UnicodeScalar(name[idx].asciiValue! + 32))
                    name.insert("_", at: idx)
                }

                idx += 1
            }
        } else if !name.contains("_") && !name.contains(where: { 65...90 ~= $0.asciiValue! }) {
        } else {
            name = ["E", "r", "r", "o", "r", "!"]
        }

        print(name.map { String($0) }.joined())
    }
}
