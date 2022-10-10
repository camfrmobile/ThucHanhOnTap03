//
//  Functions.swift
//  ThucHanhOnTap03
//
//  Created by Trần Văn Cam on 29/09/2022.
//

import Foundation

// Bài 1: Nhập vào đầy đủ họ tên, in ra họ, tên (không in ra tên đệm)
func bai1() {
    print("Nhập đầy đủ họ tên: ", terminator: "")
    let fullName = readLine() ?? ""
    // cắt thành từng chữ rồi cho vào mảng
    let arrName = fullName.components(separatedBy: " ")
    print(arrName)
    print("Họ là: ", arrName.first ?? "")
    print("Tên là: ", arrName.last ?? "")
}

// Bài 2: Vẽ hình chữ nhật bằng dấu "*"

func bai2(dai: Int, rong: Int)
{
    for _ in 0..<rong {
        for _ in 0..<dai {
            print("*", terminator: "")
        }
        print() // in xuống dòng
    }
}
// hình chữ nhật rỗng
func bai3(dai: Int, rong: Int) {
    for i in 0..<rong {
        for j in 0..<dai {
        
            if i == 0 || i == rong-1 || j == 0 || j == dai-1
            {
                print("*", terminator: "")
            }
            else
            {
                print(" ", terminator: "")
            }
        }
        print() // in xuống dòng
    }
}

// Vẽ 1 hình tam giác cân với chiều cao h
/*
 *
 * *
 * * *
 * * * *
 * * * * *
*/
func bai4(h: Int) {
    for i in 1...h {
        for _ in 1...i {
            print("* ", terminator: "")
        }
        print()
    }
}

// Bài 5: vẽ tam giác vuông cân ngược
/**
*****
****
**
*
 */
func bai5(h: Int) {
    for i in 1...h {
        for _ in 0...h-i {
            print("* ", terminator: "")
        }
        print()
    }
}

// Bài 6:
/**
 *****
  ****
   ***
    **
     *
 */
func bai6(h: Int) {
    for i in 0..<h {
        for j in 0..<h {
            print(j < i ? " " : "*", terminator: "")
        }
        
        print()
    }
}

// Bài 7:
/**
     *
    **
   ***
  ****
 *****
 */
func bai7(h: Int) {
    for i in 0..<h {
        for j in 0..<h {
            if j < h-1-i {
                print(" ", terminator: "")
            }
            else
            {
                print("*", terminator: "")
            }
        }
        print()
    }
}
