.class public final Lo/OP;
.super Lo/ON;
.source ""


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2}, Lo/ON;-><init>(II)V

    return-void
.end method


# virtual methods
.method public b(Lcom/netflix/model/leafs/social/multititle/NotificationGridTitleAction;)Ljava/lang/String;
    .locals 1

    const-string v0, "gridTitleAction"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-virtual {p1}, Lcom/netflix/model/leafs/social/multititle/NotificationGridTitleAction;->sdpWebp()Ljava/lang/String;

    move-result-object p1

    const-string v0, "gridTitleAction.sdpWebp()"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public c()F
    .locals 1

    const v0, 0x3fe39581    # 1.778f

    return v0
.end method
