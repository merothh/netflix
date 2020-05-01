.class public final Lo/api$Activity;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/api;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Activity"
.end annotation


# direct methods
.method public static a(Lo/api;Lo/alj$Application;)Lo/alj$StateListAnimator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            "E::",
            "Lo/alj$StateListAnimator;",
            ">(",
            "Lo/api<",
            "TS;>;",
            "Lo/alj$Application<",
            "TE;>;)TE;"
        }
    .end annotation

    check-cast p0, Lo/alj$StateListAnimator;

    invoke-static {p0, p1}, Lo/alj$StateListAnimator$Activity;->a(Lo/alj$StateListAnimator;Lo/alj$Application;)Lo/alj$StateListAnimator;

    move-result-object p0

    return-object p0
.end method

.method public static b(Lo/api;Lo/alj$Application;)Lo/alj;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Lo/api<",
            "TS;>;",
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

.method public static b(Lo/api;Lo/alj;)Lo/alj;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Lo/api<",
            "TS;>;",
            "Lo/alj;",
            ")",
            "Lo/alj;"
        }
    .end annotation

    check-cast p0, Lo/alj$StateListAnimator;

    invoke-static {p0, p1}, Lo/alj$StateListAnimator$Activity;->c(Lo/alj$StateListAnimator;Lo/alj;)Lo/alj;

    move-result-object p0

    return-object p0
.end method

.method public static d(Lo/api;Ljava/lang/Object;Lo/alN;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lo/api<",
            "TS;>;TR;",
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
