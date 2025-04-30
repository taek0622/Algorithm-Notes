//
//  2897.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 11/1/24.
//

//  문제 링크: https://www.acmicpc.net/problem/2897
//  알고리즘 분류: 구현, 브루트포스 알고리즘

class BOJ2897: Solvable {
    func run() {
        // 메모리: 69108KB, 시간: 8ms, 코드 길이: 899B
        let RC = readLine()!.split(separator: " ").map { Int($0)! }
        var road = Array(repeating: Array(repeating: "", count: RC[1]), count: RC[0])
        var count = (0, 0, 0, 0, 0)

        for row in 0..<RC[0] {
            road[row] = readLine()!.map { String($0) }
        }

        for row in 0..<RC[0] - 1 {
            for col in 0..<RC[1] - 1 {
                let space = [road[row][col], road[row][col+1], road[row+1][col], road[row+1][col+1]]

                if space.filter { $0 == "#" }.count != 0 {
                    continue
                }

                switch space.filter { $0 == "X" }.count {
                    case 0:
                        count.0 += 1
                    case 1:
                        count.1 += 1
                    case 2:
                        count.2 += 1
                    case 3:
                        count.3 += 1
                    case 4:
                        count.4 += 1
                    default:
                        break
                }
            }
        }

        print("\(count.0)\n\(count.1)\n\(count.2)\n\(count.3)\n\(count.4)")
    }
}
