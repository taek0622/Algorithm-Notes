//
//  2742.swift
//  Swift
//
//  Created by 김민택 on 2022/05/16.
//

// 문제: https://www.acmicpc.net/problem/2742

class BOJ2742: Solvable {
    func run() {
        let input = Int(readLine()!)!

        var str = ""

        for i in stride(from: input, to: 0, by: -1) {
            str += "\(i)\n"
        }

        print(str)
    }
}
