.class public final Lo/eE$ActionBar;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/eE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ActionBar"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lo/amc;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Lo/eE$ActionBar;-><init>()V

    return-void
.end method

.method private final a()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;
    .locals 1

    .line 31
    const-class v0, Lo/eE;

    invoke-static {v0}, Lo/cS;->b(Ljava/lang/Class;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final c()Z
    .locals 2

    .line 29
    move-object v0, p0

    check-cast v0, Lo/eE$ActionBar;

    invoke-direct {v0}, Lo/eE$ActionBar;->a()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;->CELL_1:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final d()Z
    .locals 4

    .line 24
    const-class v0, Lo/eE;

    invoke-static {v0}, Lo/cS;->c(Ljava/lang/Class;)Lo/fC;

    move-result-object v0

    check-cast v0, Lo/eE;

    .line 25
    sget-object v1, Lo/TextViewMetrics;->e:Lo/TextViewMetrics;

    .line 35
    const-class v1, Landroid/content/Context;

    invoke-static {v1}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    .line 26
    move-object v2, p0

    check-cast v2, Lo/eE$ActionBar;

    invoke-direct {v2}, Lo/eE$ActionBar;->a()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    move-result-object v2

    const-string v3, "getCell()"

    invoke-static {v2, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-virtual {v0, v1, v2}, Lo/eE;->d(Landroid/content/Context;Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;)Z

    move-result v0

    return v0
.end method
