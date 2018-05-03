using Microsoft.EntityFrameworkCore;
using _80sEntertainment.Models.DAO;

namespace _80sEntertainment.DAL.DbContext
{
    public class _80sEntertainmentContext : Microsoft.EntityFrameworkCore.DbContext
    {
        public _80sEntertainmentContext(DbContextOptions options) : base(options)
        {
        }

        public _80sEntertainmentContext()
        {

        }

        public DbSet<_80sEntertainmentDAO> _80sEntertainment { get; set; }
        public DbSet<_80sEntertainmentTVShowsDAO> TvShows { get; set; }
    }
}
