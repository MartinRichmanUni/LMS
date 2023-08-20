using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using MvcLMS.Context;
using MvcLMS.Models;

namespace MvcLMS.Controllers;

public class BooksController : Controller
{
    private readonly AppDbContext _context;
    

    // Dependency Injecting Database connection
    public BooksController(AppDbContext context)
    {
        _context = context;
    }

    // GET: All books
    public async Task<IActionResult> Index()
    {
        var _Book = await _context.Books.ToListAsync();
        return View(_Book);
    }

    public IActionResult AddBook()
    {
        return View();
    }

    // POST: Add Book
    [HttpPost]
    public async Task<IActionResult> NewBook([Bind("BookTitle,Genre, Author, Borrowed")] Book book)
    {
        _context.Books.Add(book);
        _context.SaveChanges();
        ViewBag.Message = "Data Insert Successfully";  
        return RedirectToAction("Index");
    }
}