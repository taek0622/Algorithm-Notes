//
//  13304.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 8/29/24.
//

//  문제 링크: https://www.acmicpc.net/problem/13304
//  알고리즘 분류: 수학, 구현

import Shared

public struct BOJ13304: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 858B
        let NK = readLine()!.split(separator: " ").map { Int($0)! }
        var student = (g12: 0, g34m: 0, g34f: 0, g56m: 0, g56f: 0)
        var room = 0

        for _ in 0..<NK[0] {
            let SY = readLine()!.split(separator: " ").map { Int($0)! }
            switch SY[1] {
                case 1, 2:
                    student.g12 += 1
                case 3, 4:
                    SY[0] == 0 ? (student.g34f += 1) : (student.g34m += 1)
                case 5, 6:
                    SY[0] == 0 ? (student.g56f += 1) : (student.g56m += 1)
                default:
                    break
            }
        }

        room += (student.g12 / NK[1] + student.g34m / NK[1] + student.g34f / NK[1] + student.g56m / NK[1] + student.g56f / NK[1])

        if student.g12 % NK[1] != 0 {
            room += 1
        }

        if student.g34m % NK[1] != 0 {
            room += 1
        }

        if student.g34f % NK[1] != 0 {
            room += 1
        }

        if student.g56m % NK[1] != 0 {
            room += 1
        }

        if student.g56f % NK[1] != 0 {
            room += 1
        }

        print(room)
    }
}
