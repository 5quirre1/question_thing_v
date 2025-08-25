import readline { read_line }

fn ask(question string, continuemsg string) string {
    for {
        println(question)
        input := read_line("") or {
            println('failed to read input')
            continue
        }
        if input.trim_space() != "" {
            return input.trim_space()
        } else {
            println(continuemsg)
        }
    }
    return ''
}
