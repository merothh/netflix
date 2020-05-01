.class Lcom/netflix/mediaclient/ui/lomo/BillboardView$6;
.super Ljava/lang/Object;
.source "BillboardView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/lomo/BillboardView;

.field final synthetic val$hasWindowFocus:Z


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/lomo/BillboardView;Z)V
    .locals 0

    .prologue
    .line 868
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView$6;->this$0:Lcom/netflix/mediaclient/ui/lomo/BillboardView;

    iput-boolean p2, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView$6;->val$hasWindowFocus:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 871
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView$6;->this$0:Lcom/netflix/mediaclient/ui/lomo/BillboardView;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->access$400(Lcom/netflix/mediaclient/ui/lomo/BillboardView;)Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;

    move-result-object v0

    if-nez v0, :cond_1

    .line 872
    const-string/jumbo v0, "BillboardView"

    const-string/jumbo v1, "null mediaPlayerWrapper - bailing"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 896
    :cond_0
    :goto_0
    return-void

    .line 876
    :cond_1
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView$6;->val$hasWindowFocus:Z

    if-eqz v0, :cond_4

    .line 877
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView$6;->this$0:Lcom/netflix/mediaclient/ui/lomo/BillboardView;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->access$400(Lcom/netflix/mediaclient/ui/lomo/BillboardView;)Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->isDonePlaying()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 878
    const-string/jumbo v0, "BillboardView"

    const-string/jumbo v1, "Received focus but media playback complete - skipping resume"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 879
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView$6;->this$0:Lcom/netflix/mediaclient/ui/lomo/BillboardView;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->access$300(Lcom/netflix/mediaclient/ui/lomo/BillboardView;)V

    goto :goto_0

    .line 882
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView$6;->this$0:Lcom/netflix/mediaclient/ui/lomo/BillboardView;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->access$400(Lcom/netflix/mediaclient/ui/lomo/BillboardView;)Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->resumePlayback()Z

    move-result v0

    .line 883
    if-nez v0, :cond_3

    .line 884
    const-string/jumbo v0, "BillboardView"

    const-string/jumbo v1, "Playback not ready yet, but showing motion BB"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView$6;->this$0:Lcom/netflix/mediaclient/ui/lomo/BillboardView;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->access$500(Lcom/netflix/mediaclient/ui/lomo/BillboardView;)V

    .line 887
    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView$6;->this$0:Lcom/netflix/mediaclient/ui/lomo/BillboardView;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->access$700(Lcom/netflix/mediaclient/ui/lomo/BillboardView;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 888
    const-string/jumbo v0, "BillboardView"

    const-string/jumbo v1, "Playback ready, updating myList state"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView$6;->this$0:Lcom/netflix/mediaclient/ui/lomo/BillboardView;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->access$800(Lcom/netflix/mediaclient/ui/lomo/BillboardView;)V

    goto :goto_0

    .line 893
    :cond_4
    const-string/jumbo v0, "BillboardView"

    const-string/jumbo v1, "Losing window focus - pausing playback"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView$6;->this$0:Lcom/netflix/mediaclient/ui/lomo/BillboardView;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->access$400(Lcom/netflix/mediaclient/ui/lomo/BillboardView;)Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->pausePlayback()V

    goto :goto_0
.end method
