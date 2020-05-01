.class Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsCharacterDetailsFrag$GalleryAdapter;
.super Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsShowDetailsFrag$KubrickKidsAdapter;
.source "BarkerKidsCharacterDetailsFrag.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsCharacterDetailsFrag;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsCharacterDetailsFrag;)V
    .locals 2

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsCharacterDetailsFrag$GalleryAdapter;->this$0:Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsCharacterDetailsFrag;

    invoke-static {p1}, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsCharacterDetailsFrag;->access$900(Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsCharacterDetailsFrag;)Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsCharacterDetailsFrag$GalleryAdapter$1;

    invoke-direct {v1, p1}, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsCharacterDetailsFrag$GalleryAdapter$1;-><init>(Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsCharacterDetailsFrag;)V

    invoke-direct {p0, p1, v0, p1, v1}, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsShowDetailsFrag$KubrickKidsAdapter;-><init>(Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsShowDetailsFrag;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter$IViewCreator;)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsCharacterDetailsFrag$GalleryAdapter;->data:Ljava/util/List;

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsCharacterDetailsFrag$GalleryAdapter;->data:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsCharacterDetailsFrag$GalleryAdapter;->getHeaderViewsCount()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsCharacterDetailsFrag$GalleryAdapter;->hasFooter()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    add-int/2addr v0, v1

    goto :goto_0
.end method
