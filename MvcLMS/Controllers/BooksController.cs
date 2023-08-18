using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using MvcLMS.Context;
using MvcLMS.Models;
using System.Text.Encodings.Web;

namespace MvcLMS.Controllers;

public class BooksController : Controller
{
    private readonly AppDbContext _context;

    public BooksController(AppDbContext context)
    {
        _context = context;
    }

    public async Task<IActionResult> Index()
    {
        var _Book = await _context.Books.ToListAsync();
        return View(_Book);
    }

}