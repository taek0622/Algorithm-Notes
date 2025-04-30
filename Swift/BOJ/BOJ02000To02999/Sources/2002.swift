//
//  2002.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 3/12/25.
//

//  문제 링크: https://www.acmicpc.net/problem/2002
//  알고리즘 분류: 구현, 자료 구조, 문자열, 해시를 사용한 집합과 맵

class BOJ2002: Solvable {
    func run() {
        // 메모리: 69248KB, 시간: 8ms, 코드 길이: 574B
        let N = Int(readLine()!)!
        var pass = Set<Int>()
        var cars = [String: (Int, Int)]()

        for idx in 0..<N*2 {
            let input = readLine()!

            if cars[input] == nil {
                cars[input] = (idx, -1)
            } else {
                cars[input]!.1 = idx
            }
        }

        let sortedCar = cars.values.sorted(by: { $0.0 < $1.0 })

        for start in 0..<sortedCar.count-1 {
            for end in start+1..<sortedCar.count where sortedCar[start].0...sortedCar[start].1 ~= sortedCar[end].0 && sortedCar[start].0...sortedCar[start].1 ~= sortedCar[end].1 {
                pass.insert(sortedCar[end].0)
            }
        }

        print(pass.count)
    }
}
