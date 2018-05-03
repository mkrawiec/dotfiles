let g:ale_sign_error = '✗'
let g:ale_sign_warning = '⚠'

let g:ale_linters = {
\   'html': [],
\}

" Improve performance by not linting immediately
let g:ale_lint_on_text_changed = 'normal'
let g:ale_lint_on_insert_leave = 1
