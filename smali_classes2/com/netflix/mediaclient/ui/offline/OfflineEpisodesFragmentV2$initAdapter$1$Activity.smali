.class public final Lcom/netflix/mediaclient/ui/offline/OfflineEpisodesFragmentV2$initAdapter$1$Activity;
.super Landroidx/recyclerview/widget/RecyclerView$StateListAnimator;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/offline/OfflineEpisodesFragmentV2$initAdapter$1;->a(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netflix/mediaclient/ui/offline/OfflineEpisodesFragmentV2$initAdapter$1;

.field final synthetic e:Lcom/netflix/mediaclient/android/activity/NetflixActivity;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/offline/OfflineEpisodesFragmentV2$initAdapter$1;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/offline/OfflineEpisodesFragmentV2$initAdapter$1$Activity;->a:Lcom/netflix/mediaclient/ui/offline/OfflineEpisodesFragmentV2$initAdapter$1;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/offline/OfflineEpisodesFragmentV2$initAdapter$1$Activity;->e:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    .line 111
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$StateListAnimator;-><init>()V

    return-void
.end method


# virtual methods
.method public d()V
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineEpisodesFragmentV2$initAdapter$1$Activity;->a:Lcom/netflix/mediaclient/ui/offline/OfflineEpisodesFragmentV2$initAdapter$1;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/offline/OfflineEpisodesFragmentV2$initAdapter$1;->c:Lo/Rc;

    invoke-virtual {v0}, Lo/Rc;->ad_()Z

    .line 114
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineEpisodesFragmentV2$initAdapter$1$Activity;->e:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->invalidateOptionsMenu()V

    .line 115
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineEpisodesFragmentV2$initAdapter$1$Activity;->a:Lcom/netflix/mediaclient/ui/offline/OfflineEpisodesFragmentV2$initAdapter$1;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/offline/OfflineEpisodesFragmentV2$initAdapter$1;->c:Lo/Rc;

    invoke-virtual {v0}, Lo/Rc;->I()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->invalidateItemDecorations()V

    :cond_0
    return-void
.end method
