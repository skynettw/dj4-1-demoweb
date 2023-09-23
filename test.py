from yattag import Doc

doc, tag, text = Doc().tagtext()

with tag('html'):
    with tag('body'):
        with tag('h1', id = 'main'):
            text('some text')
        with tag('hr'):
            text()
        with tag('a', href='/my-url'):
            text('some link')

result = doc.getvalue()
print(result)