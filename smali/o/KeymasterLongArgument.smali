.class public final Lo/KeymasterLongArgument;
.super Lo/SyncConstValue;
.source ""


# instance fields
.field private final a:Z

.field private final b:Z

.field private final c:Z

.field private final d:Ljava/lang/String;

.field private final e:Z

.field private final f:Z

.field private final g:Lcom/netflix/mediaclient/browse/api/task/enums/CmpTaskMode;

.field private final h:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ZZZZZZLcom/netflix/mediaclient/browse/api/task/enums/CmpTaskMode;)V
    .locals 1

    const-string v0, "videoId"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cmpTaskMode"

    invoke-static {p8, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "FetchFalkorVideoTaskV2"

    .line 25
    invoke-direct {p0, v0}, Lo/SyncConstValue;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lo/KeymasterLongArgument;->d:Ljava/lang/String;

    iput-boolean p2, p0, Lo/KeymasterLongArgument;->b:Z

    iput-boolean p3, p0, Lo/KeymasterLongArgument;->a:Z

    iput-boolean p4, p0, Lo/KeymasterLongArgument;->e:Z

    iput-boolean p5, p0, Lo/KeymasterLongArgument;->c:Z

    iput-boolean p6, p0, Lo/KeymasterLongArgument;->f:Z

    iput-boolean p7, p0, Lo/KeymasterLongArgument;->h:Z

    iput-object p8, p0, Lo/KeymasterLongArgument;->g:Lcom/netflix/mediaclient/browse/api/task/enums/CmpTaskMode;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ZZZZZZLcom/netflix/mediaclient/browse/api/task/enums/CmpTaskMode;ILo/amc;)V
    .locals 8

    move/from16 v0, p9

    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, p2

    :goto_0
    and-int/lit8 v2, v0, 0x4

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    move v2, p3

    :goto_1
    and-int/lit8 v4, v0, 0x8

    if-eqz v4, :cond_2

    const/4 v4, 0x0

    goto :goto_2

    :cond_2
    move v4, p4

    :goto_2
    and-int/lit8 v5, v0, 0x10

    if-eqz v5, :cond_3

    const/4 v5, 0x0

    goto :goto_3

    :cond_3
    move v5, p5

    :goto_3
    and-int/lit8 v6, v0, 0x20

    if-eqz v6, :cond_4

    const/4 v6, 0x0

    goto :goto_4

    :cond_4
    move v6, p6

    :goto_4
    and-int/lit8 v7, v0, 0x40

    if-eqz v7, :cond_5

    goto :goto_5

    :cond_5
    move v3, p7

    :goto_5
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_6

    .line 24
    sget-object v0, Lcom/netflix/mediaclient/browse/api/task/enums/CmpTaskMode;->b:Lcom/netflix/mediaclient/browse/api/task/enums/CmpTaskMode;

    goto :goto_6

    :cond_6
    move-object/from16 v0, p8

    :goto_6
    move-object p2, p0

    move-object p3, p1

    move p4, v1

    move p5, v2

    move p6, v4

    move p7, v5

    move/from16 p8, v6

    move/from16 p9, v3

    move-object/from16 p10, v0

    invoke-direct/range {p2 .. p10}, Lo/KeymasterLongArgument;-><init>(Ljava/lang/String;ZZZZZZLcom/netflix/mediaclient/browse/api/task/enums/CmpTaskMode;)V

    return-void
.end method

