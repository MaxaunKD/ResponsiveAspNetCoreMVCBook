using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using BasicModel.Models;

namespace BasicModel.ViewModels
{
    public class BooksStore
    {
        //IEnumerable<Book> lst;
        List<Book> lst;

        public BooksStore()
        {
            lst = new List<Book>
            {
                new Book {
                    ISBN = "1111",
                    Title = "คู่มือการเขียนโปรแกรมด้วย VB",
                    Description = "เรียนรู้การพัฒนาแอพพลิเคชันบนโทรศัพท์มือถือ และ Tablat ระบบ Android ทุกรุ่น ด้วยภาษา java",
                    Price = 299,
                    PicUrl = "~/images/book_android.jpg"
                },
                new Book {
                    ISBN = "2222",
                    Title = "คู่มือการเขียนโปรแกรมด้วย VC# สำหรับผู้เริ่มต้น",
                    Description = "เรียนรู้การพัฒนาเว็บไซต์ให้สามารถใช้งานได้ทั้งบน PC, โทรศัพท์มือถือ และ Tablat ทุกรุ่น",
                    Price = 345,
                    PicUrl = "~/images/book_asp.jpg"
                },
                new Book {
                    ISBN = "3333",
                    Title = "คู่มือการเขียนโปรแกรมด้วย ASP.NET Core",
                    Description = "เรียนรู้การพัฒนาแอพพลิเคชันบน ios ด้วยภาษา Objective C อธิบายการขั้นตอนการพัฒนาแอพพลิเคชันอย่างละเอียด",
                    Price = 275,
                    PicUrl = "~/images/book_ios.jpg"
                },
                new Book {
                    ISBN = "4444",
                    Title = "คู่มือการเชียนโปรแกรมด้วย Java",
                    Description = "เรียนรู้หลักการพัฒนาแอพพลิเคชันด้วย Visual Basic 2015 โดยเน้นให้ผู้อ่านเรียนรู้และฝึกฝนจากตัวอย่างที่สามารถนำไปใช้งานได้จริง",
                    Price = 315,
                    PicUrl = "~/images/book_vb.jpg"
                }
            };
        }

        public IEnumerable<Book> GetAllBooks()
        {
            return lst;
        }

        public Book GetBookById(string isbn)
        {
            return lst.Find(i => i.ISBN == isbn);
        }
    }
}
