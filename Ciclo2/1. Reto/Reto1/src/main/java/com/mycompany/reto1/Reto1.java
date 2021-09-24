
package com.mycompany.reto1;

import java.util.Scanner;

/**
 * Reto #1
 * @author Caro
 */
public class Reto1 {
    
    public static void main(String[] args){
        Scanner sc = new Scanner (System.in);
        int pfizer = sc.nextInt(); 
        int astraZeneca  = (2 * pfizer) + 4;
        int janssen = (pfizer + astraZeneca ) / 5;
        System.out.println(pfizer + " " + astraZeneca + " " + janssen);
        System.out.println();
        if (janssen >= 0 && janssen <= 20){
            System.out.println("uno");
        }else if(janssen >= 21 && janssen <= 30){
            System.out.println("dos");
        }else if (janssen >= 31 && janssen <= 50){
            System.out.println("tres");
        }else{
            System.out.println("cuatro");
        }
       
    }
}
