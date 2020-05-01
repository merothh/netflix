.class Lo/Ka;
.super Lo/Kd;
.source ""


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;Ljava/lang/String;Lo/Am;Lo/PooledStringWriter;ILo/KN;Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;)V
    .locals 0

    .line 28
    invoke-direct/range {p0 .. p8}, Lo/Kd;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;Ljava/lang/String;Lo/Am;Lo/PooledStringWriter;ILo/KN;Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;I)I
    .locals 0

    .line 38
    invoke-static {p1, p2}, Lo/Kl$TaskDescription;->b(Landroid/content/Context;I)I

    move-result p1

    return p1
.end method

.method public d(Landroid/content/Context;Lo/Am;IILo/zU;)V
    .locals 6

    .line 45
    invoke-virtual {p2}, Lo/Am;->w()Lo/zG;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v1, p3

    move v2, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lo/zG;->e(IILjava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;Lo/zU;)Z

    return-void
.end method

.method public s()I
    .locals 2

    .line 33
    invoke-virtual {p0}, Lo/Ka;->f()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0}, Lo/Ka;->e()Lo/PooledStringWriter;

    move-result-object v1

    invoke-static {v0, v1}, Lo/Kl$TaskDescription;->e(ILo/PooledStringWriter;)I

    move-result v0

    return v0
.end method
