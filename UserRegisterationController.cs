using RegisterationForminMVC.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace RegisterationForminMVC.Controllers
{
    public class UserRegisterationController : Controller
    {


        clsUserReg clsUser = new clsUserReg();

        public ActionResult GetAllUser()
        {
            clsUserReg obj2 = new clsUserReg();
            List<clsUserReg> lst = obj2.GetUsers();


            return View(lst);
        }



        [HttpGet]
        public ActionResult CreateRegForm()
        {

            clsDepartment obj = new clsDepartment();
            List<clsUserReg> lstUser = new List<clsUserReg>();
            


            ViewBag.Department = obj.GetDept();
            Session["Dpt"] = ViewBag.Department;
            return View();
        }

        

        [HttpPost]
        public ActionResult CreateRegForm(string EmpName, string bday, string DeptID, string EmpAdress, string City, string EmpMob)
        {
            clsUserReg obj = new clsUserReg();

            DateTime dtBday = Convert.ToDateTime(bday);
            int intDeptID = Convert.ToInt32(DeptID);
            double dblMob = Convert.ToDouble(EmpMob);

            obj.AddUser(EmpName,dtBday ,intDeptID , EmpAdress,City, dblMob);


            ViewBag.Department = Session["Dpt"];

            ViewBag.message = "Registeration done successfully";
            return View();
        }

    }
}