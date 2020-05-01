.class public final Lo/RegexValidator;
.super Lo/SyncConstValue;
.source ""


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "videoId"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "RefreshSeasonsAndEpisodes"

    .line 26
    invoke-direct {p0, v0}, Lo/SyncConstValue;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lo/RegexValidator;->a:Ljava/lang/String;

    iput-boolean p2, p0, Lo/RegexValidator;->b:Z

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 3
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
    iget-object v0, p0, Lo/RegexValidator;->a:Ljava/lang/String;

    iget-boolean v1, p0, Lo/RegexValidator;->b:Z

    sget-object v2, Lo/fg;->d:Lo/fg$Application;

    invoke-virtual {v2}, Lo/fg$Application;->e()Z

    move-result v2

    invoke-static {p1, v0, v1, v2}, Lo/SEService;->a(Ljava/util/List;Ljava/lang/String;ZZ)V

    return-void
.end method

.method public a(Lo/ConfirmationAlreadyPresentingException;Lo/ci;Lo/TextClock;)V
    .locals 2

    const-string p3, "cmpTask"

    invoke-static {p1, p3}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "callbackOnMain"

    invoke-static {p2, p3}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    iget-object p1, p1, Lo/ConfirmationAlreadyPresentingException;->a:Lo/FontRequest;

    const/4 p3, 0x2

    new-array p3, p3, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v1, "videos"

    aput-object v1, p3, v0

    .line 39
    iget-object v0, p0, Lo/RegexValidator;->a:Ljava/lang/String;

    const/4 v1, 0x1

    aput-object v0, p3, v1

    .line 37
    invoke-static {p3}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object p3

    .line 36
    invoke-virtual {p1, p3}, Lo/FontRequest;->c(Lo/TextInputTimePickerView;)Lo/agj;

    move-result-object p1

    check-cast p1, Lo/agp;

    if-nez p1, :cond_0

    .line 44
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p1

    .line 45
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "RefreshSeasonsAndEpisodes empty response for "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lo/RegexValidator;->a:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 44
    invoke-interface {p1, p3}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 47
    sget-object p3, Lo/LegacyErrorStrings;->Y:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    check-cast p3, Lcom/netflix/mediaclient/android/app/Status;

    invoke-interface {p2, p1, p3}, Lo/ci;->b(Lo/Bb;Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0

    .line 50
    :cond_0
    iget-boolean p3, p0, Lo/RegexValidator;->b:Z

    if-eqz p3, :cond_1

    invoke-virtual {p1}, Lo/agp;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object p3

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->SHOW:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-ne p3, v0, :cond_1

    .line 51
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p3

    const-string v0, "RefreshSeasonsAndEpisodes expected Movie, got Show"

    invoke-interface {p3, v0}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    .line 55
    :cond_1
    check-cast p1, Lo/Bb;

    sget-object p3, Lo/LegacyErrorStrings;->b:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    check-cast p3, Lcom/netflix/mediaclient/android/app/Status;

    invoke-interface {p2, p1, p3}, Lo/ci;->b(Lo/Bb;Lcom/netflix/mediaclient/android/app/Status;)V

    :goto_0
    return-void
.end method

.method public d()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public e(Lo/ci;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    const-string v0, "callbackOnMain"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "res"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 60
    invoke-interface {p1, v0, p2}, Lo/ci;->b(Lo/Bb;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method
