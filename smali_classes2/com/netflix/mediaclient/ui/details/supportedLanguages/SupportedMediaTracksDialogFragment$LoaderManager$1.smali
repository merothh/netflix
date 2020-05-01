.class public final Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment$LoaderManager$1;
.super Lo/cq;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment$LoaderManager;->subscribe(Lio/reactivex/ObservableEmitter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/reactivex/ObservableEmitter;

.field final synthetic c:Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment$LoaderManager;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment$LoaderManager;Lio/reactivex/ObservableEmitter;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment$LoaderManager$1;->c:Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment$LoaderManager;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment$LoaderManager$1;->a:Lio/reactivex/ObservableEmitter;

    .line 98
    invoke-direct {p0}, Lo/cq;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Lo/agg;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    const-string v0, "res"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    invoke-super {p0, p1, p2}, Lo/cq;->d(Lo/agg;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 101
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->c()Z

    move-result p2

    if-nez p2, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 104
    :cond_0
    iget-object p2, p0, Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment$LoaderManager$1;->c:Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment$LoaderManager;

    iget-object p2, p2, Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment$LoaderManager;->d:Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment;

    invoke-static {p2, p1}, Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment;->e(Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment;Lo/agg;)V

    .line 105
    sget-object p2, Lo/DJ;->e:Lo/DJ;

    check-cast p1, Lo/Bc;

    invoke-virtual {p2, p1}, Lo/DJ;->a(Lo/Bc;)Lcom/netflix/model/leafs/SupportedMediaTracks;

    move-result-object p1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    :goto_1
    if-nez p1, :cond_2

    .line 108
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment$LoaderManager$1;->a:Lio/reactivex/ObservableEmitter;

    invoke-interface {p1}, Lio/reactivex/ObservableEmitter;->onComplete()V

    .line 109
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment$LoaderManager$1;->c:Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment$LoaderManager;

    iget-object p1, p1, Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment$LoaderManager;->d:Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment;->dismiss()V

    goto :goto_2

    .line 111
    :cond_2
    iget-object p2, p0, Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment$LoaderManager$1;->a:Lio/reactivex/ObservableEmitter;

    .line 112
    new-instance v0, Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedLanguagesMenuController;

    invoke-direct {v0, p1}, Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedLanguagesMenuController;-><init>(Lcom/netflix/model/leafs/SupportedMediaTracks;)V

    .line 111
    invoke-interface {p2, v0}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    .line 114
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment$LoaderManager$1;->a:Lio/reactivex/ObservableEmitter;

    invoke-interface {p1}, Lio/reactivex/ObservableEmitter;->onComplete()V

    :goto_2
    return-void
.end method
