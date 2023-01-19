//I used #pragma to suppress compiler warnings related to nullable types, in all of the cases the warnings are taken care by the control flow

using System;
using System.Collections;
using System.Collections.Generic;
namespace Deloitte{
    class Program{

        static List<ListElement> lista = new List<ListElement>(); // I was thinking of using a fix sized array but i chose a list because the task specifically said "lista"
        static int N = 7;

        static string motto = "Making an impact that matters –Deloitte"; // copied from e-mail

        static void Main(string[] args){

            Console.WriteLine("\nIn the program you will fill out a 7 long list with numbers or text.");
            
            // Task 1: filling the list, checking input

            for (int i = 0; i < N; i++){
                Console.WriteLine();
                while(true){
                    
                Console.WriteLine("{0}. Number / Text?", i+1);
                string? choice = Console.ReadLine();
                    //number input
                    if (choice == "N"){
                        while(true){
                            Console.WriteLine("\n\tPlease enter a number between 10 and 9999:");
                            int n;
                            try{

                                #pragma warning disable 8604 // handled by try-catch
                                n = int.Parse(Console.ReadLine());
                                #pragma warning restore 8604
                            }
                            catch (Exception ex){
                                Console.WriteLine("\n" + ex.Message + "\n");
                                Console.WriteLine("Please enter an integer with no special characters.");
                                continue;
                            }

                            if ( n >= 10 && n <= 9999){
                                ListElement l = new ListElement(n);
                                lista.Add(l);
                                break;
                            }else{
                                continue;
                            }
                        }
                        break;
                    
                    //text input
                    }else if (choice == "T"){
                        while(true){
                            Console.WriteLine("\n\tPlease enter a text that's between 5 and 45 characters long:");
                            var s = Console.ReadLine();
                            if(s == null) continue;
                            if(s.Length >= 5 && s.Length <= 45){
                                ListElement l = new ListElement(s.Trim());
                                lista.Add(l);
                                break;
                            }else{
                                continue;
                            }
                            
                        }
                        break;
                    }else{
                        Console.WriteLine("Please type \"N\" for Number or \"T\" for Text");
                        continue;
                    }
                }
            }

            // Task 2: Creating the output

            Console.WriteLine("------------------------------");

            for(int i = 0; i < lista.Count(); i++){
                string outPut = "";
                if(lista.ElementAt(i).isNumber){
                    outPut = lista.ElementAt(i).getValue() + "\t\t - ";
                    try{
                        if (lista.ElementAt(i).number % 2 == 0){
                            outPut += (lista.ElementAt(i).number / 2).ToString();
                        }else{
                            outPut += (lista.ElementAt(i).number * 2).ToString();
                        }
                        #pragma warning disable 8629 // specifically checks if the value is null
                        if(lista.ElementAt(i).number != null && isPrime((int)lista.ElementAt(i).number))
                        #pragma warning restore 8629
                        {
                            outPut += "\t !prímszám";
                        }

                    }catch (Exception ex){
                        Console.WriteLine("A problem occured while running the program:");
                        Console.WriteLine(ex.Message + "\n");
                        break;
                    }
                }else{
                    outPut = lista.ElementAt(i).getValue() + "\t - ";
                    #pragma warning disable 8602 //handled by the if statement, isNumber = false -> text != null
                    outPut += motto.Substring(0, Math.Min(lista.ElementAt(i).text.Length, motto.Length-1));
                    #pragma warning restore 8602
                }
                Console.WriteLine(outPut);
            }

            Console.WriteLine("\nPress any button to exit");
            Console.ReadLine();
        }

        static private bool isPrime(int n){
            for (int i = 2; i < Math.Ceiling(Math.Sqrt((double)n)); i++){
                if (n % i == 0) return false;
            }
            return true;
        }

    }

    public class ListElement{

        public int? number;
        public string? text;
        public bool isNumber;

        public ListElement(int n){
            this.number = n;
            this.text = null;
            this.isNumber = true;
        }

        public ListElement(string s){
            this.text = s;
            this.number = null;
            this.isNumber = false;
        }

        public string getValue(){
            #pragma warning disable 8603 //the constructors make sure that only one of them can be null
            if (isNumber){
                return this.number.ToString();
            }else{
                return this.text;
            }
            #pragma warning restore 8603
        }
    }

}
