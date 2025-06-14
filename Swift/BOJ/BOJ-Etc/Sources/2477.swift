//
//  2477.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/01/10.
//

// 문제: https://www.acmicpc.net/problem/2477

import Shared

public struct BOJ2477: Solvable {
    public init() {}

    public func run() {
        solution2()
    }

    // 메모리: 69104KB, 시간: 16ms, 코드 길이: 807B
    private func solution1() {
        let K = Int(readLine()!)!
        var sides = [(Int, Int)]()

        for _ in 0..<6 {
            let input = readLine()!.split(separator: " ").map { Int(String($0))! }

            sides.append((input[0], input[1]))
        }

        var (maxWidth, maxWidthIndex) = (0, 0)
        var (maxHeight, maxHeightIndex) = (0, 0)

        for idx in sides.indices {
            if sides[idx].0 <= 2 && sides[idx].1 > maxHeight {
                maxHeight = sides[idx].1
                maxHeightIndex = idx
            } else if sides[idx].0 > 2 && sides[idx].1 > maxWidth {
                maxWidth = sides[idx].1
                maxWidthIndex = idx
            }
        }

        var area = maxHeight * maxWidth

        let lostWidth = abs(sides[(maxHeightIndex + 1) % 6].1 - sides[(maxHeightIndex + 5) % 6].1)
        let lostHeight = abs(sides[(maxWidthIndex + 1) % 6].1 - sides[(maxWidthIndex + 5) % 6].1)

        area -= (lostWidth * lostHeight)

        print(K * area)
    }

    // 메모리: 69104KB, 시간: 8ms, 코드 길이: 525B
    private func solution2() {
        let K = Int(readLine()!)!
        var sides = [Int]()

        for _ in 0..<6 {
            let input = readLine()!.split(separator: " ").map { Int(String($0))! }

            sides.append(input[1])
        }

        let maxIndex = sides.firstIndex(of: sides.max()!)!

        if sides[(maxIndex + 1) % 6] > sides[(maxIndex + 5) % 6] {
            print(K * (sides[maxIndex] * sides[(maxIndex + 1) % 6] - sides[(maxIndex + 3) % 6] * sides[(maxIndex + 4) % 6]))
        } else {
            print(K * (sides[maxIndex] * sides[(maxIndex + 5) % 6] - sides[(maxIndex + 2) % 6] * sides[(maxIndex + 3) % 6]))
        }
    }
}
