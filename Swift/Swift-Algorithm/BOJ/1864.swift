//
//  1864.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 8/14/24.
//

//  문제 링크: https://www.acmicpc.net/problem/1864
//  알고리즘 분류: 수학, 구현, 문자열, 사칙연산

class BOJ1864: Solvable {
    func run() {
        // 메모리: 69100KB, 시간: 4ms, 코드 길이: 856B
        while let input = readLine(), input != "#" {
            var octa = [Int]()
            var decim = 0

            for char in input {
                switch char {
                case "-":
                    octa.append(0)
                case "\\":
                    octa.append(1)
                case "(":
                    octa.append(2)
                case "@":
                    octa.append(3)
                case "?":
                    octa.append(4)
                case ">":
                    octa.append(5)
                case "&":
                    octa.append(6)
                case "%":
                    octa.append(7)
                case "/":
                    octa.append(-1)
                default:
                    break
                }
            }

            octa.reverse()

            for idx in octa.indices {
                var num = octa[idx]
                var mul = 0

                while mul < idx {
                    num *= 8
                    mul += 1
                }

                decim += num
            }

            print(decim)
        }
    }
}
