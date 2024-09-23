//
//  3023.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 9/23/24.
//

//  문제 링크: https://www.acmicpc.net/problem/3023
//  알고리즘 분류: 구현, 문자열

class BOJ3023: Solvable {
    func run() {
        // 메모리: 69240KB, 시간: 8ms, 코드 길이: 644B
        let RC = readLine()!.split(separator: " ").map { Int($0)! }
        var card = Array(repeating: Array(repeating: "", count: RC[1] * 2), count: RC[0] * 2)

        for row in 0..<RC[0] {
            let input = readLine()!.map { String($0) }

            for col in 0..<RC[1] {
                card[row][col] = input[col]
                card[row][RC[1] * 2 - col - 1] = input[col]
                card[RC[0] * 2 - row - 1][col] = input[col]
                card[RC[0] * 2 - row - 1][RC[1] * 2 - col - 1] = input[col]
            }
        }

        let AB = readLine()!.split(separator: " ").map { Int($0)! - 1 }
        card[AB[0]][AB[1]] = card[AB[0]][AB[1]] == "#" ? "." : "#"

        for row in 0..<RC[0] * 2 {
            print(card[row].joined())
        }
    }
}
