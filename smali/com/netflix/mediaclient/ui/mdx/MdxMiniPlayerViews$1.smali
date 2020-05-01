.class Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews$1;
.super Ljava/lang/Object;
.source "MdxMiniPlayerViews.java"

# interfaces
.implements Lcom/netflix/mediaclient/android/widget/SnappableSeekBar$OnSnappableSeekBarChangeListener;


# instance fields
.field private lastProgressChangeTime:J

.field final synthetic this$0:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;)V
    .locals 0

    .prologue
    .line 791
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews$1;->this$0:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 4

    .prologue
    .line 842
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews$1;->this$0:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->access$000(Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;)Lcom/netflix/mediaclient/ui/mdx/IMdxMiniPlayerViewCallbacks;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/netflix/mediaclient/ui/mdx/IMdxMiniPlayerViewCallbacks;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    .line 844
    if-nez p3, :cond_1

    .line 861
    :cond_0
    :goto_0
    return-void

    .line 848
    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews$1;->lastProgressChangeTime:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/TimeUtils;->convertNsToMs(J)J

    move-result-wide v0

    .line 849
    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 853
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews$1;->lastProgressChangeTime:J

    .line 856
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews$1;->this$0:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->access$300(Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews$1;->this$0:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->access$000(Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;)Lcom/netflix/mediaclient/ui/mdx/IMdxMiniPlayerViewCallbacks;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/mdx/IMdxMiniPlayerViewCallbacks;->getManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManagerUtils;->isMdxAgentAvailable(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 857
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews$1;->this$0:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->access$000(Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;)Lcom/netflix/mediaclient/ui/mdx/IMdxMiniPlayerViewCallbacks;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/mdx/IMdxMiniPlayerViewCallbacks;->getMdx()Lcom/netflix/mediaclient/servicemgr/IMdx;

    move-result-object v0

    mul-int/lit16 v1, p2, 0x3e8

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/servicemgr/IMdx;->getBifFrame(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews$1;->this$0:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->access$300(Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/media/BifManager$Utils;->showBifInView(Ljava/nio/ByteBuffer;Landroid/widget/ImageView;)V

    .line 860
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews$1;->this$0:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;

    invoke-static {v0, p2}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->access$500(Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;I)V

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 797
    const-string/jumbo v0, "MdxMiniPlayerViews"

    const-string/jumbo v1, "onStartTrackingTouch"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews$1;->this$0:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->access$000(Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;)Lcom/netflix/mediaclient/ui/mdx/IMdxMiniPlayerViewCallbacks;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/ui/mdx/IMdxMiniPlayerViewCallbacks;->onStartTrackingTouch(Landroid/widget/SeekBar;)V

    .line 800
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews$1;->this$0:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->access$100(Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 801
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews$1;->this$0:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->access$100(Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 804
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews$1;->this$0:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->access$200(Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;)Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 805
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews$1;->this$0:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;

    new-array v1, v3, [Landroid/view/View;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews$1;->this$0:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;

    invoke-static {v2}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->access$200(Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;)Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->fadeOutAndHide([Landroid/view/View;)V

    .line 808
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews$1;->this$0:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->access$300(Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 809
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews$1;->this$0:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;

    new-array v1, v3, [Landroid/view/View;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews$1;->this$0:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;

    invoke-static {v2}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->access$300(Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;)Landroid/widget/ImageView;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->fadeInAndShow([Landroid/view/View;)V

    .line 812
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews$1;->this$0:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->access$400(Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 813
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews$1;->this$0:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;

    new-array v1, v3, [Landroid/view/View;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews$1;->this$0:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;

    invoke-static {v2}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->access$400(Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;)Landroid/widget/TextView;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->fadeInAndShow([Landroid/view/View;)V

    .line 815
    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews$1;->this$0:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;

    invoke-virtual {v0, v3}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->updateViewsForSeekBarUsage(Z)V

    .line 816
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;Z)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 820
    const-string/jumbo v0, "MdxMiniPlayerViews"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onStopTrackingTouch, isInSnapRegion: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews$1;->this$0:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->access$000(Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;)Lcom/netflix/mediaclient/ui/mdx/IMdxMiniPlayerViewCallbacks;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/netflix/mediaclient/ui/mdx/IMdxMiniPlayerViewCallbacks;->onStopTrackingTouch(Landroid/widget/SeekBar;Z)V

    .line 823
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews$1;->lastProgressChangeTime:J

    .line 824
    if-eqz p2, :cond_1

    .line 825
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews$1;->this$0:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->access$500(Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;I)V

    .line 832
    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews$1;->this$0:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->showArtworkAndHideBif()V

    .line 833
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews$1;->this$0:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;

    invoke-virtual {v0, v3}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->updateViewsForSeekBarUsage(Z)V

    .line 835
    if-nez p2, :cond_0

    .line 836
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews$1;->this$0:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;

    invoke-virtual {v0, v3}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->setControlsEnabled(Z)V

    .line 838
    :cond_0
    return-void

    .line 829
    :cond_1
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews$1;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    goto :goto_0
.end method
