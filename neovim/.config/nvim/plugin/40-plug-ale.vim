let g:ale_linters = {
\   'html': [],
\}

let g:ale_fixers = {
\   'javscript': ['prettier'],
\   'typescript': ['prettier'],
\}

" Improve performance by not linting immediately
let g:ale_lint_on_text_changed = 'normal'
let g:ale_lint_on_insert_leave = 1

" Visual markers
let g:ale_sign_error = '✗'
let g:ale_sign_warning = '⚠'
