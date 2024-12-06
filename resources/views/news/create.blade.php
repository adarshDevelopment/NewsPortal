<form {{route('news.store')}} method="post">
    @csrf
    <label for="title">Title</label>
    <input type="text" name="title" placeholder="Title"
        value={{$oldValues ? 'hello' : 'empty'}}>

    <label for="content">Content</label>
    <textarea name="content" id="" placeholder="News here">

    </textarea>

    <button type="submit">
        Post news
    </button>

</form>