//
//  2525.swift
//  Swift
//
//  Created by 김민택 on 2022/05/12.
//

// 2-6단계 2525번 오븐 시계

class BOJ2525 {
    func run() {
        let input1 = readLine()!.split(separator: " ").map {
            Int($0)!
        }
        let input2 = Int(readLine()!)!

        let time = input1[0] * 60 + input1[1] + input2

        print("\((time / 60) % 24) \(time % 60)")
    }
}
