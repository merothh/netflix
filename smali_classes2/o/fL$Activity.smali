.class public final Lo/fL$Activity;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/fL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Activity"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lo/amc;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Lo/fL$Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 3

    .line 11
    move-object v0, p0

    check-cast v0, Lo/fL$Activity;

    invoke-virtual {v0}, Lo/fL$Activity;->d()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;->CELL_1:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    if-eq v1, v2, :cond_0

    invoke-virtual {v0}, Lo/fL$Activity;->d()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;->CELL_3:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final b()Z
    .locals 1

    .line 14
    move-object v0, p0

    check-cast v0, Lo/fL$Activity;

    invoke-virtual {v0}, Lo/fL$Activity;->a()Z

    move-result v0

    return v0
.end method

.method public final d()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;
    .locals 2

    const-string v0, "13662"

    .line 17
    invoke-static {v0}, Lo/fQ;->e(Ljava/lang/String;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    move-result-object v0

    const-string v1, "getCell(TEST_ID)"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method