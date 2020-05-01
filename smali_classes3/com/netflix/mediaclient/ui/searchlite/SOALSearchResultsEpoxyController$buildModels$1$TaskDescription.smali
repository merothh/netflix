.class public final Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsEpoxyController$buildModels$1$TaskDescription;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/SingleObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsEpoxyController$buildModels$1;->e(Lo/Bs;Ljava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/SingleObserver<",
        "Lcom/netflix/android/imageloader/api/ShowImageRequest$Activity;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

.field final synthetic e:Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsEpoxyController$buildModels$1;


# direct methods
.method constructor <init>(ILcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsEpoxyController$buildModels$1;Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;II)V
    .locals 0

    iput p1, p0, Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsEpoxyController$buildModels$1$TaskDescription;->b:I

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsEpoxyController$buildModels$1$TaskDescription;->e:Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsEpoxyController$buildModels$1;

    iput-object p3, p0, Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsEpoxyController$buildModels$1$TaskDescription;->d:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    iput p4, p0, Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsEpoxyController$buildModels$1$TaskDescription;->a:I

    iput p5, p0, Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsEpoxyController$buildModels$1$TaskDescription;->c:I

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public e(Lcom/netflix/android/imageloader/api/ShowImageRequest$Activity;)V
    .locals 2

    const-string v0, "t"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsEpoxyController$buildModels$1$TaskDescription;->e:Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsEpoxyController$buildModels$1;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsEpoxyController$buildModels$1;->a:Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsEpoxyController;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsEpoxyController;->access$getOnSearchViewLoaded$p(Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsEpoxyController;)Lo/alN;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsEpoxyController$buildModels$1$TaskDescription;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1}, Lcom/netflix/android/imageloader/api/ShowImageRequest$Activity;->e()Lcom/netflix/android/imageloader/api/ImageDataSource;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lo/alN;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/akj;

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "e"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 1

    const-string v0, "d"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 129
    check-cast p1, Lcom/netflix/android/imageloader/api/ShowImageRequest$Activity;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsEpoxyController$buildModels$1$TaskDescription;->e(Lcom/netflix/android/imageloader/api/ShowImageRequest$Activity;)V

    return-void
.end method
