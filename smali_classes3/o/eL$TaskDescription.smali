.class public final Lo/eL$TaskDescription;
.super Lo/MessagePdu;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/eL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TaskDescription"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const-string v0, "Config_Ab19813_ExtrasTabRenaming"

    .line 24
    invoke-direct {p0, v0}, Lo/MessagePdu;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic constructor <init>(Lo/amc;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lo/eL$TaskDescription;-><init>()V

    return-void
.end method

.method private final a()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;
    .locals 1

    .line 47
    const-class v0, Lo/eL;

    invoke-static {v0}, Lo/cS;->b(Ljava/lang/Class;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    move-result-object v0

    return-object v0
.end method

.method private final d()Z
    .locals 4

    .line 55
    const-class v0, Lo/eL;

    invoke-static {v0}, Lo/cS;->c(Ljava/lang/Class;)Lo/fC;

    move-result-object v0

    check-cast v0, Lo/eL;

    .line 56
    sget-object v1, Lo/TextViewMetrics;->e:Lo/TextViewMetrics;

    .line 62
    const-class v1, Landroid/content/Context;

    invoke-static {v1}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    .line 57
    move-object v2, p0

    check-cast v2, Lo/eL$TaskDescription;

    invoke-direct {v2}, Lo/eL$TaskDescription;->a()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    move-result-object v2

    const-string v3, "getCell()"

    invoke-static {v2, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    invoke-virtual {v0, v1, v2}, Lo/eL;->d(Landroid/content/Context;Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final b()I
    .locals 2

    .line 51
    move-object v0, p0

    check-cast v0, Lo/eL$TaskDescription;

    invoke-direct {v0}, Lo/eL$TaskDescription;->a()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    move-result-object v0

    const-string v1, "getCell()"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;->getCellId()I

    move-result v0

    return v0
.end method

.method public final c()Z
    .locals 3

    .line 49
    move-object v0, p0

    check-cast v0, Lo/eL$TaskDescription;

    invoke-virtual {v0}, Lo/eL$TaskDescription;->b()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-direct {v0}, Lo/eL$TaskDescription;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method
