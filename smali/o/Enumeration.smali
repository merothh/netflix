.class public Lo/Enumeration;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Lo/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/HashSet<",
            "TTResult;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Lo/HashSet;

    invoke-direct {v0}, Lo/HashSet;-><init>()V

    iput-object v0, p0, Lo/Enumeration;->a:Lo/HashSet;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;)V
    .locals 1

    .line 71
    invoke-virtual {p0, p1}, Lo/Enumeration;->c(Ljava/lang/Exception;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 72
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot set the error on a completed task."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTResult;)Z"
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lo/Enumeration;->a:Lo/HashSet;

    invoke-virtual {v0, p1}, Lo/HashSet;->b(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public c()Z
    .locals 1

    .line 32
    iget-object v0, p0, Lo/Enumeration;->a:Lo/HashSet;

    invoke-virtual {v0}, Lo/HashSet;->g()Z

    move-result v0

    return v0
.end method

.method public c(Ljava/lang/Exception;)Z
    .locals 1

    .line 46
    iget-object v0, p0, Lo/Enumeration;->a:Lo/HashSet;

    invoke-virtual {v0, p1}, Lo/HashSet;->a(Ljava/lang/Exception;)Z

    move-result p1

    return p1
.end method

.method public d()Lo/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/HashSet<",
            "TTResult;>;"
        }
    .end annotation

    .line 25
    iget-object v0, p0, Lo/Enumeration;->a:Lo/HashSet;

    return-object v0
.end method

.method public e()V
    .locals 2

    .line 53
    invoke-virtual {p0}, Lo/Enumeration;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 54
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot cancel a completed task."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public e(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTResult;)V"
        }
    .end annotation

    .line 62
    invoke-virtual {p0, p1}, Lo/Enumeration;->a(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 63
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot set the result of a completed task."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
