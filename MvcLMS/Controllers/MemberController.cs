using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using MvcLMS.Context;
using MvcLMS.Models;

namespace MvcLMS.Controllers;

public class MemberController : Controller
{
    private readonly AppDbContext _context;
    

    // Dependency Injecting Database connection
    public MemberController(AppDbContext context)
    {
        _context = context;
    }

    // Login Screen
    public IActionResult Login()
    {
        return View();
    }
}