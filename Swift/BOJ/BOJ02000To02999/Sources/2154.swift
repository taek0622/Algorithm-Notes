//
//  2154.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 10/17/24.
//

//  문제 링크: https://www.acmicpc.net/problem/2154
//  알고리즘 분류: 구현, 문자열, 브루트포스 알고리즘

class BOJ2154: Solvable {
    func run() {
        // 메모리: 77404KB, 시간: 432ms, 코드 길이: 243B
        let N = readLine()!
        var sentence = ""

        for idx in 1...Int(N)! {
            sentence += "\(idx)"
        }

        let string = Array(sentence)

        for idx in 0..<sentence.count - N.count + 1 where String(string[idx..<idx+N.count]) == N {
            print(idx + 1)
            break
        }
    }
}
