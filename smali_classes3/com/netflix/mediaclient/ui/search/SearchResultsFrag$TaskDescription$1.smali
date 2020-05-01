.class Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$TaskDescription$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/SingleObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$TaskDescription;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
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
.field final synthetic c:I

.field final synthetic d:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$TaskDescription;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$TaskDescription;I)V
    .locals 0

    .line 1160
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$TaskDescription$1;->d:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$TaskDescription;

    iput p2, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$TaskDescription$1;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Lcom/netflix/android/imageloader/api/ShowImageRequest$Activity;)V
    .locals 2

    .line 1166
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$TaskDescription$1;->d:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$TaskDescription;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$TaskDescription;->c:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->o:Lo/ZB;

    iget v1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$TaskDescription$1;->c:I

    invoke-virtual {p1}, Lcom/netflix/android/imageloader/api/ShowImageRequest$Activity;->e()Lcom/netflix/android/imageloader/api/ImageDataSource;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lo/ZB;->e(ILcom/netflix/android/imageloader/api/ImageDataSource;)V

    .line 1168
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$TaskDescription$1;->d:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$TaskDescription;

    iget-object p1, p1, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$TaskDescription;->c:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    invoke-static {p1}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->c(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;)Lo/Bs;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$TaskDescription$1;->d:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$TaskDescription;

    iget-object p1, p1, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$TaskDescription;->c:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    invoke-static {p1}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->c(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;)Lo/Bs;

    move-result-object p1

    invoke-interface {p1}, Lo/Bs;->getNumResultsVideos()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1169
    :goto_0
    iget v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$TaskDescription$1;->c:I

    add-int/lit8 v0, v0, 0x1

    if-ne v0, p1, :cond_1

    const/4 v0, 0x3

    if-ge p1, v0, :cond_1

    .line 1171
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$TaskDescription$1;->d:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$TaskDescription;

    iget-object p1, p1, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$TaskDescription;->c:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    iget-object p1, p1, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->o:Lo/ZB;

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->a:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    invoke-virtual {p1, v0}, Lo/ZB;->b(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;)V

    :cond_1
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 0

    return-void
.end method

.method public synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1160
    check-cast p1, Lcom/netflix/android/imageloader/api/ShowImageRequest$Activity;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$TaskDescription$1;->d(Lcom/netflix/android/imageloader/api/ShowImageRequest$Activity;)V

    return-void
.end method
