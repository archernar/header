find . -type f -size +1G 2>/dev/null | sed 's#^.#/tmp#'
