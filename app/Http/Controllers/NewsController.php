<?php

namespace App\Http\Controllers;

use App\Models\News;
use Illuminate\Http\Request;

class NewsController extends Controller
{
    public function index()
    {
        // paginate records here
        // $news = DB::table('news')->paginate(4);
        $news = News::paginate(4);
        // return $news;
        return view('news.index', ['data' => $news]);
    }

    public function create()
    {
        return view('news.create');
    }

    public function store(Request $request)
    {
        // return $request->all();
        try {
            $request->validate([
                'title' => 'required|max:256',
                'content' => 'required|min:10',
            ]);
            $news = News::create($request->all());

            if (!$news) {
                return redirect()->route('');
            }
            return redirect()->route('', ['success' => true]);
        } catch (\Exception $e) {
            return redirect()->route('news.create', ['oldValues' => $request->all()]);
        }
    }

    public function edit($id)
    {
        $news = News::find($id);

        if (!$news) {
            return view('edit.index', ['isSuccess' => false]);
        }
        return view('edit', ['data' => $news]);
    }

    public function update(Request $request, $id)
    {
        $news = News::find($id);
        if (!$news) {
            return view('edit.index', ['isSuccess' => false, 'message' => 'News not found']);
        }
        $news->update($request->all());
    }

    public function show($id)
    {
        $news = News::find($id);
        if (!$news) {
            return view('edit.index', ['isSuccess' => false, 'message' => 'News not found']);
        }
        $news->view_count++;
        $news->update();

        return view('news.show', ['data' => $news]);
    }

    public function destroy(Request $request, $id)
    {
        $news = News::find($id);
        if (!$news) {
            return view('edit.index', ['isSuccess' => false, 'message' => 'News not found']);
        }
        if (!$news->delete()) {
            return view('edit.index', ['isSuccess' => false, 'message' => 'Error deleting news']);
        }

        return view('edit.index', ['isSuccess' => true, 'message' => 'News successfully deleted']);
    }
}
