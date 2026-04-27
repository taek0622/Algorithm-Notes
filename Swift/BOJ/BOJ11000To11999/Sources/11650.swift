//
//  11650.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/01/04.
//

// 문제: https://www.acmicpc.net/problem/11650

import Shared

public struct BOJ11650: Solvable {
    public init() {}

    public func run() {
        solution3()
    }

    // 메모리: 75324KB, 시간: 200ms, 코드 길이: 301B
    private func solution1() {
        let N = Int(readLine()!)!
        var locations = [(Int, Int)]()
        var result = ""

        for _ in 0..<N {
            let point = readLine()!.split(separator: " ").map { Int(String($0))! }
            locations.append((point[0], point[1]))
        }

        locations.sorted { $0 < $1 }.forEach {
            result += "\($0.0) \($0.1)\n"
        }
        
        print(result)
    }

    // 메모리: 75324KB, 시간: 200ms, 코드 길이: 317B
    private func solution2() {
        let N = Int(readLine()!)!
        var locations = [(Int, Int)]()
        var result = ""

        for _ in 0..<N {
            let point = readLine()!.split(separator: " ").map { Int(String($0))! }
            locations.append((point[0], point[1]))
        }

        for point in locations.sorted(by: { $0 < $1 }) {
            result += "\(point.0) \(point.1)\n"
        }
        
        print(result)
    }

    // 메모리: 73760KB, 시간: 192ms, 코드 길이: 545B
    private func solution3() {
        let N = Int(readLine()!)!
        var locations = [(Int, Int)]()
        var result = ""

        for _ in 0..<N {
            let point = readLine()!.split(separator: " ").map { Int(String($0))! }
            locations.append((point[0], point[1]))
        }

        let tupleSort: ((Int, Int), (Int, Int)) -> Bool = { first, second in
            if first.0 != second.0 {
                return first < second
            } else if first.1 != second.1 {
                return first < second
            }

            return false
        }

        locations.sort(by: tupleSort)

        for point in locations {
            result += "\(point.0) \(point.1)\n"
        }
        
        print(result)
    }
}
