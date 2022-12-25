//
//  10171.swift
//  Swift
//
//  Created by 김민택 on 2022/05/10.
//

// 문제: https://www.acmicpc.net/problem/10171

class BOJ10171 {
    func run() {
        solution2()
    }

    // 메모리: 69092KB, 시간: 8ms, 코드 길이: 47B
    private func solution1() {
        print("\\    /\\\n )  ( ')\n(  /  )\n \\(__)|")
    }

    // 메모리: 69092KB, 시간: 8ms, 코드 길이: 64B
    private func solution2() {
        let cat = #"""
        \    /\
         )  ( ')
        (  /  )
         \(__)|
        """#

        print(cat)
    }
}
