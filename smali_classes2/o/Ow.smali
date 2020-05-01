.class Lo/Ow;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final a:Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;

.field private final b:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

.field private final c:Ljava/lang/String;

.field private final d:Lo/Os;

.field private final e:Lcom/netflix/cl/model/TrackingInfo;


# direct methods
.method public constructor <init>(Lo/Os;Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/String;Lcom/netflix/cl/model/TrackingInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/Ow;->d:Lo/Os;

    iput-object p2, p0, Lo/Ow;->a:Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;

    iput-object p3, p0, Lo/Ow;->b:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iput-object p4, p0, Lo/Ow;->c:Ljava/lang/String;

    iput-object p5, p0, Lo/Ow;->e:Lcom/netflix/cl/model/TrackingInfo;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    iget-object v0, p0, Lo/Ow;->d:Lo/Os;

    iget-object v1, p0, Lo/Ow;->a:Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;

    iget-object v2, p0, Lo/Ow;->b:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iget-object v3, p0, Lo/Ow;->c:Ljava/lang/String;

    iget-object v4, p0, Lo/Ow;->e:Lcom/netflix/cl/model/TrackingInfo;

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lo/Os;->e(Lo/Os;Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/String;Lcom/netflix/cl/model/TrackingInfo;Landroid/view/View;)V

    return-void
.end method
