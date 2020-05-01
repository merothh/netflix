.class public final Lcom/netflix/mediaclient/ui/previews/lolomo/PreviewsListItemUIPresenter$prepareArtForRendering$2;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/YG;->a(Lo/YN;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alA<",
        "[",
        "Ljava/lang/Object;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lo/YN;

.field final synthetic d:Lo/YG;


# direct methods
.method public constructor <init>(Lo/YG;Lo/YN;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/previews/lolomo/PreviewsListItemUIPresenter$prepareArtForRendering$2;->d:Lo/YG;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/previews/lolomo/PreviewsListItemUIPresenter$prepareArtForRendering$2;->a:Lo/YN;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a([Ljava/lang/Object;)V
    .locals 4

    const-string v0, "results"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/previews/lolomo/PreviewsListItemUIPresenter$prepareArtForRendering$2;->d:Lo/YG;

    .line 39
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/previews/lolomo/PreviewsListItemUIPresenter$prepareArtForRendering$2;->a:Lo/YN;

    .line 40
    invoke-static {p1}, Lo/ako;->a([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "null cannot be cast to non-null type com.netflix.android.imageloader.api.GetImageRequest.Result"

    if-eqz v2, :cond_1

    check-cast v2, Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;

    .line 41
    invoke-static {p1}, Lo/ako;->b([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;

    .line 38
    invoke-static {v0, v1, v2, p1}, Lo/YG;->b(Lo/YG;Lo/YN;Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;)V

    return-void

    .line 41
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v3}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 40
    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v3}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 16
    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/previews/lolomo/PreviewsListItemUIPresenter$prepareArtForRendering$2;->a([Ljava/lang/Object;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
