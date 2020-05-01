.class Lo/Os$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Os;->c(Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;I)Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;

.field final synthetic b:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/netflix/model/leafs/social/NotificationsListSummary;

.field final synthetic g:Lo/Os;


# direct methods
.method constructor <init>(Lo/Os;Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;Ljava/lang/String;Lcom/netflix/model/leafs/social/NotificationsListSummary;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;)V
    .locals 0

    .line 604
    iput-object p1, p0, Lo/Os$2;->g:Lo/Os;

    iput-object p2, p0, Lo/Os$2;->a:Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;

    iput-object p3, p0, Lo/Os$2;->d:Ljava/lang/String;

    iput-object p4, p0, Lo/Os$2;->e:Lcom/netflix/model/leafs/social/NotificationsListSummary;

    iput-object p5, p0, Lo/Os$2;->b:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    iput-object p6, p0, Lo/Os$2;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9

    .line 607
    iget-object p1, p0, Lo/Os$2;->g:Lo/Os;

    invoke-virtual {p1}, Lo/Os;->U_()Lo/Am;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 608
    invoke-virtual {p1}, Lo/Am;->w()Lo/zG;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lo/Os$2;->a:Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lo/Os$2;->g:Lo/Os;

    iget-object v0, v0, Lo/Os;->j:Lcom/netflix/model/leafs/social/NotificationsListSummary;

    if-eqz v0, :cond_2

    .line 610
    iget-object v0, p0, Lo/Os$2;->a:Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;->read()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lo/Os$2;->a:Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;->eventGuid()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 611
    invoke-virtual {p1}, Lo/Am;->w()Lo/zG;

    move-result-object p1

    iget-object v0, p0, Lo/Os$2;->a:Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;->eventGuid()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lo/Os$TaskDescription;

    iget-object v2, p0, Lo/Os$2;->g:Lo/Os;

    invoke-direct {v1, v2}, Lo/Os$TaskDescription;-><init>(Lo/Os;)V

    invoke-interface {p1, v0, v1}, Lo/zG;->i(Ljava/lang/String;Lo/zU;)V

    .line 614
    :cond_0
    new-instance v7, Lcom/netflix/mediaclient/ui/common/PlayContextImp;

    iget-object p1, p0, Lo/Os$2;->d:Ljava/lang/String;

    iget-object v0, p0, Lo/Os$2;->e:Lcom/netflix/model/leafs/social/NotificationsListSummary;

    invoke-interface {v0}, Lcom/netflix/model/leafs/social/NotificationsListSummary;->mdpTrackId()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {v7, p1, v0, v1, v1}, Lcom/netflix/mediaclient/ui/common/PlayContextImp;-><init>(Ljava/lang/String;III)V

    .line 615
    iget-object p1, p0, Lo/Os$2;->g:Lo/Os;

    invoke-virtual {p1}, Lo/Os;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v3

    iget-object v4, p0, Lo/Os$2;->b:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    iget-object v5, p0, Lo/Os$2;->c:Ljava/lang/String;

    iget-object p1, p0, Lo/Os$2;->a:Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;->videoTitle()Ljava/lang/String;

    move-result-object v6

    const-string v8, "SocialNotif"

    invoke-static/range {v3 .. v8}, Lo/Dw;->e(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/PlayContext;Ljava/lang/String;)V

    .line 617
    iget-object p1, p0, Lo/Os$2;->a:Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;->urlTarget()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 618
    iget-object p1, p0, Lo/Os$2;->g:Lo/Os;

    iget-object v0, p0, Lo/Os$2;->a:Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;->urlTarget()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/netflix/cl/model/event/session/command/ViewDetailsCommand;

    invoke-direct {v1}, Lcom/netflix/cl/model/event/session/command/ViewDetailsCommand;-><init>()V

    invoke-static {p1, v0, v1}, Lo/Os;->c(Lo/Os;Ljava/lang/String;Lcom/netflix/cl/model/event/session/command/Command;)V

    goto :goto_0

    .line 620
    :cond_1
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "NotificationsFrag"

    aput-object v2, v0, v1

    const-string v1, "%s: Clv2 error - urlTarget null"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method
