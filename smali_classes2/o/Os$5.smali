.class Lo/Os$5;
.super Lo/zP;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Os;->c(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/Am;

.field final synthetic c:Lo/Os;


# direct methods
.method constructor <init>(Lo/Os;Ljava/lang/String;Lo/Am;)V
    .locals 0

    .line 816
    iput-object p1, p0, Lo/Os$5;->c:Lo/Os;

    iput-object p3, p0, Lo/Os$5;->a:Lo/Am;

    invoke-direct {p0, p2}, Lo/zP;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic c()V
    .locals 1

    .line 855
    iget-object v0, p0, Lo/Os$5;->c:Lo/Os;

    invoke-virtual {v0}, Lo/Os;->getActivity()Lo/Serializable;

    move-result-object v0

    invoke-static {v0}, Lo/adk;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 856
    iget-object v0, p0, Lo/Os$5;->c:Lo/Os;

    invoke-virtual {v0}, Lo/Os;->A()V

    :cond_0
    return-void
.end method

.method static synthetic e(Lo/Os$5;)V
    .locals 0

    invoke-direct {p0}, Lo/Os$5;->c()V

    return-void
.end method


# virtual methods
.method public e(Lcom/netflix/model/leafs/social/NotificationsListSummary;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 5

    .line 819
    invoke-super {p0, p1, p2}, Lo/zP;->e(Lcom/netflix/model/leafs/social/NotificationsListSummary;Lcom/netflix/mediaclient/android/app/Status;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_6

    .line 821
    invoke-interface {p1}, Lcom/netflix/model/leafs/social/NotificationsListSummary;->notifications()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_0

    goto/16 :goto_2

    .line 828
    :cond_0
    invoke-interface {p1}, Lcom/netflix/model/leafs/social/NotificationsListSummary;->notifications()Ljava/util/List;

    move-result-object v2

    .line 830
    iget-object v3, p0, Lo/Os$5;->c:Lo/Os;

    invoke-static {v3, p2}, Lo/Os;->c(Lo/Os;Lcom/netflix/mediaclient/android/app/Status;)Z

    move-result p2

    if-nez p2, :cond_5

    .line 831
    iget-object p2, p0, Lo/Os$5;->c:Lo/Os;

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    iget-object v4, p0, Lo/Os$5;->c:Lo/Os;

    invoke-virtual {v4}, Lo/Os;->F()I

    move-result v4

    if-ne v3, v4, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    invoke-static {p2, v3}, Lo/Os;->e(Lo/Os;Z)Z

    .line 833
    iget-object p2, p0, Lo/Os$5;->c:Lo/Os;

    invoke-virtual {p2}, Lo/Os;->F()I

    move-result p2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge p2, v3, :cond_2

    .line 834
    iget-object p2, p0, Lo/Os$5;->c:Lo/Os;

    invoke-virtual {p2}, Lo/Os;->F()I

    move-result v3

    invoke-interface {v2, v1, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-interface {p1, v2}, Lcom/netflix/model/leafs/social/NotificationsListSummary;->makeCopy(Ljava/util/List;)Lcom/netflix/model/leafs/social/NotificationsListSummary;

    move-result-object p1

    iput-object p1, p2, Lo/Os;->j:Lcom/netflix/model/leafs/social/NotificationsListSummary;

    goto :goto_1

    .line 836
    :cond_2
    iget-object p2, p0, Lo/Os$5;->c:Lo/Os;

    iput-object p1, p2, Lo/Os;->j:Lcom/netflix/model/leafs/social/NotificationsListSummary;

    .line 839
    :goto_1
    iget-object p1, p0, Lo/Os$5;->c:Lo/Os;

    invoke-virtual {p1}, Lo/Os;->y()V

    .line 842
    iget-object p1, p0, Lo/Os$5;->c:Lo/Os;

    invoke-static {p1}, Lo/Os;->a(Lo/Os;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 843
    iget-object p1, p0, Lo/Os$5;->a:Lo/Am;

    invoke-virtual {p1}, Lo/Am;->w()Lo/zG;

    move-result-object p1

    invoke-interface {p1, v1}, Lo/zG;->d(Z)V

    .line 844
    iget-object p1, p0, Lo/Os$5;->c:Lo/Os;

    invoke-static {p1, v0}, Lo/Os;->a(Lo/Os;Z)Z

    .line 847
    :cond_3
    iget-object p1, p0, Lo/Os$5;->c:Lo/Os;

    invoke-static {p1}, Lo/Os;->f(Lo/Os;)Lo/Os$Application;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 848
    iget-object p1, p0, Lo/Os$5;->c:Lo/Os;

    invoke-static {p1}, Lo/Os;->f(Lo/Os;)Lo/Os$Application;

    move-result-object p1

    const-string p2, "fetchNotificationsList.onNotificationsListFetched"

    invoke-virtual {p1, p2}, Lo/Os$Application;->d(Ljava/lang/String;)V

    .line 853
    :cond_4
    iget-object p1, p0, Lo/Os$5;->c:Lo/Os;

    invoke-virtual {p1}, Lo/Os;->F()I

    move-result p1

    const/16 p2, 0x14

    if-ne p1, p2, :cond_5

    .line 854
    new-instance p1, Lo/Ou;

    invoke-direct {p1, p0}, Lo/Ou;-><init>(Lo/Os$5;)V

    const-wide/16 v0, 0xbb8

    invoke-static {p1, v0, v1}, Lo/adX;->b(Ljava/lang/Runnable;J)Z

    :cond_5
    return-void

    .line 822
    :cond_6
    :goto_2
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p2

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "NotificationsFrag"

    aput-object v3, v2, v1

    aput-object p1, v2, v0

    const-string p1, "%s: NotificationsListSummary is returning %s"

    .line 823
    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 822
    invoke-interface {p2, p1}, Lo/SpinnerAdapter;->b(Ljava/lang/String;)V

    return-void
.end method
