using MIVisitorCenter.Data.Abstract;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace MIVisitorCenter.Data.Concrete
{
    /// <summary>
    /// Base class repository that implements only CRUD operations.  Meant to be like an abstract 
    /// base class, but not actually made abstract because it may be useful to have a repository 
    /// that only supports crud.
    /// 
    /// This is only a minimal version. There is quite a lot we could add to this, including:
    ///    - add better error checking/recovery (i.e. throw exceptions when something goes wrong)
    ///    - Write a base model class for the parameterized type, i.e. require TEntity : ModelBase, 
    ///      and have ModelBase define important things like the PK name and type so we can enforce that in
    ///      FindById for example.
    ///    - Non async versions
    /// </summary>
    /// <typeparam name="TEntity">This is the entity for which we're making a repository</typeparam>
    public class Repository<TEntity> : IRepository<TEntity> where TEntity : class, new()
    {
        // If you want to enforce full separation and ensure that this repository ONLY accesses the TEntity
        // then make _context private
        protected readonly DbContext _context;
        protected readonly DbSet<TEntity> _dbSet;

        public Repository(DbContext ctx)
        {
            _context = ctx;
            _dbSet = _context.Set<TEntity>();   // must do it this way because we don't have a "navigation property" to use
        }

        // Find by ID assuming it's the PK and is an int
        public virtual async Task<TEntity> FindByIdAsync(int id)
        {
            TEntity entity = await _dbSet.FindAsync(id);
            return entity;  // null if not found
        }

        public virtual async Task<bool> ExistsAsync(int id)
        {
            return await FindByIdAsync(id) != null;
        }

        public virtual IQueryable<TEntity> GetAll()
        {
            return _dbSet;
        }

        public virtual async Task<TEntity> AddOrUpdateAsync(TEntity entity)
        {
            if (entity == null)
            {
                throw new ArgumentNullException("Entity must not be null to add or update");
            }
            _context.Update(entity);
            await _context.SaveChangesAsync();
            return entity;
        }

        public virtual async Task DeleteAsync(TEntity entity)
        {
            if (entity == null)
            {
                throw new Exception("Entity to delete was null");
            }
            else
            {
                _dbSet.Remove(entity);
                await _context.SaveChangesAsync();
            }
            return;
        }

        public virtual async Task DeleteByIdAsync(int id)
        {
            await DeleteAsync(await FindByIdAsync(id));
            return;
        }
    }
}