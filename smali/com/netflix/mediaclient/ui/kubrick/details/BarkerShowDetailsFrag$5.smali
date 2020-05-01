.class Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag$5;
.super Ljava/lang/Object;
.source "BarkerShowDetailsFrag.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag$5;->this$0:Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag$5;->this$0:Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->access$500(Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->scrollToPosition(I)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag$5;->this$0:Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->parallaxScroller:Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag$5;->this$0:Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->parallaxScroller:Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;->setToolbarColor(I)V

    :cond_0
    return-void
.end method
