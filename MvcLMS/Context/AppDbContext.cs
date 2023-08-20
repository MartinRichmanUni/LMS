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

        // List of DB tables for use
        public DbSet<Book> Books { get; set; }
        public DbSet<Member> Members { get; set; }
    }
}