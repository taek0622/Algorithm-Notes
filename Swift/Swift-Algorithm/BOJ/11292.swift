//
//  11292.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 1/8/25.
//

//  문제 링크: https://www.acmicpc.net/problem/11292
//  알고리즘 분류: 구현, 정렬

class BOJ11292: Solvable {
    func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 470B
        while let N = Int(readLine()!), N != 0 {
            var height = 0.0
            var names = [String]()

            for _ in 0..<N {
                let input = readLine()!.split(separator: " ").map { String($0) }
                let currentHeight = Double(input[1])!

                if height < currentHeight {
                    height = currentHeight
                    names = [input[0]]
                } else if height == currentHeight {
                    names.append(input[0])
                }
            }

            print(names.joined(separator: " "))
        }
    }
}
