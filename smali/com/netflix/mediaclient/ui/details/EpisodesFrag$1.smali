.class Lcom/netflix/mediaclient/ui/details/EpisodesFrag$1;
.super Ljava/lang/Object;
.source "EpisodesFrag.java"

# interfaces
.implements Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter$IViewCreator;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/details/EpisodesFrag;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/details/EpisodesFrag;)V
    .locals 0

    .prologue
    .line 191
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$1;->this$0:Lcom/netflix/mediaclient/ui/details/EpisodesFrag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createItemView()Landroid/view/View;
    .locals 4

    .prologue
    .line 195
    new-instance v0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$EpisodeView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$1;->this$0:Lcom/netflix/mediaclient/ui/details/EpisodesFrag;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$1;->this$0:Lcom/netflix/mediaclient/ui/details/EpisodesFrag;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f03005a

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$EpisodeView;-><init>(Lcom/netflix/mediaclient/ui/details/EpisodesFrag;Landroid/content/Context;I)V

    return-object v0
.end method
