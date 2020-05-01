.class Lcom/netflix/mediaclient/ui/home/HomeActivity$6;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/ui/home/HomeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/netflix/mediaclient/ui/home/HomeActivity;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/home/HomeActivity;)V
    .locals 0

    .line 868
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity$6;->b:Lcom/netflix/mediaclient/ui/home/HomeActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const-string p1, "HomeActivity"

    if-nez p2, :cond_0

    const-string p2, "Received null intent"

    .line 872
    invoke-static {p1, p2}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 876
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const-string v4, "RefreshHomeReceiver invoked and received Intent with Action %s"

    .line 877
    invoke-static {p1, v4, v2}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    const-string p1, "com.netflix.mediaclient.intent.action.REFRESH_HOME_LOLOMO"

    .line 878
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "renoMessageId"

    .line 879
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 880
    iget-object p2, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity$6;->b:Lcom/netflix/mediaclient/ui/home/HomeActivity;

    invoke-virtual {p2, v1, v3, p1}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->b(IILjava/lang/String;)V

    :cond_1
    return-void
.end method
