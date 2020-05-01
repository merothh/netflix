.class public synthetic Lo/tI;
.super Ljava/lang/Object;


# direct methods
.method public static c(Lo/tK;)Z
    .locals 0

    .line 1095
    invoke-interface {p0}, Lo/tK;->a()Lo/tC;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1096
    invoke-virtual {p0}, Lo/tC;->c()I

    move-result p0

    invoke-static {p0}, Lo/tC;->d(I)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
