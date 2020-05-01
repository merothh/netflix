.class public abstract Lo/akh;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Iterator;
.implements Lo/ami;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;",
        "Lo/ami;"
    }
.end annotation


# instance fields
.field private b:Lkotlin/collections/State;

.field private c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    sget-object v0, Lkotlin/collections/State;->c:Lkotlin/collections/State;

    iput-object v0, p0, Lo/akh;->b:Lkotlin/collections/State;

    return-void
.end method

.method private final c()Z
    .locals 2

    .line 41
    sget-object v0, Lkotlin/collections/State;->a:Lkotlin/collections/State;

    iput-object v0, p0, Lo/akh;->b:Lkotlin/collections/State;

    .line 42
    invoke-virtual {p0}, Lo/akh;->d()V

    .line 43
    iget-object v0, p0, Lo/akh;->b:Lkotlin/collections/State;

    sget-object v1, Lkotlin/collections/State;->e:Lkotlin/collections/State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method protected final b()V
    .locals 1

    .line 70
    sget-object v0, Lkotlin/collections/State;->b:Lkotlin/collections/State;

    iput-object v0, p0, Lo/akh;->b:Lkotlin/collections/State;

    return-void
.end method

.method protected abstract d()V
.end method

.method protected final e(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 62
    iput-object p1, p0, Lo/akh;->c:Ljava/lang/Object;

    .line 63
    sget-object p1, Lkotlin/collections/State;->e:Lkotlin/collections/State;

    iput-object p1, p0, Lo/akh;->b:Lkotlin/collections/State;

    return-void
.end method

.method public hasNext()Z
    .locals 4

    .line 25
    iget-object v0, p0, Lo/akh;->b:Lkotlin/collections/State;

    sget-object v1, Lkotlin/collections/State;->a:Lkotlin/collections/State;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    .line 26
    iget-object v0, p0, Lo/akh;->b:Lkotlin/collections/State;

    sget-object v1, Lo/akp;->a:[I

    invoke-virtual {v0}, Lkotlin/collections/State;->ordinal()I

    move-result v0

    aget v0, v1, v0

    if-eq v0, v3, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 29
    invoke-direct {p0}, Lo/akh;->c()Z

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x1

    :cond_2
    :goto_1
    return v2

    .line 25
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Failed requirement."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 34
    invoke-virtual {p0}, Lo/akh;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    sget-object v0, Lkotlin/collections/State;->c:Lkotlin/collections/State;

    iput-object v0, p0, Lo/akh;->b:Lkotlin/collections/State;

    .line 37
    iget-object v0, p0, Lo/akh;->c:Ljava/lang/Object;

    return-object v0

    .line 34
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public remove()V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation is not supported for read-only collection"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
