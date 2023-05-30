#include<iostream>
using namespace std;

int main()
{
    //首先要声明变量：
    double a0,a1,a2;//为了处理多位小数的运算，这里使用浮点型；
    char ca1,ca2;//字符型用于储存运算符号；
    //先考虑简单的情况————输入一个数后直接输入等号并输出结果；
    cin>>a0>>ca1;
    if(ca1=='=') cout<<a0<<endl;
    else
    {
        //若输入的第一个运算符不是等号，则可以继续输入；
        cin>>a1>>ca2;
        while(1)//此处进入第一个循环，用于处理仅有加减的运算；
        {            
            if(ca1=='=') {cout<<a0<<endl;break;} //用于跳出循环并输出结果；
            switch(ca2)//判断第二个输入的运算符；
            {
                case '=':
                    //如果第二个运算符是等号，则可直接进行前两个数的运算；
                    switch(ca1)
                    {
                        //将前两个数的运算结果存在第一个变量a0中，下同；
                        case '+': a0=a0+a1;break;
                        case '-': a0=a0-a1;break;
                        case '*': a0=a0*a1;break;
                        case '/': a0=a0/a1;
                    }
                    ca1=ca2;break;//将ca2的值赋给ca1后跳出switch；
                    //由于跳出switch后就会回到循环的第一句，即可通过ca1的值判断是否继续循环，下同；
                case '+':
                case '-':
                    //如果第二个运算符是加号或减号，也可以直接进行前两个数的运算；
                    switch(ca1)
                    {
                        case '+': a0=a0+a1;break;
                        case '-': a0=a0-a1;break;
                        case '*': a0=a0*a1;break;
                        case '/': a0=a0/a1;
                    }
                    ca1=ca2;cin>>a1>>ca2;break;//由于ca2赋给ca1的值不是等号，因此会继续循环，所以必须要更新a1与ca2的值；
                case '*':
                case '/':
                    //如果第二个运算符是乘号或除号，则要进入第二个循环处理连乘或连除的问题；
                    while(1)
                    {
                            //连乘或连除；
                            switch(ca2)
                            {
                                //此处要对第三个变量进行赋值，并将a1与a2的乘除结果存入a1中；
                                case '*':cin>>a2;a1=a1*a2;cin>>ca2;break;
                                case '/':cin>>a2;a1=a1/a2;cin>>ca2;
                                //还要对ca2的值进行更新，用于处理接下来运算；
                            }
                            if(ca2=='=')//若ca2的值变为等号；
                            {
                                switch(ca1)
                                {
                                     //将之前乘除的结果a1与之前的a0进行加减运算，并将结果存入a0中；
                                     case '+': a0=a0+a1;break;
                                     case '-': a0=a0-a1;break;
                                }
                                ca1=ca2;
                                break;//这也是跳出第二个循环的条件，且ca2为加号或减号时也要跳出循环；
                            }
                            if(ca2=='+'||ca2=='-')
                            {
                                switch(ca1)
                                {
                                     case '+': a0=a0+a1;break;
                                     case '-': a0=a0-a1;break;
                                }
                                ca1=ca2;cin>>a1>>ca2;
                                break;
                            }
                    }
            }

        }
    }
    return 0;
}
