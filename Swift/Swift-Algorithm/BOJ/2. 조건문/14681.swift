//
//  14681.swift
//  Swift
//
//  Created by 김민택 on 2022/05/12.
//

// 문제: https://www.acmicpc.net/problem/14681

class BOJ14681: Solvable {
    func run() {
        solution2()
    }

    // 메모리: 69100KB, 시간: 8ms, 코드 길이: 251B
    private func solution1() {
        let input1 = Int(readLine()!)!
        let input2 = Int(readLine()!)!

        if input1 > 0 {
            if input2 > 0 {
                print("1")
            }
            else {
                print("4")
            }
        }
        else {
            if input2 > 0 {
                print("2")
            }
            else {
                print("3")
            }
        }
    }

    // 메모리: 69100KB, 시간: 8ms, 코드 길이: 237B
    private func solution2() {
        let input1 = Int(readLine()!)!
        let input2 = Int(readLine()!)!

        if input1 > 0 && input2 > 0 {
            print("1")
        }
        else if input1 < 0 && input2 > 0 {
            print("2")
        }
        else if input1 < 0 && input2 < 0 {
            print("3")
        }
        else {
            print("4")
        }
    }
}
