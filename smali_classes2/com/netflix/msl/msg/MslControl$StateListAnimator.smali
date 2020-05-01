.class Lcom/netflix/msl/msg/MslControl$StateListAnimator;
.super Lcom/netflix/msl/util/MslContext;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/msl/msg/MslControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "StateListAnimator"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/msl/msg/MslControl$StateListAnimator$Application;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 329
    invoke-direct {p0}, Lcom/netflix/msl/util/MslContext;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/netflix/msl/msg/MslControl$3;)V
    .locals 0

    .line 329
    invoke-direct {p0}, Lcom/netflix/msl/msg/MslControl$StateListAnimator;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lo/ahx;
    .locals 0

    .line 446
    invoke-static {p1}, Lo/ahx;->c(Ljava/lang/String;)Lo/ahx;

    move-result-object p1

    return-object p1
.end method

.method public a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public b(Ljava/lang/String;)Lo/agT;
    .locals 0

    .line 406
    invoke-static {p1}, Lo/agT;->b(Ljava/lang/String;)Lo/agT;

    move-result-object p1

    return-object p1
.end method

.method public c()J
    .locals 2

    .line 358
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public c(Lo/agT;)Lo/agO;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public d(Lcom/netflix/msl/util/MslContext$ReauthCode;)Lo/agQ;
    .locals 1

    .line 390
    new-instance p1, Lo/agY;

    const-string v0, "dummy"

    invoke-direct {p1, v0}, Lo/agY;-><init>(Ljava/lang/String;)V

    return-object p1
.end method

.method public d()Lo/ahL;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public d(Ljava/lang/String;)Lo/aib;
    .locals 0

    .line 422
    invoke-static {p1}, Lo/aib;->e(Ljava/lang/String;)Lo/aib;

    move-result-object p1

    return-object p1
.end method

.method public d(Lo/aib;)Lo/aif;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public e()Ljava/util/SortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedSet<",
            "Lo/ahB;",
            ">;"
        }
    .end annotation

    .line 462
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    return-object v0
.end method

.method public e(Lo/ahx;)Lo/ahB;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public f()Lo/aim;
    .locals 1

    .line 470
    new-instance v0, Lo/aio;

    invoke-direct {v0}, Lo/aio;-><init>()V

    return-object v0
.end method

.method public g()Lo/ahZ;
    .locals 2

    .line 438
    new-instance v0, Lcom/netflix/msl/MslInternalException;

    const-string v1, "Dummy token factory should never actually get used."

    invoke-direct {v0, v1}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public h()Lo/aho;
    .locals 2

    .line 478
    new-instance v0, Lcom/netflix/msl/msg/MslControl$StateListAnimator$Application;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/netflix/msl/msg/MslControl$StateListAnimator$Application;-><init>(Lcom/netflix/msl/msg/MslControl$3;)V

    return-object v0
.end method

.method public i()Lo/agM;
    .locals 1

    .line 398
    new-instance v0, Lo/agS;

    invoke-direct {v0}, Lo/agS;-><init>()V

    return-object v0
.end method

.method public j()Ljava/util/Random;
    .locals 1

    .line 366
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    return-object v0
.end method
