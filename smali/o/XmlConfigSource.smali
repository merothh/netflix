.class public final Lo/XmlConfigSource;
.super Lo/SyncConstValue;
.source ""


# instance fields
.field private final a:Z

.field private final b:Lo/TextInputTimePickerView;

.field private final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "videoId"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "FetchVideoSummaryTask"

    .line 17
    invoke-direct {p0, v0}, Lo/SyncConstValue;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lo/XmlConfigSource;->d:Ljava/lang/String;

    iput-boolean p2, p0, Lo/XmlConfigSource;->a:Z

    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "videos"

    aput-object v0, p1, p2

    .line 21
    iget-object p2, p0, Lo/XmlConfigSource;->d:Ljava/lang/String;

    const/4 v0, 0x1

    aput-object p2, p1, v0

    const/4 p2, 0x2

    const-string v0, "summary"

    aput-object v0, p1, p2

    .line 19
    invoke-static {p1}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object p1

    const-string p2, "PQLHelper.create(\n      \u2026,\n        \"summary\"\n    )"

    invoke-static {p1, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lo/XmlConfigSource;->b:Lo/TextInputTimePickerView;

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 1
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

    .line 28
    iget-object v0, p0, Lo/XmlConfigSource;->b:Lo/TextInputTimePickerView;

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

    .line 36
    iget-object p1, p1, Lo/ConfirmationAlreadyPresentingException;->a:Lo/FontRequest;

    iget-object p3, p0, Lo/XmlConfigSource;->b:Lo/TextInputTimePickerView;

    invoke-virtual {p1, p3}, Lo/FontRequest;->c(Lo/TextInputTimePickerView;)Lo/agj;

    move-result-object p1

    instance-of p3, p1, Lo/agp;

    const/4 v0, 0x0

    if-nez p3, :cond_0

    move-object p1, v0

    :cond_0
    check-cast p1, Lo/agp;

    if-eqz p1, :cond_2

    .line 38
    invoke-virtual {p1}, Lo/agp;->getId()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_1

    goto :goto_0

    .line 41
    :cond_1
    invoke-virtual {p1}, Lo/agp;->br()Lo/Ay;

    move-result-object p1

    sget-object p3, Lo/LegacyErrorStrings;->b:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    check-cast p3, Lcom/netflix/mediaclient/android/app/Status;

    invoke-interface {p2, p1, p3}, Lo/ci;->c(Lo/Ay;Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_1

    .line 39
    :cond_2
    :goto_0
    sget-object p1, Lo/LegacyErrorStrings;->Y:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    check-cast p1, Lcom/netflix/mediaclient/android/app/Status;

    invoke-interface {p2, v0, p1}, Lo/ci;->c(Lo/Ay;Lcom/netflix/mediaclient/android/app/Status;)V

    :goto_1
    return-void
.end method

.method public d()Z
    .locals 1

    .line 25
    iget-boolean v0, p0, Lo/XmlConfigSource;->a:Z

    return v0
.end method

.method public e(Lo/ci;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    const-string v0, "callbackOnMain"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "result"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 46
    invoke-interface {p1, v0, p2}, Lo/ci;->c(Lo/Ay;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method
