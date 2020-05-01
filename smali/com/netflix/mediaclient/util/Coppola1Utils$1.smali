.class final Lcom/netflix/mediaclient/util/Coppola1Utils$1;
.super Ljava/lang/Object;
.source "Coppola1Utils.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$manager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

.field final synthetic val$playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

.field final synthetic val$res:Lcom/netflix/mediaclient/android/app/Status;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/netflix/mediaclient/ui/player/PlayerFragment;Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/netflix/mediaclient/util/Coppola1Utils$1;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/netflix/mediaclient/util/Coppola1Utils$1;->val$playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    iput-object p3, p0, Lcom/netflix/mediaclient/util/Coppola1Utils$1;->val$manager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    iput-object p4, p0, Lcom/netflix/mediaclient/util/Coppola1Utils$1;->val$res:Lcom/netflix/mediaclient/android/app/Status;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 90
    iget-object v0, p0, Lcom/netflix/mediaclient/util/Coppola1Utils$1;->val$activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/AndroidUtils;->isActivityFinishedOrDestroyed(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/util/Coppola1Utils$1;->val$playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/util/Coppola1Utils$1;->val$playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/netflix/mediaclient/util/Coppola1Utils$1;->val$playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 92
    iget-object v0, p0, Lcom/netflix/mediaclient/util/Coppola1Utils$1;->val$playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    iget-object v1, p0, Lcom/netflix/mediaclient/util/Coppola1Utils$1;->val$manager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    iget-object v2, p0, Lcom/netflix/mediaclient/util/Coppola1Utils$1;->val$res:Lcom/netflix/mediaclient/android/app/Status;

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->onManagerReady(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 94
    :cond_0
    return-void
.end method
