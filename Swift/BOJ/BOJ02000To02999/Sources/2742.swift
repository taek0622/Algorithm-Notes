//
//  2742.swift
//  Swift
//
//  Created by 김민택 on 2022/05/16.
//

//  문제 링크: https://www.acmicpc.net/problem/2742
//  알고리즘 분류: 구현

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
