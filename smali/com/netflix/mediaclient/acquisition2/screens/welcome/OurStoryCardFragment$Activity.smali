.class final Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryCardFragment$Activity;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/SingleObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryCardFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Activity"
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
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lo/ScaleAnimation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/ScaleAnimation;)V
    .locals 1

    const-string v0, "nmhpEventListener"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 212
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryCardFragment$Activity;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public d(Lcom/netflix/android/imageloader/api/ShowImageRequest$Activity;)V
    .locals 1

    const-string v0, "t"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 215
    iget-object p1, p0, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryCardFragment$Activity;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/ScaleAnimation;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lo/ScaleAnimation;->onNmhpRenderSuccess()V

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "e"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 221
    iget-object p1, p0, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryCardFragment$Activity;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/ScaleAnimation;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lo/ScaleAnimation;->onNmhpRenderFail()V

    :cond_0
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

    .line 209
    check-cast p1, Lcom/netflix/android/imageloader/api/ShowImageRequest$Activity;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryCardFragment$Activity;->d(Lcom/netflix/android/imageloader/api/ShowImageRequest$Activity;)V

    return-void
.end method
