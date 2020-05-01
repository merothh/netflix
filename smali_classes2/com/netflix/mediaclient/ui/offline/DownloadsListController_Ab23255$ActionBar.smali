.class final Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab23255$ActionBar;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/LongStream;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab23255;->addEpisodeModel(Lo/Tf;Lo/Tf;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lo/BiConsumer<",
        "*>;V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/LongStream<",
        "Lo/Qv;",
        "Lo/Qt$StateListAnimator;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab23255;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab23255;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab23255$ActionBar;->a:Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab23255;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final c(Lo/Qv;Lo/Qt$StateListAnimator;Landroid/view/View;I)V
    .locals 1

    .line 274
    invoke-virtual {p1}, Lo/Qv;->y()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 275
    iget-object p2, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab23255$ActionBar;->a:Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab23255;

    const-string p3, "model"

    invoke-static {p1, p3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lo/RZ;

    invoke-virtual {p2, p1}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab23255;->toggleSelectedState(Lo/RZ;)V

    goto :goto_0

    .line 277
    :cond_0
    invoke-virtual {p1}, Lo/Qv;->r()Lo/Tf;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 278
    iget-object p3, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab23255$ActionBar;->a:Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab23255;

    invoke-virtual {p3}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab23255;->getScreenLauncher()Lo/Rr$Activity;

    move-result-object p3

    .line 279
    invoke-virtual {p2}, Lo/Tf;->a()Ljava/lang/String;

    move-result-object p4

    const-string v0, "it.playableId"

    invoke-static {p4, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 280
    invoke-virtual {p2}, Lo/Tf;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object p2

    const-string v0, "it.type"

    invoke-static {p2, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 281
    invoke-virtual {p1}, Lo/Qv;->x()Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    move-result-object p1

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/PlayLocationType;->i:Lcom/netflix/mediaclient/servicemgr/PlayLocationType;

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->b(Lcom/netflix/mediaclient/servicemgr/PlayLocationType;)Lcom/netflix/mediaclient/ui/common/PlayContextImp;

    move-result-object p1

    check-cast p1, Lcom/netflix/mediaclient/servicemgr/PlayContext;

    .line 278
    invoke-interface {p3, p4, p2, p1}, Lo/Rr$Activity;->c(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/PlayContext;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public synthetic d(Lo/BiConsumer;Ljava/lang/Object;Landroid/view/View;I)V
    .locals 0

    .line 34
    check-cast p1, Lo/Qv;

    check-cast p2, Lo/Qt$StateListAnimator;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab23255$ActionBar;->c(Lo/Qv;Lo/Qt$StateListAnimator;Landroid/view/View;I)V

    return-void
.end method
