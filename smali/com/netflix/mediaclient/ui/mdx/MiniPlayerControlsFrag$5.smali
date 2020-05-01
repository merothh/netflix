.class Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$5;
.super Ljava/lang/Object;
.source "MiniPlayerControlsFrag.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;)V
    .locals 0

    .prologue
    .line 926
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$5;->this$0:Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 929
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$5;->this$0:Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->access$800(Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;)Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/AndroidUtils;->isActivityFinishedOrDestroyed(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$5;->this$0:Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->access$900(Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 930
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$5;->this$0:Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;

    const-string/jumbo v1, "skipping seekbar update"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->access$1000(Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;Ljava/lang/String;)V

    .line 947
    :goto_0
    return-void

    .line 934
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$5;->this$0:Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;

    invoke-static {v2}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->access$1100(Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 935
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$5;->this$0:Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;

    invoke-static {v2}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->access$1100(Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;)J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    cmp-long v2, v0, v4

    if-lez v2, :cond_2

    .line 936
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$5;->this$0:Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$5;->this$0:Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;

    invoke-static {v3}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->access$1200(Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;)J

    move-result-wide v4

    add-long/2addr v0, v4

    invoke-static {v2, v0, v1}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->access$1202(Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;J)J

    .line 937
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$5;->this$0:Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->access$1200(Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;)J

    move-result-wide v0

    long-to-int v0, v0

    div-int/lit16 v0, v0, 0x3e8

    .line 938
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$5;->this$0:Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateSeekBarRunnable, timelinePosInSeconds: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->access$1000(Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;Ljava/lang/String;)V

    .line 939
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$5;->this$0:Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->access$600(Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;)Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->setProgress(I)V

    .line 945
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$5;->this$0:Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->access$1102(Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;J)J

    .line 946
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$5;->this$0:Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->access$1400(Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$5;->this$0:Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->access$1300(Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
