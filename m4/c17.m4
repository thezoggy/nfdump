AC_DEFUN([AX_CHECK_C17],
[AX_CHECK_COMPILE_FLAG([-std=gnu17],
    [AX_APPEND_FLAG([-std=gnu17])],
    [AX_CHECK_COMPILE_FLAG([-std=c17],
        [AX_APPEND_FLAG([-std=c17])],
        [AX_CHECK_COMPILE_FLAG([-std=c99],
            [AX_APPEND_FLAG([-std=c99])],
            [AC_MSG_ERROR([C compiled does not support at least C99!])])
        ])
    ])
])
