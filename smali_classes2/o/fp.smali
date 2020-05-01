.class public Lo/fp;
.super Lo/fC;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lo/fC;-><init>()V

    return-void
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 62
    const-class v0, Lo/fp;

    invoke-static {v0, p0}, Lo/cS;->c(Ljava/lang/Class;Landroid/content/Context;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    move-result-object p0

    sget-object v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;->CELL_2:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    const-string v0, "8687"

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    const-string v0, "persistent_ab8687"

    return-object v0
.end method
