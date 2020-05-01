.class final Lcom/netflix/mediaclient/ui/offline/DownloadedEpisodesController_Ab11466$StateListAnimator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/AEADBadTagException;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/offline/DownloadedEpisodesController_Ab11466;->buildModels(Lo/Sz;ZLjava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lo/BiConsumer<",
        "*>;V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/AEADBadTagException<",
        "Lo/SB;",
        "Lo/Sy$Activity;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic d:Lcom/netflix/mediaclient/ui/offline/DownloadedEpisodesController_Ab11466;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/offline/DownloadedEpisodesController_Ab11466;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/offline/DownloadedEpisodesController_Ab11466$StateListAnimator;->d:Lcom/netflix/mediaclient/ui/offline/DownloadedEpisodesController_Ab11466;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic c(Lo/BiConsumer;Ljava/lang/Object;I)V
    .locals 0

    .line 14
    check-cast p1, Lo/SB;

    check-cast p2, Lo/Sy$Activity;

    invoke-virtual {p0, p1, p2, p3}, Lcom/netflix/mediaclient/ui/offline/DownloadedEpisodesController_Ab11466$StateListAnimator;->c(Lo/SB;Lo/Sy$Activity;I)V

    return-void
.end method

.method public final c(Lo/SB;Lo/Sy$Activity;I)V
    .locals 0

    .line 67
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/offline/DownloadedEpisodesController_Ab11466$StateListAnimator;->d:Lcom/netflix/mediaclient/ui/offline/DownloadedEpisodesController_Ab11466;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/offline/DownloadedEpisodesController_Ab11466;->getEpisodesListener()Lcom/netflix/mediaclient/ui/offline/DownloadedEpisodesController_Ab11466$ActionBar;

    move-result-object p1

    invoke-interface {p1}, Lcom/netflix/mediaclient/ui/offline/DownloadedEpisodesController_Ab11466$ActionBar;->d()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 68
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/offline/DownloadedEpisodesController_Ab11466$StateListAnimator;->d:Lcom/netflix/mediaclient/ui/offline/DownloadedEpisodesController_Ab11466;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/offline/DownloadedEpisodesController_Ab11466;->getEpisodesListener()Lcom/netflix/mediaclient/ui/offline/DownloadedEpisodesController_Ab11466$ActionBar;

    move-result-object p1

    invoke-interface {p1}, Lcom/netflix/mediaclient/ui/offline/DownloadedEpisodesController_Ab11466$ActionBar;->b()V

    :cond_0
    return-void
.end method
