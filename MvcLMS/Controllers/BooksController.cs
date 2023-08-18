using Microsoft.AspNetCore.Mvc;
using System.Text.Encodings.Web;

namespace MvcLMS.Controllers;

public class BooksController : Controller
{
    // 
    // GET: 
    public string Index()
    {
        return "This is my default action...";
    }
    // 
    // GET: 
    public string Welcome()
    {
        return "This is the Welcome action method...";
    }
}