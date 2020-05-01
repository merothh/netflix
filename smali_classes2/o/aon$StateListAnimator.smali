.class public final Lo/aon$StateListAnimator;
.super Lo/alb;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/aon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StateListAnimator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/alb<",
        "Lo/ald;",
        "Lo/aon;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 36
    sget-object v0, Lo/ald;->a:Lo/ald$StateListAnimator;

    check-cast v0, Lo/alj$Application;

    .line 37
    sget-object v1, Lkotlinx/coroutines/CoroutineDispatcher$Key$1;->c:Lkotlinx/coroutines/CoroutineDispatcher$Key$1;

    check-cast v1, Lo/alA;

    .line 35
    invoke-direct {p0, v0, v1}, Lo/alb;-><init>(Lo/alj$Application;Lo/alA;)V

    return-void
.end method

.method public synthetic constructor <init>(Lo/amc;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lo/aon$StateListAnimator;-><init>()V

    return-void
.end method
