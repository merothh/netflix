.class Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator$2;
.super Ljava/lang/Object;
.source "DiscoveryBackgroundAnimator.java"

# interfaces
.implements Lcom/netflix/mediaclient/util/gfx/ImageLoader$ImageLoaderListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator$2;->this$0:Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onResponse(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 3

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator$2;->this$0:Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator$2;->this$0:Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator;->access$100(Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator;)I

    move-result v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator$2;->this$0:Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator;

    invoke-static {v2}, Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator;->access$200(Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-static {v0, v1, p1, v2}, Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator;->access$300(Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator;ILandroid/graphics/Bitmap;Landroid/widget/ImageView;)V

    goto :goto_0
.end method
