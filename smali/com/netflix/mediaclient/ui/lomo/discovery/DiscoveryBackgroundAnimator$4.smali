.class Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator$4;
.super Ljava/lang/Object;
.source "DiscoveryBackgroundAnimator.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator;

.field final synthetic val$originalBmp:Landroid/graphics/Bitmap;

.field final synthetic val$pageIndex:I

.field final synthetic val$view:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator;Landroid/graphics/Bitmap;ILandroid/widget/ImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator$4;->this$0:Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator$4;->val$originalBmp:Landroid/graphics/Bitmap;

    iput p3, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator$4;->val$pageIndex:I

    iput-object p4, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator$4;->val$view:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator$4;->this$0:Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator;->access$000(Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator$4;->val$originalBmp:Landroid/graphics/Bitmap;

    const/16 v2, 0x19

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/util/Coppola2Utils;->getBlurredBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator$4;->this$0:Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator;->access$800(Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator$4$1;

    invoke-direct {v2, p0, v0}, Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator$4$1;-><init>(Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator$4;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
