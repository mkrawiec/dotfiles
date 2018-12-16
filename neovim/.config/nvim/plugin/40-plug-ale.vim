"
" General
"
let g:ale_linters = {
\   'html': [],
\   'python': ['pyls', 'pylint', 'prospector'],
\}

" Improve performance by not linting immediately
let g:ale_lint_on_text_changed = 'normal'
let g:ale_lint_on_insert_leave = 1

" Visual markers
let g:ale_sign_error = '✗'
let g:ale_sign_warning = '⚠'

" Enable code completion
let g:ale_completion_enabled = 1

"
" Python specific
"

" Enable pipenv auto-detection
let g:ale_python_auto_pipenv = 1

" Disable changing directory (vim-rooter does that)
let g:ale_python_pylint_change_directory = 0
