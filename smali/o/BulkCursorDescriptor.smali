.class public Lo/BulkCursorDescriptor;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static b(Ljava/lang/Throwable;)Lo/XmlResourceParser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Throwable;",
            ")",
            "Lo/XmlResourceParser<",
            "TT;>;"
        }
    .end annotation

    .line 24
    invoke-static {}, Lo/CharArrayBuffer;->n()Lo/CharArrayBuffer;

    move-result-object v0

    .line 25
    invoke-virtual {v0, p0}, Lo/CharArrayBuffer;->e(Ljava/lang/Throwable;)Z

    return-object v0
.end method

.method public static e(Ljava/lang/Throwable;)Lo/UserInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Throwable;",
            ")",
            "Lo/UserInfo<",
            "Lo/XmlResourceParser<",
            "TT;>;>;"
        }
    .end annotation

    .line 36
    new-instance v0, Lo/BulkCursorDescriptor$2;

    invoke-direct {v0, p0}, Lo/BulkCursorDescriptor$2;-><init>(Ljava/lang/Throwable;)V

    return-object v0
.end method
