.class public Lcom/netflix/mediaclient/ui/kubrick/details/BarkerMovieDetailsFrag$BarkerSimilarItemsGridViewAdapter;
.super Lcom/netflix/mediaclient/ui/common/SimilarItemsGridViewAdapter;
.source "BarkerMovieDetailsFrag.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/kubrick/details/BarkerMovieDetailsFrag;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/kubrick/details/BarkerMovieDetailsFrag;ZI)V
    .locals 1

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerMovieDetailsFrag$BarkerSimilarItemsGridViewAdapter;->this$0:Lcom/netflix/mediaclient/ui/kubrick/details/BarkerMovieDetailsFrag;

    new-instance v0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerMovieDetailsFrag$BarkerSimilarItemsGridViewAdapter$1;

    invoke-direct {v0, p1}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerMovieDetailsFrag$BarkerSimilarItemsGridViewAdapter$1;-><init>(Lcom/netflix/mediaclient/ui/kubrick/details/BarkerMovieDetailsFrag;)V

    invoke-direct {p0, p2, p3, v0}, Lcom/netflix/mediaclient/ui/common/SimilarItemsGridViewAdapter;-><init>(ZILcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter$IViewCreator;)V

    return-void
.end method
