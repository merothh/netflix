.class public final Lo/eU$Application;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/eU;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Application"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lo/amc;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lo/eU$Application;-><init>()V

    return-void
.end method

.method private final a()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;
    .locals 2

    .line 72
    const-class v0, Lo/eU;

    invoke-static {v0}, Lo/cS;->b(Ljava/lang/Class;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    move-result-object v0

    const-string v1, "PersistentABConfig.getCe\u2026pTenHoldback::class.java)"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private final b()Z
    .locals 3

    .line 66
    const-class v0, Lo/eU;

    invoke-static {v0}, Lo/cS;->c(Ljava/lang/Class;)Lo/fC;

    move-result-object v0

    check-cast v0, Lo/eU;

    .line 67
    sget-object v1, Lo/TextViewMetrics;->e:Lo/TextViewMetrics;

    .line 76
    const-class v1, Landroid/content/Context;

    invoke-static {v1}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    .line 68
    move-object v2, p0

    check-cast v2, Lo/eU$Application;

    invoke-direct {v2}, Lo/eU$Application;->a()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    move-result-object v2

    .line 66
    invoke-virtual {v0, v1, v2}, Lo/eU;->d(Landroid/content/Context;Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;)Z

    move-result v0

    return v0
.end method

.method private final e()Z
    .locals 2

    .line 63
    move-object v0, p0

    check-cast v0, Lo/eU$Application;

    invoke-direct {v0}, Lo/eU$Application;->a()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;->CELL_1:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public final c()Z
    .locals 5

    .line 49
    sget-object v0, Lo/hk;->b:Lo/hk$ActionBar;

    invoke-virtual {v0}, Lo/hk$ActionBar;->b()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 54
    :cond_0
    sget-object v0, Lo/eh;->c:Lo/eh$Application;

    invoke-virtual {v0}, Lo/eh$Application;->d()Z

    move-result v0

    .line 56
    move-object v2, p0

    check-cast v2, Lo/eU$Application;

    invoke-direct {v2}, Lo/eU$Application;->e()Z

    move-result v3

    .line 58
    sget-object v4, Lo/hg;->b:Lo/hg$StateListAnimator;

    invoke-virtual {v4}, Lo/hg$StateListAnimator;->d()Z

    move-result v4

    if-nez v0, :cond_2

    if-eqz v3, :cond_1

    .line 60
    invoke-direct {v2}, Lo/eU$Application;->b()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    if-eqz v3, :cond_3

    if-eqz v4, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    return v1
.end method
