.class Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator$1;
.super Ljava/lang/Object;
.source "DiscoveryBackgroundAnimator.java"

# interfaces
.implements Lcom/netflix/mediaclient/android/widget/ErrorWrapper$Callback;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator$1;->this$0:Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRetryRequested()V
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator$1;->this$0:Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator;->access$000(Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator;)Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcom/netflix/mediaclient/android/widget/ErrorWrapper$Callback;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator$1;->this$0:Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator;->access$000(Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/widget/ErrorWrapper$Callback;

    invoke-interface {v0}, Lcom/netflix/mediaclient/android/widget/ErrorWrapper$Callback;->onRetryRequested()V

    .line 117
    :goto_0
    return-void

    .line 113
    :cond_0
    const-string/jumbo v0, "SPY-8068 - DiscoveryBackgroundAnimator - conxect has not a valid type"

    .line 114
    const-string/jumbo v1, "DiscoveryBackgroundAnimator"

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    invoke-static {v0}, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;->logHandledException(Ljava/lang/String;)V

    goto :goto_0
.end method
