.class Lo/Os$TaskDescription;
.super Lo/Ai;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Os;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TaskDescription"
.end annotation


# instance fields
.field final synthetic b:Lo/Os;


# direct methods
.method constructor <init>(Lo/Os;)V
    .locals 0

    .line 688
    iput-object p1, p0, Lo/Os$TaskDescription;->b:Lo/Os;

    invoke-direct {p0}, Lo/Ai;-><init>()V

    return-void
.end method


# virtual methods
.method public o(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    .line 691
    invoke-super {p0, p1, p2}, Lo/Ai;->o(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 693
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->c()Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    .line 695
    iget-object p1, p0, Lo/Os$TaskDescription;->b:Lo/Os;

    invoke-virtual {p1}, Lo/Os;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object p1

    invoke-static {p1}, Lo/adk;->b(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 696
    iget-object p1, p0, Lo/Os$TaskDescription;->b:Lo/Os;

    invoke-virtual {p1}, Lo/Os;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lo/Am;

    move-result-object p1

    invoke-virtual {p1}, Lo/Am;->w()Lo/zG;

    move-result-object p1

    invoke-interface {p1, v0}, Lo/zG;->d(Z)V

    goto/16 :goto_2

    .line 698
    :cond_0
    iget-object p2, p0, Lo/Os$TaskDescription;->b:Lo/Os;

    iget-object p2, p2, Lo/Os;->j:Lcom/netflix/model/leafs/social/NotificationsListSummary;

    if-eqz p2, :cond_4

    iget-object p2, p0, Lo/Os$TaskDescription;->b:Lo/Os;

    iget-object p2, p2, Lo/Os;->j:Lcom/netflix/model/leafs/social/NotificationsListSummary;

    invoke-interface {p2}, Lcom/netflix/model/leafs/social/NotificationsListSummary;->notifications()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_4

    if-eqz p1, :cond_4

    .line 701
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 703
    iget-object v1, p0, Lo/Os$TaskDescription;->b:Lo/Os;

    iget-object v1, v1, Lo/Os;->j:Lcom/netflix/model/leafs/social/NotificationsListSummary;

    invoke-interface {v1}, Lcom/netflix/model/leafs/social/NotificationsListSummary;->notifications()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;

    .line 707
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v4, v2

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;

    .line 708
    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;->eventGuid()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 709
    invoke-interface {v5}, Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;->eventGuid()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 710
    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;->eventGuid()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5}, Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;->eventGuid()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 712
    invoke-interface {v5}, Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;->read()Z

    move-result v4

    invoke-interface {v2, v4}, Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;->makeCopy(Z)Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;

    move-result-object v4

    goto :goto_1

    .line 716
    :cond_2
    invoke-interface {p2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 719
    :cond_3
    iget-object p1, p0, Lo/Os$TaskDescription;->b:Lo/Os;

    iget-object v1, p1, Lo/Os;->j:Lcom/netflix/model/leafs/social/NotificationsListSummary;

    invoke-interface {v1, p2}, Lcom/netflix/model/leafs/social/NotificationsListSummary;->makeCopy(Ljava/util/List;)Lcom/netflix/model/leafs/social/NotificationsListSummary;

    move-result-object p2

    iput-object p2, p1, Lo/Os;->j:Lcom/netflix/model/leafs/social/NotificationsListSummary;

    .line 721
    iget-object p1, p0, Lo/Os$TaskDescription;->b:Lo/Os;

    invoke-virtual {p1}, Lo/Os;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object p1

    invoke-static {p1}, Lo/adk;->b(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 722
    iget-object p1, p0, Lo/Os$TaskDescription;->b:Lo/Os;

    invoke-virtual {p1}, Lo/Os;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lo/Am;

    move-result-object p1

    invoke-virtual {p1}, Lo/Am;->w()Lo/zG;

    move-result-object p1

    invoke-interface {p1, v0}, Lo/zG;->d(Z)V

    goto :goto_2

    .line 725
    :cond_4
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p2

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "NotificationsFrag"

    aput-object v3, v1, v2

    iget-object v2, p0, Lo/Os$TaskDescription;->b:Lo/Os;

    iget-object v2, v2, Lo/Os;->j:Lcom/netflix/model/leafs/social/NotificationsListSummary;

    aput-object v2, v1, v0

    const/4 v0, 0x2

    aput-object p1, v1, v0

    const-string p1, "%s: mNotifications: %s, notificationsMarkedAsRead: %s"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    :cond_5
    :goto_2
    return-void
.end method
