//
//  1008.swift
//  Swift
//
//  Created by 김민택 on 2022/05/10.
//

// 1-5단계 1008번 A/B

class BOJ1008 {
    func run() {
        let input = readLine()!.split(separator: " ").map {
            Double($0)!
        }

        print(input[0] / input[1])
    }
}
