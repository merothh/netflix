.class public final Lo/ConfirmationAlreadyPresentingException;
.super Lo/Session;
.source ""


# instance fields
.field private final d:Lo/ConfirmationCallback;


# direct methods
.method public constructor <init>(Lo/FontRequest;Lo/SearchIndexablesContract;Lo/ConfirmationCallback;Lo/ci;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/FontRequest<",
            "*>;",
            "Lo/SearchIndexablesContract;",
            "Lo/ConfirmationCallback;",
            "Lo/ci;",
            ")V"
        }
    .end annotation

    .line 29
    invoke-interface {p3}, Lo/ConfirmationCallback;->j()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2, p4}, Lo/Session;-><init>(Ljava/lang/String;Lo/FontRequest;Lo/SearchIndexablesContract;Lo/ci;)V

    .line 30
    iput-object p3, p0, Lo/ConfirmationAlreadyPresentingException;->d:Lo/ConfirmationCallback;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/util/Map;)V
    .locals 0

    .line 22
    invoke-super {p0, p1}, Lo/Session;->a(Ljava/util/Map;)V

    return-void
.end method

.method protected a()Z
    .locals 1

    .line 61
    iget-object v0, p0, Lo/ConfirmationAlreadyPresentingException;->d:Lo/ConfirmationCallback;

    invoke-interface {v0}, Lo/ConfirmationCallback;->b()Z

    move-result v0

    return v0
.end method

.method protected a(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/TextInputTimePickerView;",
            ">;)Z"
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lo/ConfirmationAlreadyPresentingException;->d:Lo/ConfirmationCallback;

    invoke-interface {v0, p1}, Lo/ConfirmationCallback;->e(Ljava/util/List;)Z

    move-result p1

    return p1
.end method

.method protected b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/adt$Activity;",
            ">;"
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lo/ConfirmationAlreadyPresentingException;->d:Lo/ConfirmationCallback;

    invoke-interface {v0}, Lo/ConfirmationCallback;->i()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected b(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/TextInputTimePickerView;",
            ">;)V"
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lo/ConfirmationAlreadyPresentingException;->d:Lo/ConfirmationCallback;

    invoke-interface {v0, p1}, Lo/ConfirmationCallback;->a(Ljava/util/List;)V

    return-void
.end method

.method protected b(Lo/ci;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    .line 46
    iget-object v0, p0, Lo/ConfirmationAlreadyPresentingException;->d:Lo/ConfirmationCallback;

    invoke-interface {v0, p1, p2}, Lo/ConfirmationCallback;->e(Lo/ci;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method protected c()Lcom/android/volley/Request$Priority;
    .locals 1

    .line 98
    iget-object v0, p0, Lo/ConfirmationAlreadyPresentingException;->d:Lo/ConfirmationCallback;

    invoke-interface {v0}, Lo/ConfirmationCallback;->g()Lcom/android/volley/Request$Priority;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic c(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)V
    .locals 0

    .line 22
    invoke-super {p0, p1}, Lo/Session;->c(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)V

    return-void
.end method

.method public bridge synthetic d()Ljava/lang/String;
    .locals 1

    .line 22
    invoke-super {p0}, Lo/Session;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected d(Lo/RecommendationInfo;)V
    .locals 1

    .line 86
    iget-object v0, p0, Lo/ConfirmationAlreadyPresentingException;->d:Lo/ConfirmationCallback;

    invoke-interface {v0, p1}, Lo/ConfirmationCallback;->e(Lo/RecommendationInfo;)V

    return-void
.end method

.method protected d(Lo/ci;Lo/TextClock;)V
    .locals 1

    .line 41
    iget-object v0, p0, Lo/ConfirmationAlreadyPresentingException;->d:Lo/ConfirmationCallback;

    invoke-interface {v0, p0, p1, p2}, Lo/ConfirmationCallback;->a(Lo/ConfirmationAlreadyPresentingException;Lo/ci;Lo/TextClock;)V

    return-void
.end method

.method protected k()Z
    .locals 1

    .line 76
    iget-object v0, p0, Lo/ConfirmationAlreadyPresentingException;->d:Lo/ConfirmationCallback;

    invoke-interface {v0}, Lo/ConfirmationCallback;->d()Z

    move-result v0

    return v0
.end method

.method protected l()Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Lo/ConfirmationAlreadyPresentingException;->d:Lo/ConfirmationCallback;

    invoke-interface {v0}, Lo/ConfirmationCallback;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected m()Z
    .locals 1

    .line 71
    iget-object v0, p0, Lo/ConfirmationAlreadyPresentingException;->d:Lo/ConfirmationCallback;

    invoke-interface {v0}, Lo/ConfirmationCallback;->a()Z

    move-result v0

    return v0
.end method

.method protected o()Z
    .locals 1

    .line 66
    iget-object v0, p0, Lo/ConfirmationAlreadyPresentingException;->d:Lo/ConfirmationCallback;

    invoke-interface {v0}, Lo/ConfirmationCallback;->e()Z

    move-result v0

    return v0
.end method

.method protected t()Z
    .locals 1

    .line 81
    iget-object v0, p0, Lo/ConfirmationAlreadyPresentingException;->d:Lo/ConfirmationCallback;

    invoke-interface {v0}, Lo/ConfirmationCallback;->c()Z

    move-result v0

    return v0
.end method
