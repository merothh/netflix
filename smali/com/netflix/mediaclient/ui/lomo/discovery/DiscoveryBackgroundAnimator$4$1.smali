.class Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator$4$1;
.super Ljava/lang/Object;
.source "DiscoveryBackgroundAnimator.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator$4;

.field final synthetic val$delayedBlurredBmp:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator$4;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 216
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator$4$1;->this$1:Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator$4;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator$4$1;->val$delayedBlurredBmp:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 219
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator$4$1;->this$1:Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator$4;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator$4;->this$0:Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator;->access$600(Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator;)Landroid/util/SparseArray;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator$4$1;->this$1:Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator$4;

    iget v1, v1, Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator$4;->val$pageIndex:I

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator$4$1;->val$delayedBlurredBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 220
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator$4$1;->this$1:Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator$4;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator$4;->val$view:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator$4$1;->val$delayedBlurredBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 221
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator$4$1;->this$1:Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator$4;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator$4;->this$0:Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator$4$1;->this$1:Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator$4;

    iget-object v1, v1, Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator$4;->this$0:Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator;->access$100(Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator;->access$700(Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator;I)V

    .line 222
    const-string/jumbo v0, "DiscoveryBackgroundAnimator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Blurring was completed for blur image: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator$4$1;->val$delayedBlurredBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " to view: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator$4$1;->this$1:Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator$4;

    iget-object v2, v2, Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator$4;->val$view:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    return-void
.end method
