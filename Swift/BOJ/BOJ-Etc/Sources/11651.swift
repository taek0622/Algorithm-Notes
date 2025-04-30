//
//  11651.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/01/05.
//

// 문제: https://www.acmicpc.net/problem/11651

class BOJ11651: Solvable {
    func run() {
        // 메모리: 73760KB, 시간: 208ms, 코드 길이: 553B
        let N = Int(readLine()!)!
        var locations = [(Int, Int)]()
        var result = ""

        for _ in 0..<N {
            let point = readLine()!.split(separator: " ").map { Int(String($0))! }
            locations.append((point[0], point[1]))
        }

        let tupleSort: ((Int, Int), (Int, Int)) -> Bool = { first, second in
            if first.1 != second.1 {
                return first.1 < second.1
            } else if first.0 != second.0 {
                return first.0 < second.0
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
