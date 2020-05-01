.class public final Lkotlin/coroutines/CoroutineContext$plus$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alN;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/alj$ActionBar;->e(Lo/alj;Lo/alj;)Lo/alj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alN<",
        "Lo/alj;",
        "Lo/alj$StateListAnimator;",
        "Lo/alj;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lkotlin/coroutines/CoroutineContext$plus$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlin/coroutines/CoroutineContext$plus$1;

    invoke-direct {v0}, Lkotlin/coroutines/CoroutineContext$plus$1;-><init>()V

    sput-object v0, Lkotlin/coroutines/CoroutineContext$plus$1;->a:Lkotlin/coroutines/CoroutineContext$plus$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final c(Lo/alj;Lo/alj$StateListAnimator;)Lo/alj;
    .locals 3

    const-string v0, "acc"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "element"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-interface {p2}, Lo/alj$StateListAnimator;->getKey()Lo/alj$Application;

    move-result-object v0

    invoke-interface {p1, v0}, Lo/alj;->minusKey(Lo/alj$Application;)Lo/alj;

    move-result-object p1

    .line 34
    sget-object v0, Lkotlin/coroutines/EmptyCoroutineContext;->d:Lkotlin/coroutines/EmptyCoroutineContext;

    if-ne p1, v0, :cond_0

    check-cast p2, Lo/alj;

    goto :goto_1

    .line 36
    :cond_0
    sget-object v0, Lo/ald;->a:Lo/ald$StateListAnimator;

    check-cast v0, Lo/alj$Application;

    invoke-interface {p1, v0}, Lo/alj;->get(Lo/alj$Application;)Lo/alj$StateListAnimator;

    move-result-object v0

    check-cast v0, Lo/ald;

    if-nez v0, :cond_1

    .line 37
    new-instance v0, Lkotlin/coroutines/CombinedContext;

    invoke-direct {v0, p1, p2}, Lkotlin/coroutines/CombinedContext;-><init>(Lo/alj;Lo/alj$StateListAnimator;)V

    move-object p1, v0

    goto :goto_0

    .line 38
    :cond_1
    sget-object v1, Lo/ald;->a:Lo/ald$StateListAnimator;

    check-cast v1, Lo/alj$Application;

    invoke-interface {p1, v1}, Lo/alj;->minusKey(Lo/alj$Application;)Lo/alj;

    move-result-object p1

    .line 39
    sget-object v1, Lkotlin/coroutines/EmptyCoroutineContext;->d:Lkotlin/coroutines/EmptyCoroutineContext;

    if-ne p1, v1, :cond_2

    new-instance p1, Lkotlin/coroutines/CombinedContext;

    check-cast p2, Lo/alj;

    check-cast v0, Lo/alj$StateListAnimator;

    invoke-direct {p1, p2, v0}, Lkotlin/coroutines/CombinedContext;-><init>(Lo/alj;Lo/alj$StateListAnimator;)V

    goto :goto_0

    .line 40
    :cond_2
    new-instance v1, Lkotlin/coroutines/CombinedContext;

    new-instance v2, Lkotlin/coroutines/CombinedContext;

    invoke-direct {v2, p1, p2}, Lkotlin/coroutines/CombinedContext;-><init>(Lo/alj;Lo/alj$StateListAnimator;)V

    check-cast v2, Lo/alj;

    check-cast v0, Lo/alj$StateListAnimator;

    invoke-direct {v1, v2, v0}, Lkotlin/coroutines/CombinedContext;-><init>(Lo/alj;Lo/alj$StateListAnimator;)V

    move-object p1, v1

    .line 37
    :goto_0
    move-object p2, p1

    check-cast p2, Lo/alj;

    :goto_1
    return-object p2
.end method

.method public synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 14
    check-cast p1, Lo/alj;

    check-cast p2, Lo/alj$StateListAnimator;

    invoke-virtual {p0, p1, p2}, Lkotlin/coroutines/CoroutineContext$plus$1;->c(Lo/alj;Lo/alj$StateListAnimator;)Lo/alj;

    move-result-object p1

    return-object p1
.end method
