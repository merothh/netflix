.class Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$3;
.super Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;
.source "MiniPlayerControlsFrag.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$3;->this$0:Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;

    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onVideosFetched(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/Video;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    const/4 v4, 0x0

    invoke-super {p0, p1, p2}, Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;->onVideosFetched(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v2, 0x258

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$3;->this$0:Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->access$500(Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$3;->this$0:Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->access$600(Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;)Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;

    move-result-object v1

    const/16 v2, 0x5a

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->rotateCaretTo(I)V

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$3;->this$0:Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->setSlidingEnabled(Z)V

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$3;->this$0:Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->getSlidingPanelDragView()Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$3$1;

    invoke-direct {v2, p0}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$3$1;-><init>(Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$3;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$3;->this$0:Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->access$500(Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$3;->this$0:Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->access$700(Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;)Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;->setItems(Ljava/util/Collection;)V

    return-void
.end method
