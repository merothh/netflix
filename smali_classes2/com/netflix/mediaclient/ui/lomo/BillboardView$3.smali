.class Lcom/netflix/mediaclient/ui/lomo/BillboardView$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/lomo/BillboardView;->n()Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lo/Am;

.field final synthetic e:Lcom/netflix/mediaclient/ui/lomo/BillboardView;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/lomo/BillboardView;Lo/Am;)V
    .locals 0

    .line 641
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView$3;->e:Lcom/netflix/mediaclient/ui/lomo/BillboardView;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView$3;->b:Lo/Am;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 644
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView$3;->e:Lcom/netflix/mediaclient/ui/lomo/BillboardView;

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/BillboardInteractionType;->c:Lcom/netflix/mediaclient/servicemgr/BillboardInteractionType;

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->c(Lcom/netflix/mediaclient/servicemgr/BillboardInteractionType;)V

    .line 645
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView$3;->b:Lo/Am;

    invoke-virtual {p1}, Lo/Am;->c()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 646
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView$3;->b:Lo/Am;

    invoke-virtual {p1}, Lo/Am;->w()Lo/zG;

    move-result-object p1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView$3;->e:Lcom/netflix/mediaclient/ui/lomo/BillboardView;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->w:Lo/Ax;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/BillboardInteractionType;->c:Lcom/netflix/mediaclient/servicemgr/BillboardInteractionType;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView$3;->e:Lcom/netflix/mediaclient/ui/lomo/BillboardView;

    iget-object v2, v2, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->y:Ljava/util/Map;

    invoke-interface {p1, v0, v1, v2}, Lo/zG;->a(Lo/AR;Lcom/netflix/mediaclient/servicemgr/BillboardInteractionType;Ljava/util/Map;)V

    .line 648
    :cond_0
    sget-object p1, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->b:Lcom/netflix/mediaclient/ui/util/CLv2Utils;

    new-instance v0, Lcom/netflix/cl/model/event/session/Focus;

    sget-object v1, Lcom/netflix/cl/model/AppView;->billboard:Lcom/netflix/cl/model/AppView;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView$3;->e:Lcom/netflix/mediaclient/ui/lomo/BillboardView;

    iget-object v2, v2, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->s:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    const/4 v3, 0x0

    .line 649
    invoke-virtual {v2, v3}, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->e(Lorg/json/JSONObject;)Lcom/netflix/cl/model/TrackingInfo;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netflix/cl/model/event/session/Focus;-><init>(Lcom/netflix/cl/model/AppView;Lcom/netflix/cl/model/TrackingInfo;)V

    new-instance v1, Lcom/netflix/cl/model/event/session/command/ViewDetailsCommand;

    invoke-direct {v1}, Lcom/netflix/cl/model/event/session/command/ViewDetailsCommand;-><init>()V

    .line 648
    invoke-virtual {p1, v0, v1}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->b(Lcom/netflix/cl/model/event/session/Focus;Lcom/netflix/cl/model/event/session/command/Command;)V

    .line 651
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView$3;->e:Lcom/netflix/mediaclient/ui/lomo/BillboardView;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->getContext()Landroid/content/Context;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iget-object p1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView$3;->e:Lcom/netflix/mediaclient/ui/lomo/BillboardView;

    iget-object v1, p1, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->w:Lo/Ax;

    iget-object p1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView$3;->e:Lcom/netflix/mediaclient/ui/lomo/BillboardView;

    iget-object p1, p1, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->w:Lo/Ax;

    invoke-interface {p1}, Lo/Ax;->Q()Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView$3;->e:Lcom/netflix/mediaclient/ui/lomo/BillboardView;

    iget-object p1, p1, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->w:Lo/Ax;

    invoke-interface {p1}, Lo/Ax;->O()Ljava/lang/String;

    move-result-object v3

    iget-object p1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView$3;->e:Lcom/netflix/mediaclient/ui/lomo/BillboardView;

    iget-object p1, p1, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->s:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    .line 652
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->j()Lcom/netflix/mediaclient/ui/common/PlayContextImp;

    move-result-object v4

    const-string v5, "BbView"

    .line 651
    invoke-static/range {v0 .. v5}, Lo/Dw;->b(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/AR;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/PlayContext;Ljava/lang/String;)V

    return-void
.end method