.class Lcom/netflix/mediaclient/ui/home/HomeActivity$5;
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
.field final synthetic a:Lcom/netflix/mediaclient/ui/home/HomeActivity;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/home/HomeActivity;)V
    .locals 0

    .line 260
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity$5;->a:Lcom/netflix/mediaclient/ui/home/HomeActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 263
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity$5;->a:Lcom/netflix/mediaclient/ui/home/HomeActivity;

    invoke-static {p1}, Lo/adk;->b(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_2

    .line 267
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.netflix.mediaclient.service.ACTION_EXPAND_HOME_CAST_PLAYER"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 272
    :cond_1
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity$5;->a:Lcom/netflix/mediaclient/ui/home/HomeActivity;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->notifyCastPlayerShown(Z)V

    return-void

    :cond_2
    :goto_0
    const-string p1, "HomeActivity"

    const-string v0, "Invalid intent: "

    .line 268
    invoke-static {p1, v0, p2}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    return-void
.end method
