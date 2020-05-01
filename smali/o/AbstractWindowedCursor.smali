.class public abstract Lo/AbstractWindowedCursor;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/BulkCursorNative;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/BulkCursorNative<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lo/XmlResourceParser;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/XmlResourceParser<",
            "TT;>;)V"
        }
    .end annotation

    .line 44
    invoke-interface {p1}, Lo/XmlResourceParser;->e()Z

    move-result v0

    .line 46
    :try_start_0
    invoke-virtual {p0, p1}, Lo/AbstractWindowedCursor;->e(Lo/XmlResourceParser;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 49
    invoke-interface {p1}, Lo/XmlResourceParser;->g()Z

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lo/XmlResourceParser;->g()Z

    :cond_1
    throw v1
.end method

.method public b(Lo/XmlResourceParser;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/XmlResourceParser<",
            "TT;>;)V"
        }
    .end annotation

    return-void
.end method

.method public c(Lo/XmlResourceParser;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/XmlResourceParser<",
            "TT;>;)V"
        }
    .end annotation

    return-void
.end method

.method public d(Lo/XmlResourceParser;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/XmlResourceParser<",
            "TT;>;)V"
        }
    .end annotation

    .line 57
    :try_start_0
    invoke-virtual {p0, p1}, Lo/AbstractWindowedCursor;->h(Lo/XmlResourceParser;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    invoke-interface {p1}, Lo/XmlResourceParser;->g()Z

    return-void

    :catchall_0
    move-exception v0

    invoke-interface {p1}, Lo/XmlResourceParser;->g()Z

    throw v0
.end method

.method protected abstract e(Lo/XmlResourceParser;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/XmlResourceParser<",
            "TT;>;)V"
        }
    .end annotation
.end method

.method protected abstract h(Lo/XmlResourceParser;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/XmlResourceParser<",
            "TT;>;)V"
        }
    .end annotation
.end method
