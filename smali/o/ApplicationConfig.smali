.class public Lo/ApplicationConfig;
.super Lo/VoicemailContract;
.source ""


# instance fields
.field private final d:I

.field private final e:Z


# direct methods
.method public constructor <init>(Lo/FontRequest;IZLo/ci;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/FontRequest<",
            "*>;IZ",
            "Lo/ci;",
            ")V"
        }
    .end annotation

    const-string v0, "FetchNonMemberVideos"

    .line 30
    invoke-direct {p0, v0, p1, p4}, Lo/VoicemailContract;-><init>(Ljava/lang/String;Lo/FontRequest;Lo/ci;)V

    .line 31
    iput p2, p0, Lo/ApplicationConfig;->d:I

    .line 32
    iput-boolean p3, p0, Lo/ApplicationConfig;->e:Z

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
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/TextInputTimePickerView;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "nonMemberVideos"

    aput-object v2, v0, v1

    .line 47
    iget v2, p0, Lo/ApplicationConfig;->d:I

    invoke-static {v2}, Lo/SearchIndexableResource;->d(I)Ljava/util/Map;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v0, v3

    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/Object;

    const-string v5, "summary"

    aput-object v5, v4, v1

    const-string v1, "detail"

    aput-object v1, v4, v3

    invoke-static {v4}, Lo/SearchIndexableResource;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-static {v0}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected b(Lo/ci;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 63
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0, p2}, Lo/ci;->h(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    :cond_0
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

    .line 52
    iget-boolean v0, p0, Lo/ApplicationConfig;->e:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 53
    iget-object v0, p0, Lo/ApplicationConfig;->a:Lo/FontRequest;

    iget-object p2, p2, Lo/TextClock;->d:Ljava/util/Collection;

    invoke-virtual {v0, p2}, Lo/FontRequest;->c(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p2

    .line 54
    sget-object v0, Lo/LegacyErrorStrings;->b:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-interface {p1, p2, v0}, Lo/ci;->h(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0

    .line 56
    :cond_0
    invoke-virtual {p0}, Lo/ApplicationConfig;->s()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lo/ia;->a(Landroid/content/Context;)V

    :goto_0
    return-void
.end method

.method protected g()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected m()Z
    .locals 1

    .line 69
    iget-boolean v0, p0, Lo/ApplicationConfig;->e:Z

    return v0
.end method

.method protected o()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
