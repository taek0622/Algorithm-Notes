//
//  11383.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 9/13/24.
//

//  문제 링크: https://www.acmicpc.net/problem/11383
//  알고리즘 분류: 구현, 문자열

class BOJ11383: Solvable {
    func run() {
        // 메모리: 69104KB, 시간: 4ms, 코드 길이: 409B
        let NM = readLine()!.split(separator: " ").map { Int($0)! }
        var result = "Eyfa"

        var NMImage = Array(repeating: "", count: NM[0])

        for row in 0..<NM[0] {
            let input = readLine()!

            for char in input {
                NMImage[row] += "\(char)\(char)"
            }
        }

        for row in 0..<NM[0] {
            let input = readLine()!

            if NMImage[row] != input {
                result = "Not " + result
                break
            }
        }

        print(result)
    }
}
