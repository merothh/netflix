.class final Lo/KeyListener$StateListAnimator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/KeyListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "StateListAnimator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Set<",
        "TK;>;"
    }
.end annotation


# instance fields
.field final synthetic b:Lo/KeyListener;


# direct methods
.method constructor <init>(Lo/KeyListener;)V
    .locals 0

    .line 269
    iput-object p1, p0, Lo/KeyListener$StateListAnimator;->b:Lo/KeyListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    .line 273
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TK;>;)Z"
        }
    .end annotation

    .line 278
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public clear()V
    .locals 1

    .line 283
    iget-object v0, p0, Lo/KeyListener$StateListAnimator;->b:Lo/KeyListener;

    invoke-virtual {v0}, Lo/KeyListener;->a()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    .line 288
    iget-object v0, p0, Lo/KeyListener$StateListAnimator;->b:Lo/KeyListener;

    invoke-virtual {v0, p1}, Lo/KeyListener;->e(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 293
    iget-object v0, p0, Lo/KeyListener$StateListAnimator;->b:Lo/KeyListener;

    invoke-virtual {v0}, Lo/KeyListener;->b()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0, p1}, Lo/KeyListener;->e(Ljava/util/Map;Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0

    .line 343
    invoke-static {p0, p1}, Lo/KeyListener;->c(Ljava/util/Set;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 4

    .line 349
    iget-object v0, p0, Lo/KeyListener$StateListAnimator;->b:Lo/KeyListener;

    invoke-virtual {v0}, Lo/KeyListener;->c()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ltz v0, :cond_1

    .line 350
    iget-object v3, p0, Lo/KeyListener$StateListAnimator;->b:Lo/KeyListener;

    invoke-virtual {v3, v0, v1}, Lo/KeyListener;->e(II)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    const/4 v3, 0x0

    goto :goto_1

    .line 351
    :cond_0
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v2, v3

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public isEmpty()Z
    .locals 1

    .line 298
    iget-object v0, p0, Lo/KeyListener$StateListAnimator;->b:Lo/KeyListener;

    invoke-virtual {v0}, Lo/KeyListener;->c()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TK;>;"
        }
    .end annotation

    .line 303
    new-instance v0, Lo/KeyListener$Activity;

    iget-object v1, p0, Lo/KeyListener$StateListAnimator;->b:Lo/KeyListener;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lo/KeyListener$Activity;-><init>(Lo/KeyListener;I)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1

    .line 308
    iget-object v0, p0, Lo/KeyListener$StateListAnimator;->b:Lo/KeyListener;

    invoke-virtual {v0, p1}, Lo/KeyListener;->e(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    .line 310
    iget-object v0, p0, Lo/KeyListener$StateListAnimator;->b:Lo/KeyListener;

    invoke-virtual {v0, p1}, Lo/KeyListener;->d(I)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 318
    iget-object v0, p0, Lo/KeyListener$StateListAnimator;->b:Lo/KeyListener;

    invoke-virtual {v0}, Lo/KeyListener;->b()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0, p1}, Lo/KeyListener;->a(Ljava/util/Map;Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 323
    iget-object v0, p0, Lo/KeyListener$StateListAnimator;->b:Lo/KeyListener;

    invoke-virtual {v0}, Lo/KeyListener;->b()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0, p1}, Lo/KeyListener;->d(Ljava/util/Map;Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public size()I
    .locals 1

    .line 328
    iget-object v0, p0, Lo/KeyListener$StateListAnimator;->b:Lo/KeyListener;

    invoke-virtual {v0}, Lo/KeyListener;->c()I

    move-result v0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 2

    .line 333
    iget-object v0, p0, Lo/KeyListener$StateListAnimator;->b:Lo/KeyListener;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/KeyListener;->b(I)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 338
    iget-object v0, p0, Lo/KeyListener$StateListAnimator;->b:Lo/KeyListener;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lo/KeyListener;->e([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
