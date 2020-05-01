.class public Lo/fr;
.super Lo/fC;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lo/fC;-><init>()V

    return-void
.end method

.method public static b(Landroid/content/Context;)J
    .locals 2

    if-eqz p0, :cond_2

    .line 34
    sget-object v0, Lo/fr$5;->c:[I

    const-class v1, Lo/fr;

    invoke-static {v1, p0}, Lo/cS;->c(Ljava/lang/Class;Landroid/content/Context;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    move-result-object p0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x1f4

    goto :goto_1

    :cond_1
    const-wide/16 v0, 0x17c

    goto :goto_1

    :cond_2
    :goto_0
    const-wide/16 v0, 0x0

    :goto_1
    return-wide v0
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    const-string v0, "8332"

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    const-string v0, "persistent_ab8332_key"

    return-object v0
.end method