.method private final h()Lo/TextInputTimePickerView;
    .locals 8

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "videos"

    aput-object v2, v0, v1

    .line 49
    iget-object v2, p0, Lo/KeymasterLongArgument;->d:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v0, v3

    invoke-static {v0}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object v0

    const-string v2, "PQLHelper.create(FalkorBranches.VIDEOS, videoId)"

    invoke-static {v0, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 52
    iget-boolean v4, p0, Lo/KeymasterLongArgument;->b:Z

    const-string v5, "summary"

    if-eqz v4, :cond_0

    .line 53
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    :cond_0
    iget-boolean v4, p0, Lo/KeymasterLongArgument;->a:Z

    if-eqz v4, :cond_1

    const-string v4, "detail"

    .line 57
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    :cond_1
    iget-boolean v4, p0, Lo/KeymasterLongArgument;->e:Z

    if-eqz v4, :cond_2

    const-string v4, "bookmark"

    .line 61
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    :cond_2
    iget-boolean v4, p0, Lo/KeymasterLongArgument;->c:Z

    if-eqz v4, :cond_3

    const-string v4, "offlineAvailable"

    .line 65
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    :cond_3
    iget-boolean v4, p0, Lo/KeymasterLongArgument;->f:Z

    if-eqz v4, :cond_4

    const-string v4, "inQueue"

    .line 69
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    :cond_4
    iget-boolean v4, p0, Lo/KeymasterLongArgument;->h:Z

    if-eqz v4, :cond_5

    const-string v4, "volatileBitmaskedDetails"

    .line 73
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    :cond_5
    iget-boolean v4, p0, Lo/KeymasterLongArgument;->b:Z

    if-nez v4, :cond_6

    iget-boolean v4, p0, Lo/KeymasterLongArgument;->a:Z

    if-nez v4, :cond_6

    iget-boolean v4, p0, Lo/KeymasterLongArgument;->e:Z

    if-nez v4, :cond_6

    iget-boolean v4, p0, Lo/KeymasterLongArgument;->c:Z

    if-nez v4, :cond_6

    iget-boolean v4, p0, Lo/KeymasterLongArgument;->f:Z

    if-nez v4, :cond_6

    iget-boolean v4, p0, Lo/KeymasterLongArgument;->h:Z

    if-nez v4, :cond_6

    .line 78
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v4

    .line 79
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lo/KeymasterLongArgument;->j()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " requires at least one leaf to be present. Defaulting to summary leaf"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    .line 80
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    new-array v3, v3, [Ljava/lang/Object;

    aput-object v2, v3, v1

    .line 83
    invoke-static {v3}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object v1

    invoke-interface {v0, v1}, Lo/TextInputTimePickerView;->d(Lo/TextInputTimePickerView;)Lo/TextInputTimePickerView;

    move-result-object v0

    const-string v1, "basePath.append(PQLHelper.create(leafs))"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
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
    invoke-direct {p0}, Lo/KeymasterLongArgument;->h()Lo/TextInputTimePickerView;

    move-result-object v0

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

    invoke-direct {p0}, Lo/KeymasterLongArgument;->h()Lo/TextInputTimePickerView;

    move-result-object p3

    invoke-virtual {p1, p3}, Lo/FontRequest;->c(Lo/TextInputTimePickerView;)Lo/agj;

    move-result-object p1

    instance-of p3, p1, Lo/agp;

    const/4 v0, 0x0

    if-nez p3, :cond_0

    move-object p1, v0

    :cond_0
    check-cast p1, Lo/agp;

    if-eqz p1, :cond_1

    .line 39
    check-cast p1, Lo/agg;

    sget-object p3, Lo/LegacyErrorStrings;->b:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    check-cast p3, Lcom/netflix/mediaclient/android/app/Status;

    invoke-interface {p2, p1, p3}, Lo/ci;->d(Lo/agg;Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0

    .line 40
    :cond_1
    sget-object p1, Lo/LegacyErrorStrings;->Y:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    check-cast p1, Lcom/netflix/mediaclient/android/app/Status;

    invoke-interface {p2, v0, p1}, Lo/ci;->d(Lo/agg;Lcom/netflix/mediaclient/android/app/Status;)V

    :goto_0
    return-void
.end method

.method public a()Z
    .locals 2

    .line 88
    iget-object v0, p0, Lo/KeymasterLongArgument;->g:Lcom/netflix/mediaclient/browse/api/task/enums/CmpTaskMode;

    sget-object v1, Lcom/netflix/mediaclient/browse/api/task/enums/CmpTaskMode;->c:Lcom/netflix/mediaclient/browse/api/task/enums/CmpTaskMode;

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

    .line 86
    iget-object v0, p0, Lo/KeymasterLongArgument;->g:Lcom/netflix/mediaclient/browse/api/task/enums/CmpTaskMode;

    sget-object v1, Lcom/netflix/mediaclient/browse/api/task/enums/CmpTaskMode;->a:Lcom/netflix/mediaclient/browse/api/task/enums/CmpTaskMode;

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

    const/4 v0, 0x0

    .line 44
    invoke-interface {p1, v0, p2}, Lo/ci;->d(Lo/agg;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method
