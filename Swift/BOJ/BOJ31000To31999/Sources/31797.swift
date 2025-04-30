//
//  31797.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2/15/25.
//

//  문제 링크: https://www.acmicpc.net/problem/31797
//  알고리즘 분류: 구현, 정렬

class BOJ31797: Solvable {
    func run() {
        // 메모리: 69108KB, 시간: 8ms, 코드 길이: 318B
        let NM = readLine()!.split(separator: " ").map { Int($0)! }
        var hands = [(Int, Int)]()

        for idx in 1...NM[1] {
            let input = readLine()!.split(separator: " ").map { Int($0)! }
            hands.append((idx, input[0]))
            hands.append((idx, input[1]))
        }

        hands.sort { $0.1 < $1.1 }

        print(hands[(NM[0] - 1) % (NM[1] * 2)].0)
    }
}
