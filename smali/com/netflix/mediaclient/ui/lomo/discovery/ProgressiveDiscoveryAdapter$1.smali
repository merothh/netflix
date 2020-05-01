.class Lcom/netflix/mediaclient/ui/lomo/discovery/ProgressiveDiscoveryAdapter$1;
.super Landroid/content/BroadcastReceiver;
.source "ProgressiveDiscoveryAdapter.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/lomo/discovery/ProgressiveDiscoveryAdapter;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/lomo/discovery/ProgressiveDiscoveryAdapter;)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/ProgressiveDiscoveryAdapter$1;->this$0:Lcom/netflix/mediaclient/ui/lomo/discovery/ProgressiveDiscoveryAdapter;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 30
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/ProgressiveDiscoveryAdapter$1;->this$0:Lcom/netflix/mediaclient/ui/lomo/discovery/ProgressiveDiscoveryAdapter;

    const/4 v1, 0x0

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/ui/lomo/discovery/ProgressiveDiscoveryAdapter;->fetchMoreData(II)V

    .line 31
    return-void
.end method
