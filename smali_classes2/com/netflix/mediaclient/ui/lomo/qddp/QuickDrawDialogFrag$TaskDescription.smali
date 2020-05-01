.class public final Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag$TaskDescription;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/As;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag;->e(Lo/agg;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/agg;

.field final synthetic c:Landroid/view/View;

.field final synthetic d:Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag;


# direct methods
.method constructor <init>(Landroid/view/View;Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag;Lo/agg;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag$TaskDescription;->c:Landroid/view/View;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag$TaskDescription;->d:Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag;

    iput-object p3, p0, Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag$TaskDescription;->a:Lo/agg;

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    .line 181
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag$TaskDescription;->a:Lo/agg;

    invoke-interface {v0}, Lo/agg;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "video.playableId"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public d()Z
    .locals 2

    .line 182
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag$TaskDescription;->a:Lo/agg;

    invoke-interface {v0}, Lo/agg;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->SHOW:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public e()Z
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag$TaskDescription;->a:Lo/agg;

    invoke-interface {v0}, Lo/agg;->isAvailableForDownload()Z

    move-result v0

    return v0
.end method
