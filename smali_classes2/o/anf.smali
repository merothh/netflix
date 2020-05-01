.class final Lo/anf;
.super Lo/and;
.source ""

# interfaces
.implements Ljava/util/Iterator;
.implements Lo/ale;
.implements Lo/ami;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lo/and<",
        "TT;>;",
        "Ljava/util/Iterator<",
        "TT;>;",
        "Lo/ale<",
        "Lo/akj;",
        ">;",
        "Lo/ami;"
    }
.end annotation


# instance fields
.field private b:Lo/ale;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/ale<",
            "-",
            "Lo/akj;",
            ">;"
        }
    .end annotation
.end field

.field private c:I

.field private d:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "+TT;>;"
        }
    .end annotation
.end field

.field private e:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 115
    invoke-direct {p0}, Lo/and;-><init>()V

    return-void
.end method

.method private final c()Ljava/lang/Throwable;
    .locals 3

    .line 166
    iget v0, p0, Lo/anf;->c:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 169
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected state of the iterator: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lo/anf;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    goto :goto_0

    .line 168
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Iterator has failed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    goto :goto_0

    .line 167
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    check-cast v0, Ljava/lang/Throwable;

    :goto_0
    return-object v0
.end method

.method private final d()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 163
    invoke-virtual {p0}, Lo/anf;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lo/anf;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method


# virtual methods
.method public a()Lo/alj;
    .locals 1

    .line 199
    sget-object v0, Lkotlin/coroutines/EmptyCoroutineContext;->d:Lkotlin/coroutines/EmptyCoroutineContext;

    check-cast v0, Lo/alj;

    return-object v0
.end method

.method public b(Ljava/lang/Object;Lo/ale;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lo/ale<",
            "-",
            "Lo/akj;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 174
    iput-object p1, p0, Lo/anf;->e:Ljava/lang/Object;

    const/4 p1, 0x3

    .line 175
    iput p1, p0, Lo/anf;->c:I

    .line 177
    iput-object p2, p0, Lo/anf;->b:Lo/ale;

    .line 178
    invoke-static {}, Lo/alh;->d()Ljava/lang/Object;

    move-result-object p1

    .line 176
    invoke-static {}, Lo/alh;->d()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_0

    invoke-static {p2}, Lo/alt;->e(Lo/ale;)V

    :cond_0
    invoke-static {}, Lo/alh;->d()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_1

    return-object p1

    :cond_1
    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method

.method public final b(Lo/ale;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/ale<",
            "-",
            "Lo/akj;",
            ">;)V"
        }
    .end annotation

    .line 119
    iput-object p1, p0, Lo/anf;->b:Lo/ale;

    return-void
.end method

.method public e(Ljava/lang/Object;)V
    .locals 0

    .line 194
    invoke-static {p1}, Lo/akf;->b(Ljava/lang/Object;)V

    const/4 p1, 0x4

    .line 195
    iput p1, p0, Lo/anf;->c:I

    return-void
.end method

.method public hasNext()Z
    .locals 4

    .line 123
    :goto_0
    iget v0, p0, Lo/anf;->c:I

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v3, :cond_2

    if-eq v0, v2, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 134
    :cond_0
    invoke-direct {p0}, Lo/anf;->c()Ljava/lang/Throwable;

    move-result-object v0

    throw v0

    :cond_1
    return v3

    .line 126
    :cond_2
    iget-object v0, p0, Lo/anf;->d:Ljava/util/Iterator;

    if-nez v0, :cond_3

    invoke-static {}, Lo/amh;->c()V

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 127
    iput v2, p0, Lo/anf;->c:I

    return v3

    .line 130
    :cond_4
    move-object v0, v1

    check-cast v0, Ljava/util/Iterator;

    iput-object v0, p0, Lo/anf;->d:Ljava/util/Iterator;

    :cond_5
    const/4 v0, 0x5

    .line 137
    iput v0, p0, Lo/anf;->c:I

    .line 138
    iget-object v0, p0, Lo/anf;->b:Lo/ale;

    if-nez v0, :cond_6

    invoke-static {}, Lo/amh;->c()V

    .line 139
    :cond_6
    check-cast v1, Lo/ale;

    iput-object v1, p0, Lo/anf;->b:Lo/ale;

    .line 140
    sget-object v1, Lo/akj;->a:Lo/akj;

    sget-object v2, Lkotlin/Result;->b:Lkotlin/Result$ActionBar;

    invoke-static {v1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lo/ale;->e(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 145
    iget v0, p0, Lo/anf;->c:I

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 152
    iput v0, p0, Lo/anf;->c:I

    .line 154
    iget-object v0, p0, Lo/anf;->e:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 155
    iput-object v1, p0, Lo/anf;->e:Ljava/lang/Object;

    return-object v0

    .line 158
    :cond_0
    invoke-direct {p0}, Lo/anf;->c()Ljava/lang/Throwable;

    move-result-object v0

    throw v0

    .line 148
    :cond_1
    iput v1, p0, Lo/anf;->c:I

    .line 149
    iget-object v0, p0, Lo/anf;->d:Ljava/util/Iterator;

    if-nez v0, :cond_2

    invoke-static {}, Lo/amh;->c()V

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 146
    :cond_3
    invoke-direct {p0}, Lo/anf;->d()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation is not supported for read-only collection"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
