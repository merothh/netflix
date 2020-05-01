.class Lcom/netflix/mediaclient/ui/lomo/BillboardView$4;
.super Lcom/netflix/mediaclient/servicemgr/SimpleManagerCallback;
.source "BillboardView.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/lomo/BillboardView;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/lomo/BillboardView;)V
    .locals 0

    .prologue
    .line 802
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView$4;->this$0:Lcom/netflix/mediaclient/ui/lomo/BillboardView;

    invoke-direct {p0}, Lcom/netflix/mediaclient/servicemgr/SimpleManagerCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onResourceCached(Ljava/lang/String;Ljava/lang/String;JJLcom/netflix/mediaclient/android/app/Status;)V
    .locals 7

    .prologue
    .line 805
    invoke-super/range {p0 .. p7}, Lcom/netflix/mediaclient/servicemgr/SimpleManagerCallback;->onResourceCached(Ljava/lang/String;Ljava/lang/String;JJLcom/netflix/mediaclient/android/app/Status;)V

    .line 806
    invoke-interface {p7}, Lcom/netflix/mediaclient/android/app/Status;->isError()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 807
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 808
    const-string/jumbo v0, "BillboardView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Failed to retrieve video: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    :cond_0
    :goto_0
    return-void

    .line 811
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView$4;->this$0:Lcom/netflix/mediaclient/ui/lomo/BillboardView;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->access$400(Lcom/netflix/mediaclient/ui/lomo/BillboardView;)Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 812
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 813
    const-string/jumbo v0, "BillboardView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Downloaded video - localUrl: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView$4;->this$0:Lcom/netflix/mediaclient/ui/lomo/BillboardView;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->access$400(Lcom/netflix/mediaclient/ui/lomo/BillboardView;)Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;

    move-result-object v0

    move-object v1, p2

    move-wide v2, p3

    move-wide v4, p5

    invoke-virtual/range {v0 .. v5}, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->setDataSource(Ljava/lang/String;JJ)V

    .line 816
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView$4;->this$0:Lcom/netflix/mediaclient/ui/lomo/BillboardView;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->access$500(Lcom/netflix/mediaclient/ui/lomo/BillboardView;)V

    goto :goto_0
.end method
