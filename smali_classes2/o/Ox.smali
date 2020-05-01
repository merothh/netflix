.class Lo/Ox;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final a:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

.field private final b:Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/Ox;->b:Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;

    iput-object p2, p0, Lo/Ox;->a:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lo/Ox;->b:Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;

    iget-object v1, p0, Lo/Ox;->a:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0, v1, p1}, Lo/Os;->c(Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Landroid/view/View;)V

    return-void
.end method
