.class public final Lkotlin/coroutines/CombinedContext;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/alj;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/coroutines/CombinedContext$Serialized;
    }
.end annotation


# instance fields
.field private final d:Lo/alj$StateListAnimator;

.field private final e:Lo/alj;


# direct methods
.method public constructor <init>(Lo/alj;Lo/alj$StateListAnimator;)V
    .locals 1

    const-string v0, "left"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "element"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/coroutines/CombinedContext;->e:Lo/alj;

    iput-object p2, p0, Lkotlin/coroutines/CombinedContext;->d:Lo/alj$StateListAnimator;

    return-void
.end method

.method private final b(Lkotlin/coroutines/CombinedContext;)Z
    .locals 1

    .line 158
    :goto_0
    iget-object v0, p1, Lkotlin/coroutines/CombinedContext;->d:Lo/alj$StateListAnimator;

    invoke-direct {p0, v0}, Lkotlin/coroutines/CombinedContext;->d(Lo/alj$StateListAnimator;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 159
    :cond_0
    iget-object p1, p1, Lkotlin/coroutines/CombinedContext;->e:Lo/alj;

    .line 160
    instance-of v0, p1, Lkotlin/coroutines/CombinedContext;

    if-eqz v0, :cond_1

    .line 161
    check-cast p1, Lkotlin/coroutines/CombinedContext;

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    .line 163
    check-cast p1, Lo/alj$StateListAnimator;

    invoke-direct {p0, p1}, Lkotlin/coroutines/CombinedContext;->d(Lo/alj$StateListAnimator;)Z

    move-result p1

    return p1

    :cond_2
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlin.coroutines.CoroutineContext.Element"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final c()I
    .locals 3

    .line 144
    move-object v0, p0

    check-cast v0, Lkotlin/coroutines/CombinedContext;

    const/4 v1, 0x2

    .line 147
    :goto_0
    iget-object v0, v0, Lkotlin/coroutines/CombinedContext;->e:Lo/alj;

    instance-of v2, v0, Lkotlin/coroutines/CombinedContext;

    if-nez v2, :cond_0

    const/4 v0, 0x0

    :cond_0
    check-cast v0, Lkotlin/coroutines/CombinedContext;

    if-eqz v0, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private final d(Lo/alj$StateListAnimator;)Z
    .locals 1

    .line 153
    invoke-interface {p1}, Lo/alj$StateListAnimator;->getKey()Lo/alj$Application;

    move-result-object v0

    invoke-virtual {p0, v0}, Lkotlin/coroutines/CombinedContext;->get(Lo/alj$Application;)Lo/alj$StateListAnimator;

    move-result-object v0

    invoke-static {v0, p1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private final writeReplace()Ljava/lang/Object;
    .locals 6

    .line 179
    invoke-direct {p0}, Lkotlin/coroutines/CombinedContext;->c()I

    move-result v0

    .line 180
    new-array v1, v0, [Lo/alj;

    .line 181
    new-instance v2, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    const/4 v3, 0x0

    iput v3, v2, Lkotlin/jvm/internal/Ref$IntRef;->e:I

    .line 182
    sget-object v4, Lo/akj;->a:Lo/akj;

    new-instance v5, Lkotlin/coroutines/CombinedContext$writeReplace$1;

    invoke-direct {v5, v1, v2}, Lkotlin/coroutines/CombinedContext$writeReplace$1;-><init>([Lo/alj;Lkotlin/jvm/internal/Ref$IntRef;)V

    check-cast v5, Lo/alN;

    invoke-virtual {p0, v4, v5}, Lkotlin/coroutines/CombinedContext;->fold(Ljava/lang/Object;Lo/alN;)Ljava/lang/Object;

    .line 183
    iget v2, v2, Lkotlin/jvm/internal/Ref$IntRef;->e:I

    if-ne v2, v0, :cond_0

    const/4 v3, 0x1

    :cond_0
    if-eqz v3, :cond_1

    .line 185
    new-instance v0, Lkotlin/coroutines/CombinedContext$Serialized;

    invoke-direct {v0, v1}, Lkotlin/coroutines/CombinedContext$Serialized;-><init>([Lo/alj;)V

    return-object v0

    .line 183
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Check failed."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 169
    move-object v0, p0

    check-cast v0, Lkotlin/coroutines/CombinedContext;

    if-eq v0, p1, :cond_1

    instance-of v0, p1, Lkotlin/coroutines/CombinedContext;

    if-eqz v0, :cond_0

    check-cast p1, Lkotlin/coroutines/CombinedContext;

    invoke-direct {p1}, Lkotlin/coroutines/CombinedContext;->c()I

    move-result v0

    invoke-direct {p0}, Lkotlin/coroutines/CombinedContext;->c()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-direct {p1, p0}, Lkotlin/coroutines/CombinedContext;->b(Lkotlin/coroutines/CombinedContext;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public fold(Ljava/lang/Object;Lo/alN;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(TR;",
            "Lo/alN<",
            "-TR;-",
            "Lo/alj$StateListAnimator;",
            "+TR;>;)TR;"
        }
    .end annotation

    const-string v0, "operation"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lkotlin/coroutines/CombinedContext;->e:Lo/alj;

    invoke-interface {v0, p1, p2}, Lo/alj;->fold(Ljava/lang/Object;Lo/alN;)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lkotlin/coroutines/CombinedContext;->d:Lo/alj$StateListAnimator;

    invoke-interface {p2, p1, v0}, Lo/alN;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public get(Lo/alj$Application;)Lo/alj$StateListAnimator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lo/alj$StateListAnimator;",
            ">(",
            "Lo/alj$Application<",
            "TE;>;)TE;"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    move-object v0, p0

    check-cast v0, Lkotlin/coroutines/CombinedContext;

    .line 120
    :goto_0
    iget-object v1, v0, Lkotlin/coroutines/CombinedContext;->d:Lo/alj$StateListAnimator;

    invoke-interface {v1, p1}, Lo/alj$StateListAnimator;->get(Lo/alj$Application;)Lo/alj$StateListAnimator;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    .line 121
    :cond_0
    iget-object v0, v0, Lkotlin/coroutines/CombinedContext;->e:Lo/alj;

    .line 122
    instance-of v1, v0, Lkotlin/coroutines/CombinedContext;

    if-eqz v1, :cond_1

    .line 123
    check-cast v0, Lkotlin/coroutines/CombinedContext;

    goto :goto_0

    .line 125
    :cond_1
    invoke-interface {v0, p1}, Lo/alj;->get(Lo/alj$Application;)Lo/alj$StateListAnimator;

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .locals 2

    .line 171
    iget-object v0, p0, Lkotlin/coroutines/CombinedContext;->e:Lo/alj;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lkotlin/coroutines/CombinedContext;->d:Lo/alj$StateListAnimator;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public minusKey(Lo/alj$Application;)Lo/alj;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/alj$Application<",
            "*>;)",
            "Lo/alj;"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lkotlin/coroutines/CombinedContext;->d:Lo/alj$StateListAnimator;

    invoke-interface {v0, p1}, Lo/alj$StateListAnimator;->get(Lo/alj$Application;)Lo/alj$StateListAnimator;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lkotlin/coroutines/CombinedContext;->e:Lo/alj;

    return-object p1

    .line 135
    :cond_0
    iget-object v0, p0, Lkotlin/coroutines/CombinedContext;->e:Lo/alj;

    invoke-interface {v0, p1}, Lo/alj;->minusKey(Lo/alj$Application;)Lo/alj;

    move-result-object p1

    .line 137
    iget-object v0, p0, Lkotlin/coroutines/CombinedContext;->e:Lo/alj;

    if-ne p1, v0, :cond_1

    move-object p1, p0

    check-cast p1, Lo/alj;

    goto :goto_0

    .line 138
    :cond_1
    sget-object v0, Lkotlin/coroutines/EmptyCoroutineContext;->d:Lkotlin/coroutines/EmptyCoroutineContext;

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lkotlin/coroutines/CombinedContext;->d:Lo/alj$StateListAnimator;

    check-cast p1, Lo/alj;

    goto :goto_0

    .line 139
    :cond_2
    new-instance v0, Lkotlin/coroutines/CombinedContext;

    iget-object v1, p0, Lkotlin/coroutines/CombinedContext;->d:Lo/alj$StateListAnimator;

    invoke-direct {v0, p1, v1}, Lkotlin/coroutines/CombinedContext;-><init>(Lo/alj;Lo/alj$StateListAnimator;)V

    move-object p1, v0

    check-cast p1, Lo/alj;

    :goto_0
    return-object p1
.end method

.method public plus(Lo/alj;)Lo/alj;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    invoke-static {p0, p1}, Lo/alj$ActionBar;->e(Lo/alj;Lo/alj;)Lo/alj;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lkotlin/coroutines/CombinedContext$toString$1;->b:Lkotlin/coroutines/CombinedContext$toString$1;

    check-cast v1, Lo/alN;

    const-string v2, ""

    invoke-virtual {p0, v2, v1}, Lkotlin/coroutines/CombinedContext;->fold(Ljava/lang/Object;Lo/alN;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
