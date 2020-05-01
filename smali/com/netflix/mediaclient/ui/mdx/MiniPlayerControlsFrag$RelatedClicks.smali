.class Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$RelatedClicks;
.super Lcom/netflix/mediaclient/android/widget/VideoDetailsClickListener;
.source "MiniPlayerControlsFrag.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/ui/common/PlayContextProvider;)V
    .locals 0

    .prologue
    .line 318
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$RelatedClicks;->this$0:Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;

    .line 319
    invoke-direct {p0, p2, p3}, Lcom/netflix/mediaclient/android/widget/VideoDetailsClickListener;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/ui/common/PlayContextProvider;)V

    .line 320
    return-void
.end method


# virtual methods
.method protected launchDetailsActivity(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/interface_/Video;Lcom/netflix/mediaclient/ui/common/PlayContext;)V
    .locals 3

    .prologue
    .line 323
    invoke-interface {p2}, Lcom/netflix/mediaclient/servicemgr/interface_/Video;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v0

    invoke-interface {p2}, Lcom/netflix/mediaclient/servicemgr/interface_/Video;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2}, Lcom/netflix/mediaclient/servicemgr/interface_/Video;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v0, v1, v2, p3}, Lcom/netflix/mediaclient/ui/details/DetailsActivityLauncher;->showMemento(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/ui/common/PlayContext;)V

    .line 324
    return-void
.end method
