.class public final Lo/TrustedCertificateStoreAdapter;
.super Lo/SyncConstValue;
.source ""


# instance fields
.field private final a:Lo/TextInputTimePickerView;

.field private final d:Lcom/netflix/mediaclient/browse/api/task/TaskMode;

.field private final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/netflix/mediaclient/browse/api/task/TaskMode;)V
    .locals 1

    const-string v0, "showId"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "taskMode"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "FetchSeasonsTask"

    .line 16
    invoke-direct {p0, v0}, Lo/SyncConstValue;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lo/TrustedCertificateStoreAdapter;->e:Ljava/lang/String;

    iput-object p2, p0, Lo/TrustedCertificateStoreAdapter;->d:Lcom/netflix/mediaclient/browse/api/task/TaskMode;

    .line 18
    iget-object p1, p0, Lo/TrustedCertificateStoreAdapter;->e:Ljava/lang/String;

    invoke-static {p1}, Lo/akz;->b(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lo/SEService;->e(Ljava/util/List;)Lo/TextInputTimePickerView;

    move-result-object p1

    const-string p2, "CmpUtils.getSeasonsPQL(listOf(showId))"

    invoke-static {p1, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lo/TrustedCertificateStoreAdapter;->a:Lo/TextInputTimePickerView;

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

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "videos"

    aput-object v2, v0, v1

    .line 24
    iget-object v1, p0, Lo/TrustedCertificateStoreAdapter;->e:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    const-string v2, "seasons"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "summary"

    aput-object v2, v0, v1

    .line 22
    invoke-static {v0}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object v0

    const-string v1, "PQLHelper.create(\n      \u2026  \"summary\"\n            )"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    iget-object v0, p0, Lo/TrustedCertificateStoreAdapter;->a:Lo/TextInputTimePickerView;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lo/ConfirmationAlreadyPresentingException;Lo/ci;Lo/TextClock;)V
    .locals 1

    const-string v0, "cmpTask"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callbackOnMain"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "result"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    iget-object p1, p1, Lo/ConfirmationAlreadyPresentingException;->a:Lo/FontRequest;

    iget-object p3, p0, Lo/TrustedCertificateStoreAdapter;->a:Lo/TextInputTimePickerView;

    invoke-virtual {p1, p3}, Lo/FontRequest;->e(Lo/TextInputTimePickerView;)Ljava/util/List;

    move-result-object p1

    instance-of p3, p1, Ljava/util/List;

    if-nez p3, :cond_0

    const/4 p1, 0x0

    .line 46
    :cond_0
    sget-object p3, Lo/LegacyErrorStrings;->b:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    check-cast p3, Lcom/netflix/mediaclient/android/app/Status;

    invoke-interface {p2, p1, p3}, Lo/ci;->f(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method public a()Z
    .locals 2

    .line 33
    iget-object v0, p0, Lo/TrustedCertificateStoreAdapter;->d:Lcom/netflix/mediaclient/browse/api/task/TaskMode;

    sget-object v1, Lcom/netflix/mediaclient/browse/api/task/TaskMode;->b:Lcom/netflix/mediaclient/browse/api/task/TaskMode;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public d()Z
    .locals 2

    .line 37
    iget-object v0, p0, Lo/TrustedCertificateStoreAdapter;->d:Lcom/netflix/mediaclient/browse/api/task/TaskMode;

    sget-object v1, Lcom/netflix/mediaclient/browse/api/task/TaskMode;->a:Lcom/netflix/mediaclient/browse/api/task/TaskMode;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public e(Lo/ci;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    const-string v0, "callbackOnMain"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "result"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    invoke-static {}, Lo/akz;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0, p2}, Lo/ci;->f(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method
