.class public final Lo/dy$TaskDescription;
.super Lo/MessagePdu;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/dy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TaskDescription"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const-string v0, "ConfigAb14518InAppUpdate"

    .line 26
    invoke-direct {p0, v0}, Lo/MessagePdu;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic constructor <init>(Lo/amc;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lo/dy$TaskDescription;-><init>()V

    return-void
.end method

.method private final e()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;
    .locals 1

    .line 33
    const-class v0, Lo/dy;

    invoke-static {v0}, Lo/cS;->b(Ljava/lang/Class;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final d()Z
    .locals 2

    .line 29
    move-object v0, p0

    check-cast v0, Lo/dy$TaskDescription;

    invoke-direct {v0}, Lo/dy$TaskDescription;->e()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

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
