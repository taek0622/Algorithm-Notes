//
//  10718.swift
//  Swift
//
//  Created by 김민택 on 2022/05/10.
//

// 문제: https://www.acmicpc.net/problem/10718

class BOJ10718: Solvable {
    func run() {
        solution2()
    }

    // 메모리: 69092KB, 시간: 8ms, 코드길이: 69B
    private func solution1() {
        print("강한친구 대한육군군")
        print("강한친구 대한육군군")
    }

    // 메모리: 69092KB, 시간: 8ms, 코드길이: 57B
    private func solution2() {
        for _ in 0..<2 {
            print("강한친구 대한육군")
        }
    }

    // 메모리: 69092KB, 시간: 8ms, 코드길이: 61B
    private func solution3() {
        print("강한친구 대한육군\n강한친구 대한육군")
    }
}
