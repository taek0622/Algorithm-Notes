//
//  15079.swift
//  BOJ15000To15999
//
//  Created by 김민택 on 1/21/26.
//

//  문제 링크: https://www.acmicpc.net/problem/15079
//  알고리즘 분류: 수학, 구현, 많은 조건 분기

import Foundation

import Shared

public struct BOJ15079: Solvable {
    public init() {}

    public func run() {
        // 메모리: 79516KB, 시간: 8ms, 코드 길이: 815B
        let n = Int(readLine()!)!
        let xy = readLine()!.split(separator: " ").map { Double($0)! }
        var (x, y) = (xy[0], xy[1])
        let side = 1 / sqrt(2.0)

        for _ in 1..<n {
            let d = readLine()!.split(separator: " ").map { String($0) }
            let move = Double(d[1])!

            switch d[0] {
                case "N":
                    y += move
                case "S":
                    y -= move
                case "E":
                    x += move
                case "W":
                    x -= move
                case "NE":
                    x += side * move
                    y += side * move
                case "SE":
                    x += side * move
                    y -= side * move
                case "SW":
                    x -= side * move
                    y -= side * move
                case "NW":
                    x -= side * move
                    y += side * move
                default:
                    break
            }
        }

        print(x, y)
    }
}
