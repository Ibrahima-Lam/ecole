<?php

namespace App\Controllers\https;

use App\Models\Repositories\NoteRepository;
use Core\Controllers\Controller;

class NoteController extends Controller
{
    public function liste()
    {
        $noteRepository = new NoteRepository();
        $notes = $noteRepository->findAll();
        $this->render("note/liste", compact("notes"));
    }
}
