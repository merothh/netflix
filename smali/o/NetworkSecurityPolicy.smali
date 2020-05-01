.class public final Lo/NetworkSecurityPolicy;
.super Lo/SyncConstValue;
.source ""


# instance fields
.field private final c:Z

.field private final d:Ljava/lang/String;

.field private final e:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Z)V
    .locals 1

    const-string v0, "videoId"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoType"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "FetchDetailsPagePrimaryDataTask_Ab18255"

    .line 29
    invoke-direct {p0, v0}, Lo/SyncConstValue;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lo/NetworkSecurityPolicy;->d:Ljava/lang/String;

    iput-object p2, p0, Lo/NetworkSecurityPolicy;->e:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    iput-boolean p3, p0, Lo/NetworkSecurityPolicy;->c:Z

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/TextInputTimePickerView;",
            ">;)V"
        }
    .end annotation

    const-string v0, "pqls"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    iget-object v0, p0, Lo/NetworkSecurityPolicy;->d:Ljava/lang/String;

    iget-object v1, p0, Lo/NetworkSecurityPolicy;->e:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-static {v0, v1}, Lo/SEService;->a(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;)Ljava/util/List;

    move-result-object v0

    const-string v1, "CmpUtils.buildDetailsPag\u202618255(videoId, videoType)"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/util/Collection;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public a(Lo/ConfirmationAlreadyPresentingException;Lo/ci;Lo/TextClock;)V
    .locals 4

    const-string v0, "cmpTask"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callbackOnMain"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "result"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    iget-object p3, p0, Lo/NetworkSecurityPolicy;->e:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    sget-object v0, Lo/KeyAttestationPackageInfo;->d:[I

    invoke-virtual {p3}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->ordinal()I

    move-result p3

    aget p3, v0, p3

    const-string v0, "videos"

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq p3, v3, :cond_2

    if-eq p3, v2, :cond_0

    .line 75
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lo/NetworkSecurityPolicy;->j()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ": Invalid videoType encountered. This class only supports Movie and Show VideoTypes"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 59
    :cond_0
    iget-object p3, p1, Lo/ConfirmationAlreadyPresentingException;->a:Lo/FontRequest;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v1

    .line 62
    iget-object v0, p0, Lo/NetworkSecurityPolicy;->d:Ljava/lang/String;

    aput-object v0, v2, v3

    .line 60
    invoke-static {v2}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object v0

    .line 59
    invoke-virtual {p3, v0}, Lo/FontRequest;->c(Lo/TextInputTimePickerView;)Lo/agj;

    move-result-object p3

    if-eqz p3, :cond_1

    check-cast p3, Lo/AX;

    .line 68
    sget-object v0, Lo/LegacyErrorStrings;->b:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    .line 69
    invoke-virtual {p1}, Lo/ConfirmationAlreadyPresentingException;->d()Ljava/lang/String;

    move-result-object v1

    .line 70
    invoke-virtual {p1}, Lo/ConfirmationAlreadyPresentingException;->n()Z

    move-result p1

    .line 67
    invoke-static {v0, v1, p1}, Lcom/netflix/mediaclient/service/falkor/FalkorAgentStatus;->d(Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;Ljava/lang/String;Z)Lcom/netflix/mediaclient/android/app/Status;

    move-result-object p1

    .line 65
    invoke-interface {p2, p3, p1}, Lo/ci;->c(Lo/AX;Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0

    .line 59
    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type com.netflix.mediaclient.servicemgr.interface_.details.MovieDetails"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 42
    :cond_2
    iget-object p3, p1, Lo/ConfirmationAlreadyPresentingException;->a:Lo/FontRequest;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v1

    .line 45
    iget-object v0, p0, Lo/NetworkSecurityPolicy;->d:Ljava/lang/String;

    aput-object v0, v2, v3

    .line 43
    invoke-static {v2}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object v0

    .line 42
    invoke-virtual {p3, v0}, Lo/FontRequest;->c(Lo/TextInputTimePickerView;)Lo/agj;

    move-result-object p3

    if-eqz p3, :cond_3

    check-cast p3, Lo/Bb;

    .line 51
    sget-object v0, Lo/LegacyErrorStrings;->b:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    .line 52
    invoke-virtual {p1}, Lo/ConfirmationAlreadyPresentingException;->d()Ljava/lang/String;

    move-result-object v1

    .line 53
    invoke-virtual {p1}, Lo/ConfirmationAlreadyPresentingException;->n()Z

    move-result p1

    .line 50
    invoke-static {v0, v1, p1}, Lcom/netflix/mediaclient/service/falkor/FalkorAgentStatus;->d(Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;Ljava/lang/String;Z)Lcom/netflix/mediaclient/android/app/Status;

    move-result-object p1

    .line 48
    invoke-interface {p2, p3, p1}, Lo/ci;->b(Lo/Bb;Lcom/netflix/mediaclient/android/app/Status;)V

    :goto_0
    return-void

    .line 42
    :cond_3
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type com.netflix.mediaclient.servicemgr.interface_.details.ShowDetails"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public d()Z
    .locals 1

    .line 87
    iget-boolean v0, p0, Lo/NetworkSecurityPolicy;->c:Z

    return v0
.end method

.method public e(Lo/ci;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    const-string v0, "callbackOnMain"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "res"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lo/NetworkSecurityPolicy;->e:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    sget-object v1, Lo/KeyAttestationPackageInfo;->c:[I

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 83
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lo/NetworkSecurityPolicy;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": Invalid videoType encountered. This class only supports Movie and Show VideoTypes"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 82
    :cond_0
    invoke-interface {p1, v2, p2}, Lo/ci;->c(Lo/AX;Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0

    .line 81
    :cond_1
    invoke-interface {p1, v2, p2}, Lo/ci;->b(Lo/Bb;Lcom/netflix/mediaclient/android/app/Status;)V

    :goto_0
    return-void
.end method

.method public i()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/adt$Activity;",
            ">;"
        }
    .end annotation

    .line 90
    invoke-super {p0}, Lo/SyncConstValue;->i()Ljava/util/List;

    move-result-object v0

    .line 92
    sget-object v1, Lo/et;->e:Lo/et$ActionBar;

    invoke-virtual {v1}, Lo/et$ActionBar;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez v0, :cond_0

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 98
    :cond_0
    new-instance v1, Lo/adt$Activity;

    .line 100
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    const-string v3, "kidsDark"

    .line 98
    invoke-direct {v1, v3, v2}, Lo/adt$Activity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object v0
.end method
