.class public final Lcom/netflix/mediaclient/ui/offline/OfflineTopFragmentV2_Ab11466$fetchPrefetchedDownloadables$1$1$onGenresFetched$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/offline/OfflineTopFragmentV2_Ab11466$fetchPrefetchedDownloadables$1$1;->onGenresFetched(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alA<",
        "Lcom/netflix/mediaclient/servicemgr/interface_/genre/Genre;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field public static final d:Lcom/netflix/mediaclient/ui/offline/OfflineTopFragmentV2_Ab11466$fetchPrefetchedDownloadables$1$1$onGenresFetched$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/netflix/mediaclient/ui/offline/OfflineTopFragmentV2_Ab11466$fetchPrefetchedDownloadables$1$1$onGenresFetched$1;

    invoke-direct {v0}, Lcom/netflix/mediaclient/ui/offline/OfflineTopFragmentV2_Ab11466$fetchPrefetchedDownloadables$1$1$onGenresFetched$1;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/ui/offline/OfflineTopFragmentV2_Ab11466$fetchPrefetchedDownloadables$1$1$onGenresFetched$1;->d:Lcom/netflix/mediaclient/ui/offline/OfflineTopFragmentV2_Ab11466$fetchPrefetchedDownloadables$1$1$onGenresFetched$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final e(Lcom/netflix/mediaclient/servicemgr/interface_/genre/Genre;)Z
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/genre/Genre;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    move-result-object p1

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->m:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 116
    check-cast p1, Lcom/netflix/mediaclient/servicemgr/interface_/genre/Genre;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/offline/OfflineTopFragmentV2_Ab11466$fetchPrefetchedDownloadables$1$1$onGenresFetched$1;->e(Lcom/netflix/mediaclient/servicemgr/interface_/genre/Genre;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
