//
//  5073.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/03/29.
//

// 문제: https://www.acmicpc.net/problem/5073

class BOJ5073: Solvable {
    func run() {
        // 메모리: 69108KB, 시간: 8ms, 코드 길이: 414B
        while let input = readLine(), input != "0 0 0" {
            let sides = input.split(separator: " ").map { Int(String($0))! }.sorted()
            if sides[0] + sides[1] <= sides[2] {
                print("Invalid")
            } else if sides[0] == sides[1], sides[0] == sides[2] {
                print("Equilateral")
            } else if sides[0] == sides[1] || sides[1] == sides[2] {
                print("Isosceles")
            } else {
                print("Scalene")
            }
        }
    }
}
