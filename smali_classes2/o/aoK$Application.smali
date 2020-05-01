.class public final Lo/aoK$Application;
.super Lo/alb;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/aoK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Application"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/alb<",
        "Lo/aon;",
        "Lo/aoK;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 23
    sget-object v0, Lo/aon;->d:Lo/aon$StateListAnimator;

    check-cast v0, Lo/alj$Application;

    .line 24
    sget-object v1, Lkotlinx/coroutines/ExecutorCoroutineDispatcher$Key$1;->d:Lkotlinx/coroutines/ExecutorCoroutineDispatcher$Key$1;

    check-cast v1, Lo/alA;

    .line 22
    invoke-direct {p0, v0, v1}, Lo/alb;-><init>(Lo/alj$Application;Lo/alA;)V

    return-void
.end method

.method public synthetic constructor <init>(Lo/amc;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lo/aoK$Application;-><init>()V

    return-void
.end method
