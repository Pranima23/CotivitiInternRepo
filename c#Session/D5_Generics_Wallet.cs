using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OOP_Intern_2023
{
    public class Wallet<T> where T : struct 
    {
        private List<T> list = new List<T>();

        public void Add(T t)
        {
            list.Add(t);
        }

        public void Remove(T t)
        {
            list.Remove(t);
        }

        public List<T> Display()
        {
            return list;
        }
    }


    //public class WalletInt
    //{
    //    private List<int> list = new List<int>();

    //    public void Add(int t)
    //    {
    //        list.Add(t);
    //    }

    //    public void Remove(int t)
    //    {
    //        list.Remove(t);
    //    }

    //    public List<int> Display()
    //    {
    //        return list;
    //    }
    //}


    //public class WalletMoney
    //{
    //    private List<Money> list = new List<Money>();

    //    public void Add(Money t)
    //    {
    //        list.Add(t);
    //    }

    //    public void Remove(Money t)
    //    {
    //        list.Remove(t);
    //    }

    //    public List<Money> Display()
    //    {
    //        return list;
    //    }
    //}

    public class Money
    {
        public int Rupees { get; set; }
    }

    public class Cards
    {
        public string BankName { get; set; }
    }
}