.class public final Lo/aoU$StateListAnimator;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/aoU;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StateListAnimator"
.end annotation


# direct methods
.method public static c(Lo/aoU;Lo/alj$Application;)Lo/alj;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/aoU;",
            "Lo/alj$Application<",
            "*>;)",
            "Lo/alj;"
        }
    .end annotation

    check-cast p0, Lo/alj$StateListAnimator;

    invoke-static {p0, p1}, Lo/alj$StateListAnimator$Activity;->c(Lo/alj$StateListAnimator;Lo/alj$Application;)Lo/alj;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lo/aoU;ZZLo/alA;ILjava/lang/Object;)Lo/aoA;
    .locals 0

    if-nez p5, :cond_2

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    const/4 p2, 0x1

    .line 325
    :cond_1
    invoke-interface {p0, p1, p2, p3}, Lo/aoU;->b(ZZLo/alA;)Lo/aoA;

    move-result-object p0

    return-object p0

    .line 0
    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: invokeOnCompletion"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static d(Lo/aoU;Lo/alj$Application;)Lo/alj$StateListAnimator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lo/alj$StateListAnimator;",
            ">(",
            "Lo/aoU;",
            "Lo/alj$Application<",
            "TE;>;)TE;"
        }
    .end annotation

    check-cast p0, Lo/alj$StateListAnimator;

    invoke-static {p0, p1}, Lo/alj$StateListAnimator$Activity;->a(Lo/alj$StateListAnimator;Lo/alj$Application;)Lo/alj$StateListAnimator;

    move-result-object p0

    return-object p0
.end method

.method public static d(Lo/aoU;Lo/alj;)Lo/alj;
    .locals 0

    check-cast p0, Lo/alj$StateListAnimator;

    invoke-static {p0, p1}, Lo/alj$StateListAnimator$Activity;->c(Lo/alj$StateListAnimator;Lo/alj;)Lo/alj;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lo/aoU;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V
    .locals 0

    if-nez p3, :cond_1

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 164
    check-cast p1, Ljava/util/concurrent/CancellationException;

    :cond_0
    invoke-interface {p0, p1}, Lo/aoU;->e(Ljava/util/concurrent/CancellationException;)V

    return-void

    .line 0
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: cancel"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static e(Lo/aoU;Ljava/lang/Object;Lo/alN;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lo/aoU;",
            "TR;",
            "Lo/alN<",
            "-TR;-",
            "Lo/alj$StateListAnimator;",
            "+TR;>;)TR;"
        }
    .end annotation

    check-cast p0, Lo/alj$StateListAnimator;

    invoke-static {p0, p1, p2}, Lo/alj$StateListAnimator$Activity;->c(Lo/alj$StateListAnimator;Ljava/lang/Object;Lo/alN;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
