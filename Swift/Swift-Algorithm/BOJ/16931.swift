//
//  16931.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 3/3/25.
//

//  문제 링크: https://www.acmicpc.net/problem/16931
//  알고리즘 분류: 구현, 기하학, 3차원 기하학

class BOJ16931: Solvable {
    func run() {
        // 메모리: 69108KB, 시간: 8ms, 코드 길이: 674B
        let NM = readLine()!.split(separator: " ").map { Int($0)! }
        var shape = Array(repeating: Array(repeating: 0, count: NM[1]), count: NM[0])
        var area = NM.reduce(1, *) * 2

        for row in 0..<NM[0] {
            shape[row] = readLine()!.split(separator: " ").map { Int($0)! }
            area += shape[row][0]

            for col in 1..<NM[1] {
                let diff = shape[row][col-1] - shape[row][col]
                area += diff > 0 ? diff : -diff
            }

            area += shape[row].last!
        }

        for col in 0..<NM[1] {
            area += shape[0][col]

            for row in 1..<NM[0] {
                let diff = shape[row-1][col] - shape[row][col]
                area += diff > 0 ? diff : -diff
            }

            area += shape[NM[0]-1][col]
        }

        print(area)
    }
}
