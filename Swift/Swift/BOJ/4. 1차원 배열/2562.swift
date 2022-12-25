//
//  2562.swift
//  Swift
//
//  Created by 김민택 on 2022/05/25.
//

// 문제: https://www.acmicpc.net/problem/2562

class BOJ2562 {
    func run() {
        // 메모리: 69100KB, 시간: 8ms, 코드 길이: 205B
        var max = 0
        var indexOfMaxNumber = 0

        for i in 1...9 {
            let input = Int(readLine()!)!
            if input >= max {
                max = input
                indexOfMaxNumber = i
            }
        }

        print("\(max)\n\(indexOfMaxNumber)")
    }
}
