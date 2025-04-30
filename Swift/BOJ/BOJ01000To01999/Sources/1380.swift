//
//  1380.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 12/16/24.
//

//  문제 링크: https://www.acmicpc.net/problem/1380
//  알고리즘 분류: 구현, 문자열

class BOJ1380: Solvable {
    func run() {
        // 메모리: 69104KB, 시간: 4ms, 코드 길이: 434B
        var scene = 1

        while let input = readLine(), input != "0" {
            let n = Int(input)!
            var students = [String]()
            var earings = [Int]()

            for _ in 0..<n {
                students.append(readLine()!)
                earings.append(0)
            }

            for _ in 0..<2*n-1 {
                let num = Int(readLine()!.split(separator: " ")[0])! - 1
                earings[num] += 1
            }

            print("\(scene) \(students[earings.firstIndex(of: 1)!])")

            scene += 1
        }
    }
}
