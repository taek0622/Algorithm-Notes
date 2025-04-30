//
//  23841.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 11/23/24.
//

//  문제 링크: https://www.acmicpc.net/problem/23841
//  알고리즘 분류: 구현, 문자열

class BOJ23841: Solvable {
    func run() {
        // 메모리: 69108KB, 시간: 8ms, 코드 길이: 384B
        let NM = readLine()!.split(separator: " ").map { Int($0)! }
        var picture = Array(repeating: Array(repeating: ".", count: NM[1]), count: NM[0])

        for row in 0..<NM[0] {
            picture[row] = readLine()!.map { String($0) }

            for col in 0..<NM[1] where picture[row][col] != "." {
                picture[row][NM[1] - 1 - col] = picture[row][col]
            }
        }

        picture.forEach {
            print($0.joined())
        }
    }
}
