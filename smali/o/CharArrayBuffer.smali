.class public Lo/CharArrayBuffer;
.super Lcom/facebook/datasource/AbstractDataSource;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/facebook/datasource/AbstractDataSource<",
        "TT;>;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/facebook/datasource/AbstractDataSource;-><init>()V

    return-void
.end method

.method public static n()Lo/CharArrayBuffer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lo/CharArrayBuffer<",
            "TT;>;"
        }
    .end annotation

    .line 24
    new-instance v0, Lo/CharArrayBuffer;

    invoke-direct {v0}, Lo/CharArrayBuffer;-><init>()V

    return-object v0
.end method


# virtual methods
.method public c(Ljava/lang/Object;Z)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)Z"
        }
    .end annotation

    .line 44
    invoke-static {p1}, Lo/StringParceledListSlice;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-super {p0, p1, p2}, Lcom/facebook/datasource/AbstractDataSource;->c(Ljava/lang/Object;Z)Z

    move-result p1

    return p1
.end method

.method public d(F)Z
    .locals 0

    .line 82
    invoke-super {p0, p1}, Lcom/facebook/datasource/AbstractDataSource;->d(F)Z

    move-result p1

    return p1
.end method

.method public e(Ljava/lang/Throwable;)Z
    .locals 0

    .line 71
    invoke-static {p1}, Lo/StringParceledListSlice;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Throwable;

    invoke-super {p0, p1}, Lcom/facebook/datasource/AbstractDataSource;->e(Ljava/lang/Throwable;)Z

    move-result p1

    return p1
.end method
