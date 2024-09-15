const BlogList = ({blogs, title, handleDelete}) => { // object deconstruction
    // const blogs = props.blogs;
    // const title = props.title;
    // console.log(blogs);
  
    return (
      <div className="blog-list">
        <h2>{ title }</h2>
        {blogs.map(blog => (
          <div className="blog-preview" key={blog.id} >
            <h2>{ blog.title }</h2>
            <p>Written by { blog.author }</p>
            <button onClick={() => handleDelete(id)}></button>
          </div>
        ))}
      </div>
    );
  }
   
  export default BlogList;