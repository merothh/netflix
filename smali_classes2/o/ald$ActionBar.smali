.class public final Lo/ald$ActionBar;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ald;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ActionBar"
.end annotation


# direct methods
.method public static c(Lo/ald;Lo/alj$Application;)Lo/alj$StateListAnimator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lo/alj$StateListAnimator;",
            ">(",
            "Lo/ald;",
            "Lo/alj$Application<",
            "TE;>;)TE;"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    instance-of v0, p1, Lo/alb;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 57
    check-cast p1, Lo/alb;

    invoke-interface {p0}, Lo/ald;->getKey()Lo/alj$Application;

    move-result-object v0

    invoke-virtual {p1, v0}, Lo/alb;->e(Lo/alj$Application;)Z

    move-result v0

    if-eqz v0, :cond_1

    check-cast p0, Lo/alj$StateListAnimator;

    invoke-virtual {p1, p0}, Lo/alb;->b(Lo/alj$StateListAnimator;)Lo/alj$StateListAnimator;

    move-result-object p0

    instance-of p1, p0, Lo/alj$StateListAnimator;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, p0

    :cond_1
    :goto_0
    return-object v1

    .line 60
    :cond_2
    sget-object v0, Lo/ald;->a:Lo/ald$StateListAnimator;

    if-ne v0, p1, :cond_4

    if-eqz p0, :cond_3

    move-object v1, p0

    check-cast v1, Lo/alj$StateListAnimator;

    goto :goto_1

    :cond_3
    new-instance p0, Lkotlin/TypeCastException;

    const-string p1, "null cannot be cast to non-null type E"

    invoke-direct {p0, p1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_1
    return-object v1
.end method

.method public static e(Lo/ald;Lo/alj$Application;)Lo/alj;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/ald;",
            "Lo/alj$Application<",
            "*>;)",
            "Lo/alj;"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    instance-of v0, p1, Lo/alb;

    if-eqz v0, :cond_1

    .line 68
    check-cast p1, Lo/alb;

    invoke-interface {p0}, Lo/ald;->getKey()Lo/alj$Application;

    move-result-object v0

    invoke-virtual {p1, v0}, Lo/alb;->e(Lo/alj$Application;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lo/alj$StateListAnimator;

    invoke-virtual {p1, v0}, Lo/alb;->b(Lo/alj$StateListAnimator;)Lo/alj$StateListAnimator;

    move-result-object p1

    if-eqz p1, :cond_0

    sget-object p0, Lkotlin/coroutines/EmptyCoroutineContext;->d:Lkotlin/coroutines/EmptyCoroutineContext;

    :cond_0
    check-cast p0, Lo/alj;

    return-object p0

    .line 70
    :cond_1
    sget-object v0, Lo/ald;->a:Lo/ald$StateListAnimator;

    if-ne v0, p1, :cond_2

    sget-object p0, Lkotlin/coroutines/EmptyCoroutineContext;->d:Lkotlin/coroutines/EmptyCoroutineContext;

    :cond_2
    check-cast p0, Lo/alj;

    return-object p0
.end method
