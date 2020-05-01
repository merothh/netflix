.class Lo/OT;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;

.field private final c:Lcom/netflix/model/leafs/social/NotificationsListSummary;

.field private final d:Lo/OW;

.field private final e:Lcom/netflix/mediaclient/service/pushnotification/MessageData;


# direct methods
.method public constructor <init>(Lo/OW;Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;Lcom/netflix/model/leafs/social/NotificationsListSummary;Lcom/netflix/mediaclient/service/pushnotification/MessageData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/OT;->d:Lo/OW;

    iput-object p2, p0, Lo/OT;->a:Landroid/content/Context;

    iput-object p3, p0, Lo/OT;->b:Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;

    iput-object p4, p0, Lo/OT;->c:Lcom/netflix/model/leafs/social/NotificationsListSummary;

    iput-object p5, p0, Lo/OT;->e:Lcom/netflix/mediaclient/service/pushnotification/MessageData;

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lo/OT;->d:Lo/OW;

    iget-object v1, p0, Lo/OT;->a:Landroid/content/Context;

    iget-object v2, p0, Lo/OT;->b:Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;

    iget-object v3, p0, Lo/OT;->c:Lcom/netflix/model/leafs/social/NotificationsListSummary;

    iget-object v4, p0, Lo/OT;->e:Lcom/netflix/mediaclient/service/pushnotification/MessageData;

    move-object v5, p1

    check-cast v5, Ljava/util/List;

    invoke-static/range {v0 .. v5}, Lo/OW;->c(Lo/OW;Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;Lcom/netflix/model/leafs/social/NotificationsListSummary;Lcom/netflix/mediaclient/service/pushnotification/MessageData;Ljava/util/List;)V

    return-void
.end method
