.class final Lcom/netflix/mediaclient/ui/offline/DownloadedEpisodesController$Activity;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/Stream;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/offline/DownloadedEpisodesController;-><init>(Ljava/lang/String;Lo/Rr$Activity;Lo/Rq;Lcom/netflix/mediaclient/ui/offline/CachingSelectableController$TaskDescription;Ljava/lang/String;)V
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
        "Lo/Stream<",
        "Lo/QD;",
        "Lo/QB$Activity;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic e:Lcom/netflix/mediaclient/ui/offline/DownloadedEpisodesController;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/offline/DownloadedEpisodesController;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/offline/DownloadedEpisodesController$Activity;->e:Lcom/netflix/mediaclient/ui/offline/DownloadedEpisodesController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lo/BiConsumer;Ljava/lang/Object;Landroid/view/View;I)Z
    .locals 0

    .line 21
    check-cast p1, Lo/QD;

    check-cast p2, Lo/QB$Activity;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/netflix/mediaclient/ui/offline/DownloadedEpisodesController$Activity;->a(Lo/QD;Lo/QB$Activity;Landroid/view/View;I)Z

    move-result p1

    return p1
.end method

.method public final a(Lo/QD;Lo/QB$Activity;Landroid/view/View;I)Z
    .locals 0

    .line 65
    iget-object p2, p0, Lcom/netflix/mediaclient/ui/offline/DownloadedEpisodesController$Activity;->e:Lcom/netflix/mediaclient/ui/offline/DownloadedEpisodesController;

    const-string p3, "model"

    invoke-static {p1, p3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    move-object p3, p1

    check-cast p3, Lo/RZ;

    invoke-virtual {p2, p3}, Lcom/netflix/mediaclient/ui/offline/DownloadedEpisodesController;->toggleSelectedState(Lo/RZ;)V

    .line 66
    invoke-virtual {p1}, Lo/QD;->I()Z

    move-result p1

    const/4 p2, 0x1

    if-nez p1, :cond_0

    .line 67
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/offline/DownloadedEpisodesController$Activity;->e:Lcom/netflix/mediaclient/ui/offline/DownloadedEpisodesController;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/offline/DownloadedEpisodesController;->getSelectionChangesListener()Lcom/netflix/mediaclient/ui/offline/CachingSelectableController$TaskDescription;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/netflix/mediaclient/ui/offline/CachingSelectableController$TaskDescription;->c(Z)V

    :cond_0
    return p2
.end method
