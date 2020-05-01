.class public final Lo/alj$StateListAnimator$Activity;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/alj$StateListAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Activity"
.end annotation


# direct methods
.method public static a(Lo/alj$StateListAnimator;Lo/alj$Application;)Lo/alj$StateListAnimator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lo/alj$StateListAnimator;",
            ">(",
            "Lo/alj$StateListAnimator;",
            "Lo/alj$Application<",
            "TE;>;)TE;"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    invoke-interface {p0}, Lo/alj$StateListAnimator;->getKey()Lo/alj$Application;

    move-result-object v0

    invoke-static {v0, p1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static c(Lo/alj$StateListAnimator;Ljava/lang/Object;Lo/alN;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lo/alj$StateListAnimator;",
            "TR;",
            "Lo/alN<",
            "-TR;-",
            "Lo/alj$StateListAnimator;",
            "+TR;>;)TR;"
        }
    .end annotation

    const-string v0, "operation"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    invoke-interface {p2, p1, p0}, Lo/alN;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static c(Lo/alj$StateListAnimator;Lo/alj$Application;)Lo/alj;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/alj$StateListAnimator;",
            "Lo/alj$Application<",
            "*>;)",
            "Lo/alj;"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    invoke-interface {p0}, Lo/alj$StateListAnimator;->getKey()Lo/alj$Application;

    move-result-object v0

    invoke-static {v0, p1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p0, Lkotlin/coroutines/EmptyCoroutineContext;->d:Lkotlin/coroutines/EmptyCoroutineContext;

    :cond_0
    check-cast p0, Lo/alj;

    return-object p0
.end method

.method public static c(Lo/alj$StateListAnimator;Lo/alj;)Lo/alj;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lo/alj;

    invoke-static {p0, p1}, Lo/alj$ActionBar;->e(Lo/alj;Lo/alj;)Lo/alj;

    move-result-object p0

    return-object p0
.end method
