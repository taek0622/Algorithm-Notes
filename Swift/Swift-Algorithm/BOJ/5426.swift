//
//  5426.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 12/28/24.
//

//  문제 링크: https://www.acmicpc.net/problem/5426
//  알고리즘 분류: 수학, 구현, 문자열

class BOJ5426: Solvable {
    func run() {
        // 메모리: 79644KB, 시간: 40ms, 코드 길이: 343B
        let T = Int(readLine()!)!

        for _ in 0..<T {
            let crypt = readLine()!.map { String($0) }
            let size = Int(sqrt(Double(crypt.count)))
            var origin = ""

            for col in stride(from: size-1, through: 0, by: -1) {
                for row in 0..<size {
                    origin += crypt[row*size+col]
                }
            }

            print(origin)
        }
    }
}
