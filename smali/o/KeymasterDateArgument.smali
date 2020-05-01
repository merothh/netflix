.class public Lo/KeymasterDateArgument;
.super Lo/VoicemailContract;
.source ""


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final d:Ljava/lang/String;

.field private final e:Lo/TextInputTimePickerView;


# direct methods
.method public constructor <init>(Lo/FontRequest;Ljava/lang/String;Lo/ci;)V
    .locals 3
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

    const-string v0, "FetchFalkorVideo"

    .line 38
    invoke-direct {p0, v0, p1, p3}, Lo/VoicemailContract;-><init>(Ljava/lang/String;Lo/FontRequest;Lo/ci;)V

    .line 39
    iput-object p2, p0, Lo/KeymasterDateArgument;->d:Ljava/lang/String;

    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "videos"

    aput-object v0, p1, p3

    const/4 v0, 0x1

    aput-object p2, p1, v0

    const/4 p2, 0x2

    new-array v1, p2, [Ljava/lang/Object;

    const-string v2, "summary"

    aput-object v2, v1, p3

    const-string p3, "detail"

    aput-object p3, v1, v0

    .line 41
    invoke-static {v1}, Lo/SearchIndexableResource;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    aput-object p3, p1, p2

    invoke-static {p1}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object p1

    iput-object p1, p0, Lo/KeymasterDateArgument;->e:Lo/TextInputTimePickerView;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/util/Map;)V
    .locals 0

    .line 24
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

    .line 46
    iget-object v0, p0, Lo/KeymasterDateArgument;->e:Lo/TextInputTimePickerView;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected b(Lo/ci;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    const/4 v0, 0x0

    .line 65
    invoke-interface {p1, v0, p2}, Lo/ci;->d(Lo/agg;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method public bridge synthetic c(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)V
    .locals 0

    .line 24
    invoke-super {p0, p1}, Lo/VoicemailContract;->c(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)V

    return-void
.end method

.method public bridge synthetic d()Ljava/lang/String;
    .locals 1

    .line 24
    invoke-super {p0}, Lo/VoicemailContract;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected d(Lo/ci;Lo/TextClock;)V
    .locals 2

    .line 51
    iget-object p2, p0, Lo/KeymasterDateArgument;->a:Lo/FontRequest;

    iget-object v0, p0, Lo/KeymasterDateArgument;->e:Lo/TextInputTimePickerView;

    invoke-virtual {p2, v0}, Lo/FontRequest;->c(Lo/TextInputTimePickerView;)Lo/agj;

    move-result-object p2

    check-cast p2, Lo/agp;

    if-eqz p2, :cond_1

    .line 53
    invoke-virtual {p2}, Lo/agp;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 59
    :cond_0
    sget-object v0, Lo/LegacyErrorStrings;->b:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-interface {p1, p2, v0}, Lo/ci;->d(Lo/agg;Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_2

    .line 54
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SPY-7519: FetchFalkorVideoTask got weird movie id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p2, :cond_2

    const-string p2, "null"

    goto :goto_1

    :cond_2
    invoke-virtual {p2}, Lo/agp;->getId()Ljava/lang/String;

    move-result-object p2

    :goto_1
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " requested videoId "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lo/KeymasterDateArgument;->d:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 55
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    invoke-interface {v0, p2}, Lo/SpinnerAdapter;->b(Ljava/lang/String;)V

    const-string v0, "FetchFalkorVideoTask"

    .line 56
    invoke-static {v0, p2}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x0

    .line 57
    sget-object v0, Lo/LegacyErrorStrings;->Y:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-interface {p1, p2, v0}, Lo/ci;->d(Lo/agg;Lcom/netflix/mediaclient/android/app/Status;)V

    :goto_2
    return-void
.end method
