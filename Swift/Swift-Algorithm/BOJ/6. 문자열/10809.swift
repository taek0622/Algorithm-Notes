//
//  10809.swift
//  Swift
//
//  Created by 김민택 on 2022/06/07.
//

// 문제: https://www.acmicpc.net/problem/10809

class BOJ10809: Solvable {
    func run() {
        // 메모리: 69096KB, 시간: 8ms, 코드 길이: 193B
        let S = Array(readLine()!)

        let alphabet = Array("abcdefghijklmnopqrstuvwxyz")

        var containS = ""

        for i in alphabet {
            containS += String(S.firstIndex(of: i) ?? -1) + " "
        }

        print(containS)
    }
}
