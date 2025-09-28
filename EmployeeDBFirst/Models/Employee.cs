using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
namespace EmployeeDBFirst.Models;

public partial class Employee
{
    public int EmployeeId { get; set; }

    [Display(Name = "Ar Name")]
    public string EmployeeNameArabic { get; set; } = null!;

    [Display(Name = "En Name")]
    public string EmployeeNameEnglish { get; set; } = null!;

    [DisplayFormat(DataFormatString = "{0:dd-MMMM-yyyy}")]
    public DateOnly Dob { get; set; }

    [DisplayFormat(DataFormatString = "{0:dd-MMMM-yyyy}")]
    public DateOnly HiringDate { get; set; }

    public decimal Salary { get; set; }

    public int? CityId { get; set; }

    public int? DepartmentId { get; set; }

    public virtual City? City { get; set; }

    public virtual Department? Department { get; set; }
}
