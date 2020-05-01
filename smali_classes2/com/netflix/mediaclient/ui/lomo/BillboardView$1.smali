.class Lcom/netflix/mediaclient/ui/lomo/BillboardView$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/lomo/BillboardView;->b(Lo/AK;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Landroid/widget/Button;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netflix/mediaclient/ui/lomo/BillboardView;

.field final synthetic b:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lo/Am;

.field final synthetic e:Lo/AK;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/lomo/BillboardView;Lo/Am;Ljava/lang/String;Lo/AK;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;)V
    .locals 0

    .line 825
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView$1;->a:Lcom/netflix/mediaclient/ui/lomo/BillboardView;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView$1;->d:Lo/Am;

    iput-object p3, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView$1;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView$1;->e:Lo/AK;

    iput-object p5, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView$1;->b:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 828
    sget-object p1, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->b:Lcom/netflix/mediaclient/ui/util/CLv2Utils;

    new-instance v0, Lcom/netflix/cl/model/event/session/Focus;

    sget-object v1, Lcom/netflix/cl/model/AppView;->playButton:Lcom/netflix/cl/model/AppView;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView$1;->a:Lcom/netflix/mediaclient/ui/lomo/BillboardView;

    iget-object v2, v2, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->s:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    const/4 v3, 0x0

    .line 829
    invoke-virtual {v2, v3}, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->e(Lorg/json/JSONObject;)Lcom/netflix/cl/model/TrackingInfo;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netflix/cl/model/event/session/Focus;-><init>(Lcom/netflix/cl/model/AppView;Lcom/netflix/cl/model/TrackingInfo;)V

    new-instance v1, Lcom/netflix/cl/model/event/session/command/PlayCommand;

    invoke-direct {v1, v3}, Lcom/netflix/cl/model/event/session/command/PlayCommand;-><init>(Ljava/lang/Long;)V

    .line 828
    invoke-virtual {p1, v0, v1}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->b(Lcom/netflix/cl/model/event/session/Focus;Lcom/netflix/cl/model/event/session/command/Command;)V

    .line 831
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView$1;->a:Lcom/netflix/mediaclient/ui/lomo/BillboardView;

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/BillboardInteractionType;->c:Lcom/netflix/mediaclient/servicemgr/BillboardInteractionType;

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->c(Lcom/netflix/mediaclient/servicemgr/BillboardInteractionType;)V

    .line 832
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView$1;->d:Lo/Am;

    invoke-virtual {p1}, Lo/Am;->c()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 833
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView$1;->d:Lo/Am;

    invoke-virtual {p1}, Lo/Am;->w()Lo/zG;

    move-result-object p1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView$1;->a:Lcom/netflix/mediaclient/ui/lomo/BillboardView;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->w:Lo/Ax;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/BillboardInteractionType;->c:Lcom/netflix/mediaclient/servicemgr/BillboardInteractionType;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView$1;->a:Lcom/netflix/mediaclient/ui/lomo/BillboardView;

    iget-object v2, v2, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->y:Ljava/util/Map;

    invoke-interface {p1, v0, v1, v2}, Lo/zG;->a(Lo/AR;Lcom/netflix/mediaclient/servicemgr/BillboardInteractionType;Ljava/util/Map;)V

    .line 835
    :cond_0
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView$1;->c:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, -0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView$1;->c:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 836
    :goto_0
    new-instance v0, Lcom/netflix/mediaclient/ui/player/PlayerExtras;

    invoke-direct {v0, p1}, Lcom/netflix/mediaclient/ui/player/PlayerExtras;-><init>(I)V

    .line 837
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView$1;->a:Lcom/netflix/mediaclient/ui/lomo/BillboardView;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView$1;->e:Lo/AK;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView$1;->b:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView$1;->a:Lcom/netflix/mediaclient/ui/lomo/BillboardView;

    iget-object v3, v3, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->s:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->j()Lcom/netflix/mediaclient/ui/common/PlayContextImp;

    move-result-object v3

    invoke-static {p1, v1, v2, v3, v0}, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher;->a(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/AK;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/PlayContext;Lcom/netflix/mediaclient/ui/player/PlayerExtras;)V

    return-void
.end method
