.class public abstract Lo/PooledStringWriter;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/PooledStringWriter$Activity;,
        Lo/PooledStringWriter$TaskDescription;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(I)Lo/PooledStringWriter$TaskDescription;
    .locals 4

    .line 86
    new-instance v0, Lo/MessageQueue$ActionBar;

    invoke-direct {v0}, Lo/MessageQueue$ActionBar;-><init>()V

    const/4 v1, 0x0

    .line 87
    invoke-virtual {v0, v1}, Lo/MessageQueue$ActionBar;->e(Z)Lo/PooledStringWriter$TaskDescription;

    move-result-object v0

    .line 88
    invoke-virtual {v0, v1}, Lo/PooledStringWriter$TaskDescription;->b(Z)Lo/PooledStringWriter$TaskDescription;

    move-result-object v0

    .line 89
    invoke-virtual {v0, v1}, Lo/PooledStringWriter$TaskDescription;->c(Z)Lo/PooledStringWriter$TaskDescription;

    move-result-object v0

    .line 90
    invoke-virtual {v0, p0}, Lo/PooledStringWriter$TaskDescription;->g(I)Lo/PooledStringWriter$TaskDescription;

    move-result-object p0

    const/4 v0, 0x3

    .line 91
    invoke-virtual {p0, v0}, Lo/PooledStringWriter$TaskDescription;->a(I)Lo/PooledStringWriter$TaskDescription;

    move-result-object p0

    const/4 v0, 0x0

    .line 92
    invoke-virtual {p0, v0}, Lo/PooledStringWriter$TaskDescription;->b(F)Lo/PooledStringWriter$TaskDescription;

    move-result-object p0

    const/4 v2, 0x1

    .line 93
    invoke-virtual {p0, v2}, Lo/PooledStringWriter$TaskDescription;->d(I)Lo/PooledStringWriter$TaskDescription;

    move-result-object p0

    const/16 v3, 0x28

    .line 94
    invoke-virtual {p0, v3}, Lo/PooledStringWriter$TaskDescription;->e(I)Lo/PooledStringWriter$TaskDescription;

    move-result-object p0

    .line 95
    invoke-virtual {p0, v1}, Lo/PooledStringWriter$TaskDescription;->b(I)Lo/PooledStringWriter$TaskDescription;

    move-result-object p0

    .line 96
    invoke-virtual {p0, v1}, Lo/PooledStringWriter$TaskDescription;->c(I)Lo/PooledStringWriter$TaskDescription;

    move-result-object p0

    .line 97
    invoke-virtual {p0, v0}, Lo/PooledStringWriter$TaskDescription;->a(F)Lo/PooledStringWriter$TaskDescription;

    move-result-object p0

    .line 98
    invoke-virtual {p0, v1}, Lo/PooledStringWriter$TaskDescription;->h(I)Lo/PooledStringWriter$TaskDescription;

    move-result-object p0

    .line 99
    invoke-virtual {p0, v2}, Lo/PooledStringWriter$TaskDescription;->j(I)Lo/PooledStringWriter$TaskDescription;

    move-result-object p0

    .line 100
    invoke-virtual {p0, v1}, Lo/PooledStringWriter$TaskDescription;->f(I)Lo/PooledStringWriter$TaskDescription;

    move-result-object p0

    .line 101
    invoke-virtual {p0, v1}, Lo/PooledStringWriter$TaskDescription;->i(I)Lo/PooledStringWriter$TaskDescription;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract a()I
.end method

.method public abstract b()I
.end method

.method public abstract c()F
.end method

.method public abstract d()I
.end method

.method public abstract e()I
.end method

.method public abstract f()F
.end method

.method public abstract g()Lo/PooledStringWriter$Activity;
.end method

.method public abstract h()I
.end method

.method public abstract i()I
.end method

.method public abstract j()Landroidx/recyclerview/widget/RecyclerView$SharedElementCallback;
.end method

.method public abstract k()Z
.end method

.method public abstract l()Z
.end method

.method public abstract m()I
.end method

.method public abstract n()I
.end method

.method public abstract o()Z
.end method

.method public abstract p()I
.end method

.method public abstract q()I
.end method

.method protected abstract s()Lo/PooledStringWriter$TaskDescription;
.end method

.method public t()Lo/PooledStringWriter;
    .locals 2

    .line 39
    invoke-virtual {p0}, Lo/PooledStringWriter;->s()Lo/PooledStringWriter$TaskDescription;

    move-result-object v0

    invoke-virtual {p0}, Lo/PooledStringWriter;->a()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lo/PooledStringWriter$TaskDescription;->a(I)Lo/PooledStringWriter$TaskDescription;

    move-result-object v0

    invoke-virtual {v0}, Lo/PooledStringWriter$TaskDescription;->c()Lo/PooledStringWriter;

    move-result-object v0

    return-object v0
.end method
