.class public final Lo/eY$Application;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/eY;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Application"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lo/amc;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lo/eY$Application;-><init>()V

    return-void
.end method

.method private final c()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;
    .locals 1

    .line 34
    const-class v0, Lo/eY;

    invoke-static {v0}, Lo/cS;->b(Ljava/lang/Class;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final b()I
    .locals 2

    .line 37
    move-object v0, p0

    check-cast v0, Lo/eY$Application;

    invoke-direct {v0}, Lo/eY$Application;->c()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lo/eW;->a:[I

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    :goto_0
    const/4 v0, 0x0

    goto :goto_1

    .line 41
    :cond_1
    invoke-static {}, Lo/eY;->g()I

    move-result v0

    goto :goto_1

    .line 40
    :cond_2
    invoke-static {}, Lo/eY;->f()I

    move-result v0

    goto :goto_1

    .line 39
    :cond_3
    invoke-static {}, Lo/eY;->h()I

    move-result v0

    goto :goto_1

    .line 38
    :cond_4
    invoke-static {}, Lo/eY;->j()I

    move-result v0

    :goto_1
    return v0
.end method

.method public final e()Z
    .locals 2

    .line 32
    move-object v0, p0

    check-cast v0, Lo/eY$Application;

    invoke-direct {v0}, Lo/eY$Application;->c()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

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
