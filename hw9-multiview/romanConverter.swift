//
//  romanConverter.swift
//  hw9-multiview
//
//  Created by Tyla Pollard on 3/31/18.
//  Copyright © 2018 spelman. All rights reserved.
//

import Foundation

public var uservalue = 0
public var userRoman = ""
public var uval: Int?

public var userRo: String!


/* =======================================================================================
 This function accepts an integer decimal value and returns a string containing its
 roman numeral equivalent.
 ======================================================================================= */
func decToRoman (dec: Int) -> String
{
    let huns = ["", "C", "CC", "CCC", "CD", "D", "DC", "DCC", "DCCC", "CM"]
    let tens = ["", "X", "XX", "XXX", "XL", "L", "LX", "LXX", "LXXX", "XC"]
    let ones = ["", "I", "II", "III", "IV", "V", "VI", "VII", "VIII", "IX"]
    
    var val = dec
    var res = ""
    
    //  Add 'M' until we drop below 1000.
    while (val >= 1000)
    {
        res += "M"
        val -= 1000;
    }
    
    // Add each of the correct elements, adjusting as we go.
    res += huns[val/100]
    val = val % 100;
    
    res += tens[val/10]
    val = val % 10;
    
    res += ones[val]
    
    return res
}



/* =======================================================================================
 This function accepts a string representing a roman numeral and returns its decimal
 equivalent as an integer.  If a non-roman character is found in the input string, the
 function returns a -1.
 ======================================================================================= */
func romanToDec(roman: String) -> Int
{
    //dictionary of roman characters
    let romanChar = ["I":1, "V":5, "X":10, "L":50, "C":100, "D":500, "M":1000]
    
    var sum = 0
    var prev:Character = "%"
    
    //capitalize the input string and convert to a character array
    let inputArray = Array(roman.uppercased())
    let l = inputArray.count
    
    //march through the character array from right to left
    for i in (0...l-1).reversed()    //var i=l-1; i>=0; i--
    {
        if let x = romanChar[String(inputArray[i])]
        {
            if (x < sum) && (inputArray[i] != prev)
            {
                sum -= x;
                prev = inputArray[i];
            }
            else
            {
                sum += x;
                prev = inputArray[i];
            }
        }
        else
        {   //invalid roman character
            return -1
        }
        
    }
    return sum;
}
