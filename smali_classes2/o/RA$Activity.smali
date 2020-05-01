.class public final Lo/RA$Activity;
.super Lo/zP;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/RA;->S()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic d:Lo/RA;


# direct methods
.method constructor <init>(Ljava/lang/String;Lo/RA;)V
    .locals 0

    iput-object p2, p0, Lo/RA$Activity;->d:Lo/RA;

    .line 116
    invoke-direct {p0, p1}, Lo/zP;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public m(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/netflix/mediaclient/servicemgr/interface_/genre/Genre;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    const-string v0, "lomos"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "res"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    invoke-super {p0, p1, p2}, Lo/zP;->m(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 119
    iget-object p2, p0, Lo/RA$Activity;->d:Lo/RA;

    invoke-static {p2}, Lo/RA;->b(Lo/RA;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 120
    iget-object p2, p0, Lo/RA$Activity;->d:Lo/RA;

    invoke-static {p2}, Lo/RA;->b(Lo/RA;)Ljava/util/List;

    move-result-object p2

    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1}, Lo/akz;->n(Ljava/lang/Iterable;)Lo/anb;

    move-result-object p1

    .line 121
    sget-object v0, Lcom/netflix/mediaclient/ui/offline/OfflineTopFragmentV2_Ab11466$fetchPrefetchedDownloadables$1$1$onGenresFetched$1;->d:Lcom/netflix/mediaclient/ui/offline/OfflineTopFragmentV2_Ab11466$fetchPrefetchedDownloadables$1$1$onGenresFetched$1;

    check-cast v0, Lo/alA;

    invoke-static {p1, v0}, Lo/ane;->e(Lo/anb;Lo/alA;)Lo/anb;

    move-result-object p1

    const/4 v0, 0x2

    .line 122
    invoke-static {p1, v0}, Lo/ane;->b(Lo/anb;I)Lo/anb;

    move-result-object p1

    .line 123
    invoke-static {p1}, Lo/ane;->d(Lo/anb;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    .line 120
    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 124
    iget-object p1, p0, Lo/RA$Activity;->d:Lo/RA;

    invoke-virtual {p1}, Lo/RA;->c()Lcom/netflix/mediaclient/ui/offline/DownloadsListController;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p2, p0, Lo/RA$Activity;->d:Lo/RA;

    invoke-virtual {p2}, Lo/RA;->M()Lo/SK;

    move-result-object p2

    iget-object v0, p0, Lo/RA$Activity;->d:Lo/RA;

    invoke-virtual {v0}, Lo/RA;->E()Z

    move-result v0

    invoke-virtual {p1, p2, v0}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController;->setData(Ljava/lang/Object;Z)V

    :cond_0
    return-void
.end method
