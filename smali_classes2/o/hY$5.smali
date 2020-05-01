.class Lo/hY$5;
.super Lo/cq;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/hY;->b(ZZZLcom/netflix/mediaclient/service/pushnotification/MessageData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/hY;

.field final synthetic b:Lcom/netflix/mediaclient/service/pushnotification/MessageData;

.field final synthetic c:Z

.field final synthetic e:Z


# direct methods
.method constructor <init>(Lo/hY;ZZLcom/netflix/mediaclient/service/pushnotification/MessageData;)V
    .locals 0

    .line 1156
    iput-object p1, p0, Lo/hY$5;->a:Lo/hY;

    iput-boolean p2, p0, Lo/hY$5;->c:Z

    iput-boolean p3, p0, Lo/hY$5;->e:Z

    iput-object p4, p0, Lo/hY$5;->b:Lcom/netflix/mediaclient/service/pushnotification/MessageData;

    invoke-direct {p0}, Lo/cq;-><init>()V

    return-void
.end method


# virtual methods
.method public e(Lcom/netflix/model/leafs/social/NotificationsListSummary;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    if-eqz p1, :cond_3

    .line 1160
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->e()Lcom/netflix/mediaclient/StatusCode;

    move-result-object p2

    sget-object v0, Lcom/netflix/mediaclient/StatusCode;->cS:Lcom/netflix/mediaclient/StatusCode;

    if-eq p2, v0, :cond_0

    goto :goto_0

    .line 1164
    :cond_0
    invoke-interface {p1}, Lcom/netflix/model/leafs/social/NotificationsListSummary;->notifications()Ljava/util/List;

    move-result-object p2

    if-nez p2, :cond_1

    return-void

    .line 1170
    :cond_1
    iget-object v0, p0, Lo/hY$5;->a:Lo/hY;

    invoke-static {v0, p2}, Lo/hY;->b(Lo/hY;Ljava/util/List;)Lcom/netflix/mediaclient/service/falkor/NotificationsListStatus;

    move-result-object v0

    .line 1171
    iget-object v1, p0, Lo/hY$5;->a:Lo/hY;

    invoke-static {v1, p2}, Lo/hY;->d(Lo/hY;Ljava/util/List;)Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;

    move-result-object v1

    .line 1172
    invoke-static {v0}, Lo/id;->b(Lcom/netflix/mediaclient/service/falkor/NotificationsListStatus;)V

    .line 1174
    iget-boolean v0, p0, Lo/hY$5;->c:Z

    if-eqz v0, :cond_2

    .line 1175
    iget-object v0, p0, Lo/hY$5;->a:Lo/hY;

    invoke-static {v0, p2}, Lo/hY;->a(Lo/hY;Ljava/util/List;)V

    .line 1179
    :cond_2
    iget-boolean p2, p0, Lo/hY$5;->e:Z

    if-eqz p2, :cond_3

    iget-object p2, p0, Lo/hY$5;->a:Lo/hY;

    invoke-static {p2, v1}, Lo/hY;->c(Lo/hY;Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 1180
    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;->getNotificationType()Lcom/netflix/mediaclient/servicemgr/interface_/NotificationTypes;

    move-result-object p2

    invoke-static {p2}, Lo/Ov;->a(Lcom/netflix/mediaclient/servicemgr/interface_/NotificationTypes;)Lo/OX;

    move-result-object p2

    .line 1181
    invoke-interface {p2}, Lo/OX;->e()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1182
    iget-object v0, p0, Lo/hY$5;->b:Lcom/netflix/mediaclient/service/pushnotification/MessageData;

    iget-object v2, p0, Lo/hY$5;->a:Lo/hY;

    invoke-virtual {v2}, Lo/hY;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-interface {p2, v1, p1, v0, v2}, Lo/OX;->e(Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;Lcom/netflix/model/leafs/social/NotificationsListSummary;Lcom/netflix/mediaclient/service/pushnotification/MessageData;Landroid/content/Context;)V

    :cond_3
    :goto_0
    return-void
.end method
