using Microsoft.EntityFrameworkCore;
using MvcLMS.Models;

namespace MvcLMS.Context
{
    public class AppDbContext : DbContext
    {
        public AppDbContext(DbContextOptions<AppDbContext> contextOptions)
            : base(contextOptions)
        {

        }

        // Code  first approach
        // Add DB tables here
        public DbSet<Book> Books { get; set; }
    }
}