using System;
using System.Data.Entity;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;


namespace Supportal
{
    public class SQL_MonitoringDBContext : DbContext
    {
        public SQL_MonitoringDBContext() : base("name=SQL_MonitoringDBContext")
        {
            Database.SetInitializer<SQL_MonitoringDBContext>(null);
        }

        public DbSet<Mon_Instance> Mon_Instance { get; set; }

    }
}