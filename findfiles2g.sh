find . -type f -size +2G 2>/dev/null | sed 's#^.#/tmp#'
