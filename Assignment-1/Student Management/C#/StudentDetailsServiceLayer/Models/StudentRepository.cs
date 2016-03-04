using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
// <!--
// AUTHOR: Austin Vern Songer
// UNIVERSITY: Robert Morris University
// COURSE: Client Server Development - MIS-517
// DATE:2016MAR04
//  -->

namespace StudentDetailsServiceLayer.Models
{
    public class StudentRepository : IStudentRepository
    {
        private List<Student> students = new List<Student>();


        public StudentRepository()
        {
            Add(new Student { firstname="Austin", lastname="Songer", id = 1, gender="Male", email="AustinSonger@email.com", phone="1022010649", major="Biology", username="AustinSonger" });
            Add(new Student { firstname="Bill", lastname="Bruce", id = 2, gender="Male", email="BillBruce@email.com", phone="1022010659", major="Chemistry", username="BillBruce" });
            Add(new Student { firstname="James", lastname="Dean", id = 3, gender="Male", email="JamesDean@email.com", phone="1022010669", major="Physics", username="JamesDean" });
            Add(new Student { firstname="Pete", lastname="Rose", id = 4, gender="Male", email="PeteRose@email.com", phone="1022010679", major="Physiology", username="PeteRose" });
        }

        public IEnumerable<Student> GetAll()
        {
            return students;
        }

        public Student Get(int id)
        {
            return students.Find(s => s.id == id);
        }

        public Student Add(Student student)
        {
            if (student == null)
            {
                throw new ArgumentNullException("item");
            }
            students.Add(student);
            return student;
        }

        public void Remove(int id)
        {
            students.RemoveAll(s => s.id == id);
        }

        public bool Update(Student student)
        {
            if (student == null)
            {
                throw new ArgumentNullException("student");
            }
            int index = students.FindIndex(s => s.id == student.id);
            if (index == -1)
            {
                return false;
            }
            students.RemoveAt(index);
            students.Add(student);
            return true;
        }
    }
}