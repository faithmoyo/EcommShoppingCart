using System;
using System.Configuration;
using System.Data.SqlClient;

namespace Ecommerce.Repository.DataSource
{
    public class DataSourceEcommerce : IDisposable
    {
        public string _ConnectionString;

        /// <summary>
        /// Create a connection to the database
        /// </summary>
        public DataSourceEcommerce()
        {
            _ConnectionString = ConfigurationManager.ConnectionStrings["ECOMMERCE_DB"].ConnectionString;
        }

        /// <summary>
        /// Disposes the class
        /// </summary>
        public void Dispose()
        {
            GC.SuppressFinalize(this);
        }

        public SqlConnection Connection()
        {
            return new SqlConnection(_ConnectionString);
        }

    }
}
