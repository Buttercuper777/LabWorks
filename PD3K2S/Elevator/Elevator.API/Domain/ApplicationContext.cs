using Elevator.API.Models;
using Microsoft.EntityFrameworkCore;

namespace Elevator.API.Domain
{
    public class ApplicationContext : DbContext
    {
        public ApplicationContext(DbContextOptions options)
                : base(options)
        {
        }
        public DbSet<Lift> Elevator { get; set; }
    }
}
