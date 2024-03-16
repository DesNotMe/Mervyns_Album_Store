using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Entity;

namespace Product_Context
{
    public class ProductContext : DbContext
    {
        public ProductContext() : base()
        {
        }
        public DbSet<Product> Products { get; set; }
        public DbSet<CartItem> ShoppingCartItems { get; set; }

    }
}
