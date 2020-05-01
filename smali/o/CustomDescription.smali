.class public Lo/CustomDescription;
.super Lo/SyncConstValue;
.source ""


# instance fields
.field private final d:Ljava/lang/String;

.field private final e:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "FetchVideoVolatileNodes"

    .line 33
    invoke-direct {p0, v0}, Lo/SyncConstValue;-><init>(Ljava/lang/String;)V

    .line 34
    iput-object p1, p0, Lo/CustomDescription;->d:Ljava/lang/String;

    .line 35
    iput-boolean p2, p0, Lo/CustomDescription;->e:Z

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

    .line 46
    iget-object v0, p0, Lo/CustomDescription;->d:Ljava/lang/String;

    iget-boolean v1, p0, Lo/CustomDescription;->e:Z

    invoke-static {}, Lo/fg;->j()Z

    move-result v2

    invoke-static {p1, v0, v1, v2}, Lo/SEService;->a(Ljava/util/List;Ljava/lang/String;ZZ)V

    return-void
.end method

.method public a(Lo/ConfirmationAlreadyPresentingException;Lo/ci;Lo/TextClock;)V
    .locals 3

    .line 52
    iget-object p3, p1, Lo/ConfirmationAlreadyPresentingException;->a:Lo/FontRequest;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "videos"

    aput-object v2, v0, v1

    iget-object v1, p0, Lo/CustomDescription;->d:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object v0

    invoke-virtual {p3, v0}, Lo/FontRequest;->c(Lo/TextInputTimePickerView;)Lo/agj;

    move-result-object p3

    check-cast p3, Lo/agp;

    if-eqz p3, :cond_2

    .line 54
    invoke-virtual {p3}, Lo/agp;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 60
    :cond_0
    iget-object v0, p0, Lo/CustomDescription;->d:Ljava/lang/String;

    invoke-virtual {p3}, Lo/agp;->bA()Lcom/netflix/model/leafs/Bookmark;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lo/ConfirmationAlreadyPresentingException;->b(Ljava/lang/String;Lcom/netflix/model/leafs/Bookmark;)V

    .line 61
    iget-boolean p1, p0, Lo/CustomDescription;->e:Z

    if-eqz p1, :cond_1

    .line 62
    sget-object p1, Lo/LegacyErrorStrings;->b:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-interface {p2, p3, p1}, Lo/ci;->c(Lo/AX;Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_2

    .line 64
    :cond_1
    sget-object p1, Lo/LegacyErrorStrings;->b:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-interface {p2, p3, p1}, Lo/ci;->b(Lo/Bb;Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_2

    .line 55
    :cond_2
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SPY-12098: FetchVideoVolatileNodesTask bad video id. Requested: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lo/CustomDescription;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", got: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p3, :cond_3

    const-string p3, "rtn=null"

    goto :goto_1

    :cond_3
    invoke-virtual {p3}, Lo/agp;->getId()Ljava/lang/String;

    move-result-object p3

    :goto_1
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 56
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p3

    invoke-interface {p3, p1}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    const-string p3, "FetchVideoVolatileNodesTask"

    .line 57
    invoke-static {p3, p1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 58
    sget-object p3, Lo/LegacyErrorStrings;->Y:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-interface {p2, p1, p3}, Lo/ci;->c(Lo/AX;Lcom/netflix/mediaclient/android/app/Status;)V

    :goto_2
    return-void
.end method

.method public d()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public e(Lo/ci;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .line 71
    iget-boolean v0, p0, Lo/CustomDescription;->e:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 72
    invoke-interface {p1, v1, p2}, Lo/ci;->c(Lo/AX;Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0

    .line 74
    :cond_0
    invoke-interface {p1, v1, p2}, Lo/ci;->b(Lo/Bb;Lcom/netflix/mediaclient/android/app/Status;)V

    :goto_0
    return-void
.end method
