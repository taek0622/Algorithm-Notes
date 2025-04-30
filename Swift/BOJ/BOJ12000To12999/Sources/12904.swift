//
//  12904.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 1/17/24.
//

//  문제 링크: https://www.acmicpc.net/problem/12904
//  알고리즘 분류: 구현, 그리디 알고리즘, 문자열

class BOJ12904: Solvable {
    func run() {
        // 메모리: 69096KB, 시간: 12ms, 코드 길이: 184B
        let S = Array(readLine()!)
        var T = Array(readLine()!)

        while S.count != T.count {
            let char = T.removeLast()

            if char == "B" {
                T.reverse()
            }
        }

        print(S == T ? 1 : 0)
    }
}
