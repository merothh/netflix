.class final Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment$Activity;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment;->d(Lio/reactivex/Observable;Lio/reactivex/subjects/PublishSubject;Z)Lio/reactivex/disposables/Disposable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Lo/EW;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lio/reactivex/subjects/PublishSubject;

.field final synthetic c:Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment;

.field final synthetic d:Z


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment;Lio/reactivex/subjects/PublishSubject;Z)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment$Activity;->c:Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment$Activity;->b:Lio/reactivex/subjects/PublishSubject;

    iput-boolean p3, p0, Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment$Activity;->d:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 49
    check-cast p1, Lo/EW;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment$Activity;->d(Lo/EW;)V

    return-void
.end method

.method public final d(Lo/EW;)V
    .locals 1

    .line 376
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment$Activity;->b:Lio/reactivex/subjects/PublishSubject;

    invoke-virtual {v0, p1}, Lio/reactivex/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    .line 377
    iget-boolean p1, p0, Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment$Activity;->d:Z

    if-eqz p1, :cond_0

    .line 378
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment$Activity;->c:Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment;->dismiss()V

    :cond_0
    return-void
.end method
