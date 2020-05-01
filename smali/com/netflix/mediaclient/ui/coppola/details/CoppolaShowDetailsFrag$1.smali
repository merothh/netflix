.class Lcom/netflix/mediaclient/ui/coppola/details/CoppolaShowDetailsFrag$1;
.super Ljava/lang/Object;
.source "CoppolaShowDetailsFrag.java"

# interfaces
.implements Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter$IViewCreator;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/coppola/details/CoppolaShowDetailsFrag;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/coppola/details/CoppolaShowDetailsFrag;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaShowDetailsFrag$1;->this$0:Lcom/netflix/mediaclient/ui/coppola/details/CoppolaShowDetailsFrag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createItemView()Landroid/view/View;
    .locals 3

    new-instance v0, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaShowDetailsFrag$CoppolaPlayerDialogEpisodesView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaShowDetailsFrag$1;->this$0:Lcom/netflix/mediaclient/ui/coppola/details/CoppolaShowDetailsFrag;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaShowDetailsFrag$1;->this$0:Lcom/netflix/mediaclient/ui/coppola/details/CoppolaShowDetailsFrag;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaShowDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaShowDetailsFrag$CoppolaPlayerDialogEpisodesView;-><init>(Lcom/netflix/mediaclient/ui/coppola/details/CoppolaShowDetailsFrag;Landroid/content/Context;)V

    return-object v0
.end method
