.class Lcom/netflix/mediaclient/ui/launch/LaunchActivity$5;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/ui/launch/LaunchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/netflix/mediaclient/ui/launch/LaunchActivity;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/launch/LaunchActivity;)V
    .locals 0

    .line 1031
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity$5;->d:Lcom/netflix/mediaclient/ui/launch/LaunchActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1039
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.netflix.mediaclient.intent.action.HANDLER_RESULT"

    .line 1040
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "LaunchActivity"

    const-string p2, "Delayed nflx action completed, finish activity"

    .line 1041
    invoke-static {p1, p2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1043
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity$5;->d:Lcom/netflix/mediaclient/ui/launch/LaunchActivity;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->e(Lcom/netflix/mediaclient/ui/launch/LaunchActivity;Z)Z

    .line 1044
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity$5;->d:Lcom/netflix/mediaclient/ui/launch/LaunchActivity;

    invoke-static {p1}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->b(Lcom/netflix/mediaclient/ui/launch/LaunchActivity;)V

    :cond_0
    return-void
.end method
