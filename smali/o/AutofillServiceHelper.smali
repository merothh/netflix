.class public Lo/AutofillServiceHelper;
.super Lo/SyncConstValue;
.source ""


# instance fields
.field private final a:Lo/TextInputTimePickerView;

.field private final e:Lo/TextInputTimePickerView;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Z)V
    .locals 14

    move-object v0, p0

    const-string v1, "FetchSims"

    .line 30
    invoke-direct {p0, v1}, Lo/SyncConstValue;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x5

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "videos"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v5, 0x1

    aput-object p1, v2, v5

    const-string v6, "originalSimilars"

    const-string v7, "similars"

    if-eqz p3, :cond_0

    move-object v8, v6

    goto :goto_0

    :cond_0
    move-object v8, v7

    :goto_0
    const/4 v9, 0x2

    aput-object v8, v2, v9

    const/16 v8, 0x17

    .line 35
    invoke-static {v8}, Lo/SearchIndexableResource;->d(I)Ljava/util/Map;

    move-result-object v10

    const/4 v11, 0x3

    aput-object v10, v2, v11

    new-array v10, v11, [Ljava/lang/Object;

    const-string v12, "summary"

    aput-object v12, v10, v4

    const-string v12, "horzDispArt"

    aput-object v12, v10, v5

    const-string v12, "bookmark"

    aput-object v12, v10, v9

    .line 36
    invoke-static {v10}, Lo/SearchIndexableResource;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    const/4 v13, 0x4

    aput-object v10, v2, v13

    .line 31
    invoke-static {v2}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object v2

    iput-object v2, v0, Lo/AutofillServiceHelper;->a:Lo/TextInputTimePickerView;

    .line 39
    sget-object v2, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->SHOW:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-object/from16 v10, p2

    if-ne v10, v2, :cond_2

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v3, v2, v4

    aput-object p1, v2, v5

    if-eqz p3, :cond_1

    goto :goto_1

    :cond_1
    move-object v6, v7

    :goto_1
    aput-object v6, v2, v9

    .line 44
    invoke-static {v8}, Lo/SearchIndexableResource;->d(I)Ljava/util/Map;

    move-result-object v3

    aput-object v3, v2, v11

    const-string v3, "episodes"

    aput-object v3, v2, v13

    const-string v3, "current"

    aput-object v3, v2, v1

    const/4 v1, 0x6

    new-array v3, v9, [Ljava/lang/Object;

    const-string v6, "detail"

    aput-object v6, v3, v4

    aput-object v12, v3, v5

    .line 45
    invoke-static {v3}, Lo/SearchIndexableResource;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    aput-object v3, v2, v1

    .line 40
    invoke-static {v2}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object v1

    iput-object v1, v0, Lo/AutofillServiceHelper;->e:Lo/TextInputTimePickerView;

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    .line 48
    iput-object v1, v0, Lo/AutofillServiceHelper;->e:Lo/TextInputTimePickerView;

    :goto_2
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

    .line 54
    iget-object v0, p0, Lo/AutofillServiceHelper;->a:Lo/TextInputTimePickerView;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    iget-object v0, p0, Lo/AutofillServiceHelper;->e:Lo/TextInputTimePickerView;

    if-eqz v0, :cond_0

    .line 56
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public a(Lo/ConfirmationAlreadyPresentingException;Lo/ci;Lo/TextClock;)V
    .locals 0

    .line 62
    iget-object p1, p1, Lo/ConfirmationAlreadyPresentingException;->a:Lo/FontRequest;

    iget-object p3, p0, Lo/AutofillServiceHelper;->a:Lo/TextInputTimePickerView;

    invoke-virtual {p1, p3}, Lo/FontRequest;->e(Lo/TextInputTimePickerView;)Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 65
    sget-object p3, Lo/LegacyErrorStrings;->Y:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-interface {p2, p1, p3}, Lo/ci;->q(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0

    .line 67
    :cond_0
    sget-object p3, Lo/LegacyErrorStrings;->b:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-interface {p2, p1, p3}, Lo/ci;->q(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    :goto_0
    return-void
.end method

.method public e(Lo/ci;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    const/4 v0, 0x0

    .line 73
    invoke-interface {p1, v0, p2}, Lo/ci;->q(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method
