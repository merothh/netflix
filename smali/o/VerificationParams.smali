.class public final Lo/VerificationParams;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static c(Ljava/lang/Throwable;)V
    .locals 1

    .line 78
    const-class v0, Ljava/lang/Error;

    invoke-static {p0, v0}, Lo/VerificationParams;->d(Ljava/lang/Throwable;Ljava/lang/Class;)V

    .line 79
    const-class v0, Ljava/lang/RuntimeException;

    invoke-static {p0, v0}, Lo/VerificationParams;->d(Ljava/lang/Throwable;Ljava/lang/Class;)V

    return-void
.end method

.method public static d(Ljava/lang/Throwable;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Throwable;",
            ">(",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Class<",
            "TX;>;)V^TX;"
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 58
    invoke-virtual {p1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 59
    :cond_0
    invoke-virtual {p1, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Throwable;

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public static e(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;
    .locals 1

    .line 154
    invoke-static {p0}, Lo/StringParceledListSlice;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    invoke-static {v0}, Lo/VerificationParams;->c(Ljava/lang/Throwable;)V

    .line 155
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
