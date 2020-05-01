.class Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag$8;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;)V
    .locals 0

    .line 296
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag$8;->c:Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 299
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag$8;->c:Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object p1

    .line 300
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag$8;->c:Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;

    invoke-static {v0, p2}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->d(Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 301
    new-instance v0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag$8$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag$8$1;-><init>(Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag$8;Landroid/content/Intent;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->runWhenManagerIsReady(Lcom/netflix/mediaclient/android/activity/NetflixActivity$Application;)V

    :cond_0
    return-void
.end method
