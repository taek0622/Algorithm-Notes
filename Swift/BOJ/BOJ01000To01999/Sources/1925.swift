//
//  1925.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/09/10.
//

//  문제 링크: https://www.acmicpc.net/problem/1925
//  알고리즘 분류: 구현, 기하학, 많은 조건 분기, 피타고라스 정리

import Shared

public struct BOJ1925: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69116KB, 시간: 8ms, 코드 길이: 1106B
        var triangleX = [Int]()
        var triangleY = [Int]()
        var sides = [Int]()
        var inclinations = Set<Double>()

        for _ in 0..<3 {
            let input = readLine()!.split(separator: " ").map { Int(String($0))! }
            triangleX.append(input[0])
            triangleY.append(input[1])
        }

        for idx in 0..<3 {
            let tempX = triangleX[idx] - triangleX[(idx+1)%3]
            let tempY = triangleY[idx] - triangleY[(idx+1)%3]
            sides.append(tempX*tempX + tempY*tempY)
            inclinations.insert(Double(triangleX[(idx+1)%3] - triangleX[idx])/Double(triangleY[(idx+1)%3] - triangleY[idx]))
        }

        sides.sort()

        if inclinations.count == 1 {
            print("X")
        } else if Set(sides).count == 1 {
            print("JungTriangle")
        } else if Set(sides).count == 2 {
            if sides[1] * 2 == sides[2] {
                print("Jikkak2Triangle")
            } else if sides[0] == sides[1] {
                print("Dunkak2Triangle")
            } else {
                print("Yeahkak2Triangle")
            }
        } else {
            if sides[0] + sides[1] == sides[2] {
                print("JikkakTriangle")
            } else if sides[0] + sides[1] < sides[2] {
                print("DunkakTriangle")
            } else {
                print("YeahkakTriangle")
            }
        }
    }
}
