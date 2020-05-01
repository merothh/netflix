.class public final Lo/KA$Application$TaskDescription;
.super Lo/Yd;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/KA$Application;-><init>(Landroid/view/ViewGroup;Landroid/view/View;Lo/PatternMatcher;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lo/KA$Application;


# direct methods
.method constructor <init>(Lo/KA$Application;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .line 53
    iput-object p1, p0, Lo/KA$Application$TaskDescription;->b:Lo/KA$Application;

    iput-object p2, p0, Lo/KA$Application$TaskDescription;->a:Landroid/view/View;

    invoke-direct {p0}, Lo/Yd;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Lcom/netflix/cl/model/TrackingInfo;
    .locals 1

    .line 58
    iget-object v0, p0, Lo/KA$Application$TaskDescription;->b:Lo/KA$Application;

    invoke-virtual {v0}, Lo/KA$Application;->k()Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->e(Lorg/json/JSONObject;)Lcom/netflix/cl/model/TrackingInfo;

    move-result-object p1

    return-object p1
.end method

.method public a()Lo/Av;
    .locals 1

    .line 60
    iget-object v0, p0, Lo/KA$Application$TaskDescription;->b:Lo/KA$Application;

    invoke-virtual {v0}, Lo/KA$Application;->i()Lo/Av;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/lang/Integer;
    .locals 1

    .line 64
    iget-object v0, p0, Lo/KA$Application$TaskDescription;->b:Lo/KA$Application;

    invoke-virtual {v0}, Lo/KA$Application;->l()Lo/Ky;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/Ky;->e()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public c()Ljava/lang/Integer;
    .locals 2

    .line 62
    iget-object v0, p0, Lo/KA$Application$TaskDescription;->b:Lo/KA$Application;

    invoke-virtual {v0}, Lo/KA$Application;->getAdapterPosition()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lo/KA$Application$TaskDescription;->b:Lo/KA$Application;

    invoke-virtual {v0}, Lo/KA$Application;->getAdapterPosition()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public d()Landroid/view/View;
    .locals 1

    .line 55
    iget-object v0, p0, Lo/KA$Application$TaskDescription;->a:Landroid/view/View;

    return-object v0
.end method

.method public synthetic e()Lo/Bv;
    .locals 1

    .line 53
    invoke-virtual {p0}, Lo/KA$Application$TaskDescription;->i()Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    move-result-object v0

    check-cast v0, Lo/Bv;

    return-object v0
.end method

.method public f()Z
    .locals 1

    .line 83
    iget-object v0, p0, Lo/KA$Application$TaskDescription;->b:Lo/KA$Application;

    invoke-virtual {v0}, Lo/KA$Application;->g()Z

    move-result v0

    return v0
.end method

.method public g()Lcom/netflix/cl/model/AppView;
    .locals 1

    .line 79
    iget-object v0, p0, Lo/KA$Application$TaskDescription;->b:Lo/KA$Application;

    invoke-virtual {v0}, Lo/KA$Application;->n()Lcom/netflix/cl/model/AppView;

    move-result-object v0

    return-object v0
.end method

.method public h()Lcom/netflix/cl/model/context/CLContext;
    .locals 1

    .line 76
    iget-object v0, p0, Lo/KA$Application$TaskDescription;->b:Lo/KA$Application;

    invoke-virtual {v0}, Lo/KA$Application;->o()Lcom/netflix/cl/model/context/CLContext;

    move-result-object v0

    return-object v0
.end method

.method public i()Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;
    .locals 1

    .line 70
    iget-object v0, p0, Lo/KA$Application$TaskDescription;->b:Lo/KA$Application;

    invoke-virtual {v0}, Lo/KA$Application;->l()Lo/Ky;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/Ky;->d()Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public j()Lorg/json/JSONObject;
    .locals 3

    .line 73
    iget-object v0, p0, Lo/KA$Application$TaskDescription;->b:Lo/KA$Application;

    invoke-virtual {v0}, Lo/KA$Application;->i()Lo/Av;

    move-result-object v1

    iget-object v2, p0, Lo/KA$Application$TaskDescription;->b:Lo/KA$Application;

    invoke-virtual {v2}, Lo/KA$Application;->l()Lo/Ky;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lo/KA$Application;->c(Lo/Av;Lo/Ky;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method
