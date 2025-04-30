//
//  1041.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2/5/24.
//

//  문제 링크: https://www.acmicpc.net/problem/1041
//  알고리즘 분류: 수학, 그리디 알고리즘

class BOJ1041: Solvable {
    func run() {
        // 메모리: 69108KB, 시간: 8ms, 코드 길이: 461B
        let N = Int(readLine()!)!
        let dice = readLine()!.split(separator: " ").map { Int($0)! }
        var minArea = [Int]()
        var result = (dice.reduce(0, +) - dice.max()!)

        if N != 1 {
            minArea.append(min(dice[0], dice[5]))
            minArea.append(min(dice[1], dice[4]))
            minArea.append(min(dice[2], dice[3]))
            minArea.sort()

            result = minArea.reduce(0, +) * 4 + (minArea[0] + minArea[1]) * ((N-1)*4+(N-2)*4) + minArea[0] * ((N-2)*(N-2)+(N-1)*(N-2)*4)
        }

        print(result)
    }
}
