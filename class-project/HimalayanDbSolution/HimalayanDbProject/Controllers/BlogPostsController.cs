using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using HimalayanDbProject.Models;

namespace HimalayanDbProject.Controllers
{
    public class BlogPostsController : Controller
    {
        private readonly ExpeditionsDbContext _context;

        public BlogPostsController(ExpeditionsDbContext context)
        {
            _context = context;
        }

        // GET: BlogPosts
        public async Task<IActionResult> Index()
        {
            var expeditionsDbContext = _context.BlogPosts.Include(b => b.Author);
            return View(await expeditionsDbContext.ToListAsync());
        }

        public async Task<IActionResult> Results(string query, DateTime start = default, DateTime end = default)
        {
            if (query != null)
            {
                var blogSearchResults = _context.BlogPosts.Where(post => post.Title.Contains(query) 
                                                                || post.Content.Contains(query) 
                                                                || post.Author.FirstName.Contains(query))
                                                                .Include(post => post.Author);
                return View(await blogSearchResults.ToListAsync());
            }

            if (start != default && end != default)
            {
                var blogSearchResults = _context.BlogPosts.Where(post => post.DatePosted.Value.CompareTo(start) >= 0
                                                                && post.DatePosted.Value.CompareTo(end) < 0)
                                                                .Include(post => post.Author);
                return View(await blogSearchResults.ToListAsync());
            }

            return View();
        }

        // GET: BlogPosts/Details/5
        public async Task<IActionResult> Details(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var blogPost = await _context.BlogPosts
                .Include(b => b.Author)
                .FirstOrDefaultAsync(m => m.Id == id);
            if (blogPost == null)
            {
                return NotFound();
            }

            return View(blogPost);
        }

        // GET: BlogPosts/Create
        public IActionResult Create()
        {
            ViewData["AuthorId"] = new SelectList(_context.Users, "Id", "FirstName");
            return View();
        }

        // POST: BlogPosts/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create([Bind("Id,Title,AuthorId,DatePosted,DateEdited,Content")] BlogPost blogPost)
        {
            blogPost.DatePosted = DateTime.Now;
            if (ModelState.IsValid)
            {
                _context.Add(blogPost);
                await _context.SaveChangesAsync();
                return RedirectToAction(nameof(Index));
            }
            ViewData["AuthorId"] = new SelectList(_context.Users, "Id", "FirstName", blogPost.AuthorId);
            return View(blogPost);
        }

        // GET: BlogPosts/Delete/5
        public async Task<IActionResult> Delete(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var blogPost = await _context.BlogPosts
                .Include(b => b.Author)
                .FirstOrDefaultAsync(m => m.Id == id);
            if (blogPost == null)
            {
                return NotFound();
            }

            return View(blogPost);
        }

        // POST: BlogPosts/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(int id)
        {
            var blogPost = await _context.BlogPosts.FindAsync(id);
            _context.BlogPosts.Remove(blogPost);
            await _context.SaveChangesAsync();
            return RedirectToAction(nameof(Index));
        }

        private bool BlogPostExists(int id)
        {
            return _context.BlogPosts.Any(e => e.Id == id);
        }
    }
}
