.class public Lo/ConfirmationNotAvailableException;
.super Lo/VoicemailContract;
.source ""


# instance fields
.field private e:Lo/TextInputTimePickerView;


# direct methods
.method public constructor <init>(Lo/FontRequest;Ljava/lang/String;Lo/ci;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/FontRequest<",
            "*>;",
            "Ljava/lang/String;",
            "Lo/ci;",
            ")V"
        }
    .end annotation

    const-string v0, "FetchAdvisories"

    .line 29
    invoke-direct {p0, v0, p1, p3}, Lo/VoicemailContract;-><init>(Ljava/lang/String;Lo/FontRequest;Lo/ci;)V

    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "videos"

    aput-object v0, p1, p3

    const/4 p3, 0x1

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string p3, "advisories"

    aput-object p3, p1, p2

    .line 30
    invoke-static {p1}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object p1

    iput-object p1, p0, Lo/ConfirmationNotAvailableException;->e:Lo/TextInputTimePickerView;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/util/Map;)V
    .locals 0

    .line 22
    invoke-super {p0, p1}, Lo/VoicemailContract;->a(Ljava/util/Map;)V

    return-void
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
    iget-object v0, p0, Lo/ConfirmationNotAvailableException;->e:Lo/TextInputTimePickerView;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected b(Lo/ci;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    const/4 v0, 0x0

    .line 50
    invoke-interface {p1, v0, p2}, Lo/ci;->o(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method public bridge synthetic c(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)V
    .locals 0

    .line 22
    invoke-super {p0, p1}, Lo/VoicemailContract;->c(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)V

    return-void
.end method

.method public bridge synthetic d()Ljava/lang/String;
    .locals 1

    .line 22
    invoke-super {p0}, Lo/VoicemailContract;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected d(Lo/ci;Lo/TextClock;)V
    .locals 1

    .line 40
    iget-object p2, p0, Lo/ConfirmationNotAvailableException;->a:Lo/FontRequest;

    iget-object v0, p0, Lo/ConfirmationNotAvailableException;->e:Lo/TextInputTimePickerView;

    invoke-virtual {p2, v0}, Lo/FontRequest;->c(Lo/TextInputTimePickerView;)Lo/agj;

    move-result-object p2

    check-cast p2, Lo/agp;

    if-eqz p2, :cond_1

    .line 41
    invoke-virtual {p2}, Lo/agp;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 44
    :cond_0
    invoke-virtual {p2}, Lo/agp;->bj()Ljava/util/List;

    move-result-object p2

    sget-object v0, Lo/LegacyErrorStrings;->b:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-interface {p1, p2, v0}, Lo/ci;->o(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p2, 0x0

    .line 42
    sget-object v0, Lo/LegacyErrorStrings;->aa:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-interface {p1, p2, v0}, Lo/ci;->o(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    :goto_1
    return-void
.end method
