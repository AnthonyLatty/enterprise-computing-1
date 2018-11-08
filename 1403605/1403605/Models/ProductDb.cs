using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace _1403605.Models
{
    public class ProductDb
    {
        private readonly ProductEntities _product;

        public ProductDb()
        {
            _product = new ProductEntities();
        }


        public IEnumerable<Category> GetAllCategory()
        {
            return from b in _product.Categories
                orderby b.Name
                select b;
        }
    }
}