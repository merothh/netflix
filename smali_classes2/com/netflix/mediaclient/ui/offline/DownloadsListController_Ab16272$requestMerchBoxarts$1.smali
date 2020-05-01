.class final Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272$requestMerchBoxarts$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272;->requestMerchBoxarts()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alA<",
        "Lo/Sh$TaskDescription;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic c:Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272$requestMerchBoxarts$1;->c:Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lo/Sh$TaskDescription;)V
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272$requestMerchBoxarts$1;->c:Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272;

    invoke-virtual {p1}, Lo/Sh$TaskDescription;->e()Ljava/util/List;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272;->access$setOptInBoxArtList$p(Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272;Ljava/util/List;)V

    .line 152
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272$requestMerchBoxarts$1;->c:Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272;->requestModelBuild()V

    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 39
    check-cast p1, Lo/Sh$TaskDescription;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272$requestMerchBoxarts$1;->a(Lo/Sh$TaskDescription;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
