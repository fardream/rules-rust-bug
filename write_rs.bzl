"""
"""

def _write_rs(ctx):
    output = ctx.actions.declare_file(ctx.label.name)
    ctx.actions.write(
        output = output,
        content = "pub const BYTES: &'static str = \"astring\";",
    )
    return [DefaultInfo(files = depset([output]))]

write_rs = rule(implementation = _write_rs)
