.class Lcom/netflix/mediaclient/ui/details/EpisodesFrag$2;
.super Ljava/lang/Object;
.source "EpisodesFrag.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/details/EpisodesFrag;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/details/EpisodesFrag;)V
    .locals 0

    .prologue
    .line 330
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$2;->this$0:Lcom/netflix/mediaclient/ui/details/EpisodesFrag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$2;->this$0:Lcom/netflix/mediaclient/ui/details/EpisodesFrag;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->detailsViewGroup:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    invoke-static {v0, p0}, Lcom/netflix/mediaclient/util/ViewUtils;->removeGlobalLayoutListener(Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 334
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$2;->this$0:Lcom/netflix/mediaclient/ui/details/EpisodesFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->setupDetailsPageParallaxScrollListener()Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;

    .line 335
    return-void
.end method
