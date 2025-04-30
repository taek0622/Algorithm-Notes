//
//  20157.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2/13/24.
//

//  문제 링크: https://www.acmicpc.net/problem/20157
//  알고리즘 분류: 수학, 자료 구조, 기하학, 해시를 사용한 집합과 맵

class BOJ20157: Solvable {
    func run() {
        // 메모리: 74416KB, 시간: 196ms, 코드 길이: 658B
        let N = Int(readLine()!)!
        var positiveBallons = [Double: Int]()
        var negativeBallons = [Double: Int]()

        for _ in 0..<N {
            let input = readLine()!.split(separator: " ").map { Double($0)! }

            if input[0] == 0 {
                if input[1] > 0 {
                    positiveBallons[1000001, default: 0] += 1
                } else {
                    negativeBallons[1000001, default: 0] += 1
                }
            } else {
                if input[0] > 0 {
                    positiveBallons[input[1]/input[0], default: 0] += 1
                } else {
                    negativeBallons[input[1]/input[0], default: 0] += 1
                }
            }
        }

        print(max(positiveBallons.values.max() ?? 0, negativeBallons.values.max() ?? 0))
    }
}
