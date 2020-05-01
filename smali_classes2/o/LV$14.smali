.class Lo/LV$14;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/LV;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lo/LV;


# direct methods
.method constructor <init>(Lo/LV;)V
    .locals 0

    .line 951
    iput-object p1, p0, Lo/LV$14;->d:Lo/LV;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    .line 954
    iget-object p1, p0, Lo/LV$14;->d:Lo/LV;

    invoke-static {p1}, Lo/LV;->a(Lo/LV;)Lo/LW;

    move-result-object p1

    invoke-interface {p1}, Lo/LW;->e()Lo/Bc;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 959
    :cond_0
    iget-object v0, p0, Lo/LV$14;->d:Lo/LV;

    iget-object v0, v0, Lo/LV;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    instance-of v0, v0, Lcom/netflix/mediaclient/ui/details/DetailsActivity;

    const-string v1, "MdxMiniPlayerViews"

    if-eqz v0, :cond_2

    .line 960
    iget-object v0, p0, Lo/LV$14;->d:Lo/LV;

    iget-object v0, v0, Lo/LV;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    check-cast v0, Lcom/netflix/mediaclient/ui/details/DetailsActivity;

    .line 961
    invoke-interface {p1}, Lo/Bc;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->s()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lo/aev;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 962
    invoke-interface {p1}, Lo/Bc;->bb()Lo/AK;

    move-result-object v2

    invoke-interface {v2}, Lo/AK;->Q()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->s()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lo/aev;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const-string p1, "Current details are already being shown - not showing details activity"

    .line 963
    invoke-static {v1, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    iget-object p1, p0, Lo/LV$14;->d:Lo/LV;

    iget-object p1, p1, Lo/LV;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->notifyMdxShowDetailsRequest()V

    return-void

    .line 969
    :cond_2
    invoke-interface {p1}, Lo/Bc;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v0

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->EPISODE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-ne v0, v2, :cond_3

    .line 970
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showing details activity from episode for: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 971
    iget-object v0, p0, Lo/LV$14;->d:Lo/LV;

    iget-object v2, v0, Lo/LV;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-interface {p1}, Lo/Bc;->bb()Lo/AK;

    move-result-object v0

    invoke-interface {v0}, Lo/AK;->Q()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Lo/Bc;->getId()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/netflix/mediaclient/servicemgr/EmptyPlayContext;

    const/16 p1, -0x19a

    invoke-direct {v5, v1, p1}, Lcom/netflix/mediaclient/servicemgr/EmptyPlayContext;-><init>(Ljava/lang/String;I)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lo/Dw;->a(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/PlayContext;Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;Ljava/lang/String;)V

    goto :goto_0

    .line 974
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showing details activity for: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 975
    iget-object v0, p0, Lo/LV$14;->d:Lo/LV;

    iget-object v0, v0, Lo/LV;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    new-instance v2, Lcom/netflix/mediaclient/servicemgr/EmptyPlayContext;

    const/16 v3, -0x19b

    invoke-direct {v2, v1, v3}, Lcom/netflix/mediaclient/servicemgr/EmptyPlayContext;-><init>(Ljava/lang/String;I)V

    const-string v1, "MdxMiniPlayer"

    invoke-static {v0, p1, v2, v1}, Lo/Dw;->e(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/AR;Lcom/netflix/mediaclient/servicemgr/PlayContext;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
