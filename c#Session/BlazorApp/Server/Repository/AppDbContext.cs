using BlazorApp.Shared;
using Microsoft.EntityFrameworkCore;

namespace BlazorApp.Server.Repository
{
    public class AppDbContext : DbContext
    {
        public AppDbContext(DbContextOptions<AppDbContext> options) : base(options)
        {

        }

        public DbSet<Student> Students { get; set; }
        public DbSet<Country> Countries { get; set; }   
        public DbSet<Province> Provinces { get; set; }

        /*
                 //add-migration <name> 
                    Create a checkpoint
                 //update-database
                    changes to database from c# models
                 //remove-migration 
                   Removes Last update
         */

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            base.OnModelCreating(modelBuilder);



            modelBuilder.Entity<Student>().HasData(
                new Student() { Id = 1, Name = "Avash" },
                new Student() { Id = 2, Name = "Nitesh" },
                new Student() { Id = 3, Name = "Ram" },
                new Student() { Id = 4, Name = "Sita" },
                new Student() { Id = 5, Name = "Hari" }
                );
        }
    }
}
