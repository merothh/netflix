.class public Lo/MetadataReader;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final d:Lo/FontRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/FontRequest<",
            "*>;"
        }
    .end annotation
.end field

.field private final e:Lo/hY;


# direct methods
.method public constructor <init>(Lo/FontRequest;Lo/hY;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/FontRequest<",
            "*>;",
            "Lo/hY;",
            ")V"
        }
    .end annotation

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    iput-object p1, p0, Lo/MetadataReader;->d:Lo/FontRequest;

    .line 118
    iput-object p2, p0, Lo/MetadataReader;->e:Lo/hY;

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 12

    .line 143
    iget-object v0, p0, Lo/MetadataReader;->d:Lo/FontRequest;

    invoke-virtual {v0, p1}, Lo/FontRequest;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 145
    invoke-static {v0}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "NetflixFalkorTasksDispatcher"

    if-eqz v0, :cond_0

    invoke-static {p2}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "Can\'t refresh list - lolomoId and homeLolomoId are both empty"

    .line 146
    invoke-static {v2, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 150
    :cond_0
    iget-object v0, p0, Lo/MetadataReader;->d:Lo/FontRequest;

    invoke-virtual {v0, p1, p2}, Lo/FontRequest;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    const/4 v0, 0x1

    if-eqz p2, :cond_8

    .line 152
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    goto/16 :goto_2

    .line 158
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/FontRequest$Activity;

    if-eqz v3, :cond_6

    .line 159
    iget-object v4, v3, Lo/FontRequest$Activity;->d:Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    if-nez v4, :cond_2

    goto :goto_1

    .line 164
    :cond_2
    iget-object v4, v3, Lo/FontRequest$Activity;->d:Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    .line 165
    invoke-interface {v4}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;->getId()Ljava/lang/String;

    move-result-object v8

    .line 166
    iget-object v9, v3, Lo/FontRequest$Activity;->c:Ljava/lang/String;

    .line 168
    invoke-static {v8}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v3, "Can\'t refresh list - lomo id is empty"

    .line 169
    invoke-static {v2, v3}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const/4 v5, -0x1

    .line 173
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v3, "Can\'t refresh list - lomo index is invalid"

    .line 174
    invoke-static {v2, v3}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 178
    :cond_4
    invoke-interface {v4}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    move-result-object v5

    sget-object v6, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->m:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    if-ne v5, v6, :cond_5

    invoke-interface {v4}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;->isVolatile()Z

    move-result v4

    if-nez v4, :cond_5

    const-string v3, "Can\'t refresh list - the list is not a volatile row"

    .line 179
    invoke-static {v2, v3}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 183
    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Refreshing list - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    new-instance v4, Lo/InternalTransformation;

    iget-object v6, p0, Lo/MetadataReader;->d:Lo/FontRequest;

    iget-object v7, v3, Lo/FontRequest$Activity;->b:Ljava/lang/String;

    move-object v5, v4

    move-object v10, p1

    move-object v11, p3

    invoke-direct/range {v5 .. v11}, Lo/InternalTransformation;-><init>(Lo/FontRequest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v4}, Lo/MetadataReader;->d(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_6
    :goto_1
    new-array v3, v0, [Ljava/lang/Object;

    aput-object p1, v3, v1

    const-string v4, "Can\'t refresh list - refreshData is null for listContext %s"

    .line 160
    invoke-static {v2, v4, v3}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    :cond_7
    return v0

    :cond_8
    :goto_2
    new-array p2, v0, [Ljava/lang/Object;

    aput-object p1, p2, v1

    const-string p1, "Can\'t refresh list - no listContext %s rows found"

    .line 153
    invoke-static {v2, p1, p2}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return v1
.end method

.method static synthetic c(Lo/MetadataReader;)Lo/hY;
    .locals 0

    .line 104
    iget-object p0, p0, Lo/MetadataReader;->e:Lo/hY;

    return-object p0
.end method

.method private synthetic c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 138
    invoke-direct {p0, p1, p2, p3}, Lo/MetadataReader;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method static synthetic c(Lo/MetadataReader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lo/MetadataReader;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static d(Ljava/lang/Runnable;)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 568
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "NetflixFalkorTasksDispatcher"

    const-string v2, "Launching task: %s"

    invoke-static {v1, v2, v0}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 569
    new-instance v0, Lcom/netflix/mediaclient/android/app/BackgroundTask;

    invoke-direct {v0}, Lcom/netflix/mediaclient/android/app/BackgroundTask;-><init>()V

    invoke-virtual {v0, p0}, Lcom/netflix/mediaclient/android/app/BackgroundTask;->b(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;IIIILo/ci;)V
    .locals 16

    .line 217
    new-instance v14, Lo/LuhnChecksumValidator;

    move-object/from16 v15, p0

    iget-object v1, v15, Lo/MetadataReader;->d:Lo/FontRequest;

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v0, v14

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p3

    move-object/from16 v9, p6

    move/from16 v10, p4

    move/from16 v11, p5

    invoke-direct/range {v0 .. v13}, Lo/LuhnChecksumValidator;-><init>(Lo/FontRequest;Ljava/lang/String;IIIIZZLo/ci;IIZLjava/lang/String;)V

    invoke-static {v14}, Lo/MetadataReader;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ljava/lang/String;IILo/ci;)V
    .locals 7

    .line 472
    new-instance v6, Lo/Pin;

    iget-object v1, p0, Lo/MetadataReader;->d:Lo/FontRequest;

    move-object v0, v6

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lo/Pin;-><init>(Lo/FontRequest;Ljava/lang/String;IILo/ci;)V

    invoke-static {v6}, Lo/MetadataReader;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/netflix/mediaclient/browse/api/task/TaskMode;Lo/ci;)V
    .locals 2

    .line 456
    new-instance v0, Lo/SystemCertificateSource;

    iget-object v1, p0, Lo/MetadataReader;->d:Lo/FontRequest;

    invoke-direct {v0, v1, p1, p2, p3}, Lo/SystemCertificateSource;-><init>(Lo/FontRequest;Ljava/lang/String;Lcom/netflix/mediaclient/browse/api/task/TaskMode;Lo/ci;)V

    invoke-static {v0}, Lo/MetadataReader;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Ljava/lang/String;Lo/ci;)V
    .locals 10

    if-nez p3, :cond_0

    const-string p3, "NetflixFalkorTasksDispatcher"

    const-string v0, "removeFromQueue: No lolomoId was supplied, assuming Home Lolomo"

    .line 527
    invoke-static {p3, v0}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    iget-object p3, p0, Lo/MetadataReader;->d:Lo/FontRequest;

    invoke-virtual {p3}, Lo/FontRequest;->h()Ljava/lang/String;

    move-result-object p3

    :cond_0
    move-object v4, p3

    .line 530
    iget-object p3, p0, Lo/MetadataReader;->d:Lo/FontRequest;

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->c:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    invoke-virtual {p3, v0, v4}, Lo/FontRequest;->c(Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p3

    .line 531
    new-instance v9, Lo/SaveCallback;

    iget-object v1, p0, Lo/MetadataReader;->d:Lo/FontRequest;

    iget-object v0, p3, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Ljava/lang/String;

    iget-object p3, p3, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v6, p3

    check-cast v6, Ljava/lang/String;

    move-object v0, v9

    move-object v2, p1

    move-object v3, p2

    move-object v7, p4

    move-object v8, p5

    invoke-direct/range {v0 .. v8}, Lo/SaveCallback;-><init>(Lo/FontRequest;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lo/ci;)V

    invoke-static {v9}, Lo/MetadataReader;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lo/ci;)V
    .locals 2

    .line 322
    new-instance v0, Lo/KeymasterDateArgument;

    iget-object v1, p0, Lo/MetadataReader;->d:Lo/FontRequest;

    invoke-direct {v0, v1, p1, p2}, Lo/KeymasterDateArgument;-><init>(Lo/FontRequest;Ljava/lang/String;Lo/ci;)V

    invoke-static {v0}, Lo/MetadataReader;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Lo/ConfirmationCallback;Lo/ci;)V
    .locals 3

    .line 191
    new-instance v0, Lo/ConfirmationAlreadyPresentingException;

    iget-object v1, p0, Lo/MetadataReader;->d:Lo/FontRequest;

    iget-object v2, p0, Lo/MetadataReader;->e:Lo/hY;

    invoke-direct {v0, v1, v2, p1, p2}, Lo/ConfirmationAlreadyPresentingException;-><init>(Lo/FontRequest;Lo/SearchIndexablesContract;Lo/ConfirmationCallback;Lo/ci;)V

    invoke-static {v0}, Lo/MetadataReader;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Lo/DateTransformation;Lo/cm;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lo/DateTransformation<",
            "TT;>;",
            "Lo/cm<",
            "TT;>;)V"
        }
    .end annotation

    .line 195
    new-instance v0, Lo/FieldClassification;

    iget-object v1, p0, Lo/MetadataReader;->d:Lo/FontRequest;

    iget-object v2, p0, Lo/MetadataReader;->e:Lo/hY;

    invoke-direct {v0, v1, v2, p1, p2}, Lo/FieldClassification;-><init>(Lo/FontRequest;Lo/SearchIndexablesContract;Lo/DateTransformation;Lo/cm;)V

    invoke-static {v0}, Lo/MetadataReader;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b(IILjava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;ZZLo/ci;)V
    .locals 8

    if-nez p4, :cond_1

    .line 285
    iget-object p4, p0, Lo/MetadataReader;->d:Lo/FontRequest;

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->c:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    invoke-virtual {p4, v0, p3}, Lo/FontRequest;->a(Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 287
    iget-object p3, p3, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object p4, p3

    check-cast p4, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    goto :goto_0

    :cond_0
    const-string p1, "NetflixFalkorTasksDispatcher"

    const-string p2, "Asked to fetch IQ videos but no IQ lomo currently exists in cache!"

    .line 290
    invoke-static {p1, p2}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    new-instance p1, Lo/MetadataReader$4;

    invoke-direct {p1, p0, p7}, Lo/MetadataReader$4;-><init>(Lo/MetadataReader;Lo/ci;)V

    invoke-static {p1}, Lo/adX;->d(Ljava/lang/Runnable;)Z

    return-void

    :cond_1
    :goto_0
    move-object v2, p4

    .line 302
    new-instance p3, Lo/Dataset;

    iget-object v1, p0, Lo/MetadataReader;->d:Lo/FontRequest;

    move-object v0, p3

    move v3, p1

    move v4, p2

    move v5, p5

    move v6, p6

    move-object v7, p7

    invoke-direct/range {v0 .. v7}, Lo/Dataset;-><init>(Lo/FontRequest;Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;IIZZLo/ci;)V

    invoke-static {p3}, Lo/MetadataReader;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b(IIZLjava/lang/String;Lo/ci;)V
    .locals 10

    .line 272
    new-instance v9, Lo/KeystoreArguments;

    iget-object v1, p0, Lo/MetadataReader;->d:Lo/FontRequest;

    iget-object v2, p0, Lo/MetadataReader;->e:Lo/hY;

    sget-object v7, Lcom/netflix/mediaclient/browse/api/task/TaskMode;->a:Lcom/netflix/mediaclient/browse/api/task/TaskMode;

    move-object v0, v9

    move v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    move-object v8, p5

    invoke-direct/range {v0 .. v8}, Lo/KeystoreArguments;-><init>(Lo/FontRequest;Lo/SearchIndexablesContract;IIZLjava/lang/String;Lcom/netflix/mediaclient/browse/api/task/TaskMode;Lo/ci;)V

    invoke-static {v9}, Lo/MetadataReader;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b(Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;IIZZLo/ci;)V
    .locals 15

    move-object v0, p0

    .line 235
    invoke-interface/range {p1 .. p1}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    move-result-object v1

    invoke-static {v1}, Lo/ady;->b(Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 236
    new-instance v1, Lo/Dataset;

    iget-object v3, v0, Lo/MetadataReader;->d:Lo/FontRequest;

    move-object v2, v1

    move-object/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    invoke-direct/range {v2 .. v9}, Lo/Dataset;-><init>(Lo/FontRequest;Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;IIZZLo/ci;)V

    invoke-static {v1}, Lo/MetadataReader;->d(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 237
    :cond_0
    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->a:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    invoke-interface/range {p1 .. p1}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 238
    new-instance v1, Lo/FrameworkNetworkSecurityPolicy;

    iget-object v3, v0, Lo/MetadataReader;->d:Lo/FontRequest;

    invoke-interface/range {p1 .. p1}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;->getId()Ljava/lang/String;

    move-result-object v6

    move-object v2, v1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v7, p4

    move-object/from16 v8, p6

    invoke-direct/range {v2 .. v8}, Lo/FrameworkNetworkSecurityPolicy;-><init>(Lo/FontRequest;IILjava/lang/String;ZLo/ci;)V

    invoke-static {v1}, Lo/MetadataReader;->d(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 239
    :cond_1
    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->e:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    invoke-interface/range {p1 .. p1}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lo/ia;->e()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface/range {p1 .. p1}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;->isRichUITreatment()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 240
    new-instance v1, Lo/Domain;

    iget-object v3, v0, Lo/MetadataReader;->d:Lo/FontRequest;

    move-object v2, v1

    move-object/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    invoke-direct/range {v2 .. v9}, Lo/Domain;-><init>(Lo/FontRequest;Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;IIZZLo/ci;)V

    invoke-static {v1}, Lo/MetadataReader;->d(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 241
    :cond_2
    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->k:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    invoke-interface/range {p1 .. p1}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 242
    new-instance v1, Lo/AutofillFieldClassificationService;

    iget-object v3, v0, Lo/MetadataReader;->d:Lo/FontRequest;

    move-object v2, v1

    move-object/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    invoke-direct/range {v2 .. v9}, Lo/AutofillFieldClassificationService;-><init>(Lo/FontRequest;Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;IIZZLo/ci;)V

    invoke-static {v1}, Lo/MetadataReader;->d(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 243
    :cond_3
    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->g:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    invoke-interface/range {p1 .. p1}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 244
    new-instance v1, Lo/ConfirmationPrompt;

    iget-object v3, v0, Lo/MetadataReader;->d:Lo/FontRequest;

    const/4 v5, 0x1

    invoke-interface/range {p1 .. p1}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;->getId()Ljava/lang/String;

    move-result-object v6

    move-object v2, v1

    move/from16 v4, p2

    move/from16 v7, p4

    move-object/from16 v8, p6

    invoke-direct/range {v2 .. v8}, Lo/ConfirmationPrompt;-><init>(Lo/FontRequest;IILjava/lang/String;ZLo/ci;)V

    invoke-static {v1}, Lo/MetadataReader;->d(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 245
    :cond_4
    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->h:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    invoke-interface/range {p1 .. p1}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 246
    new-instance v1, Lo/NetworkSecurityConfig;

    iget-object v3, v0, Lo/MetadataReader;->d:Lo/FontRequest;

    invoke-interface/range {p1 .. p1}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;->getId()Ljava/lang/String;

    move-result-object v6

    move-object v2, v1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v7, p6

    move/from16 v8, p4

    invoke-direct/range {v2 .. v8}, Lo/NetworkSecurityConfig;-><init>(Lo/FontRequest;IILjava/lang/String;Lo/ci;Z)V

    invoke-static {v1}, Lo/MetadataReader;->d(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 248
    :cond_5
    new-instance v1, Lo/Dataset;

    iget-object v8, v0, Lo/MetadataReader;->d:Lo/FontRequest;

    move-object v7, v1

    move-object/from16 v9, p1

    move/from16 v10, p2

    move/from16 v11, p3

    move/from16 v12, p4

    move/from16 v13, p5

    move-object/from16 v14, p6

    invoke-direct/range {v7 .. v14}, Lo/Dataset;-><init>(Lo/FontRequest;Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;IIZZLo/ci;)V

    invoke-static {v1}, Lo/MetadataReader;->d(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public b(Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Ljava/lang/String;Lo/ci;)V
    .locals 7

    .line 448
    new-instance v6, Lo/KeyStoreConfigSource;

    iget-object v1, p0, Lo/MetadataReader;->d:Lo/FontRequest;

    move-object v0, v6

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lo/KeyStoreConfigSource;-><init>(Lo/FontRequest;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Ljava/lang/String;Lo/ci;)V

    invoke-static {v6}, Lo/MetadataReader;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b(Ljava/lang/String;IILo/ci;)V
    .locals 7

    .line 314
    new-instance v6, Lo/KeyChainSnapshot;

    iget-object v1, p0, Lo/MetadataReader;->d:Lo/FontRequest;

    move-object v0, v6

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lo/KeyChainSnapshot;-><init>(Lo/FontRequest;Ljava/lang/String;IILo/ci;)V

    invoke-static {v6}, Lo/MetadataReader;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b(Ljava/lang/String;Lcom/netflix/mediaclient/browse/api/task/TaskMode;IILo/ci;)V
    .locals 9

    .line 460
    new-instance v8, Lo/KeymasterBlob;

    iget-object v1, p0, Lo/MetadataReader;->d:Lo/FontRequest;

    iget-object v2, p0, Lo/MetadataReader;->e:Lo/hY;

    move-object v0, v8

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lo/KeymasterBlob;-><init>(Lo/FontRequest;Lo/SearchIndexablesContract;Ljava/lang/String;Lcom/netflix/mediaclient/browse/api/task/TaskMode;IILo/ci;)V

    invoke-static {v8}, Lo/MetadataReader;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;IILo/ci;)V
    .locals 8

    .line 505
    new-instance v7, Lo/RequiredValidators;

    iget-object v1, p0, Lo/MetadataReader;->d:Lo/FontRequest;

    move-object v0, v7

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lo/RequiredValidators;-><init>(Lo/FontRequest;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;IILo/ci;)V

    invoke-static {v7}, Lo/MetadataReader;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;ILjava/lang/String;Ljava/lang/String;Lo/ci;)V
    .locals 14

    move-object v0, p0

    if-nez p4, :cond_0

    const-string v1, "NetflixFalkorTasksDispatcher"

    const-string v2, "addToQueue: No lolomoId was supplied, assuming Home Lolomo"

    .line 510
    invoke-static {v1, v2}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    iget-object v1, v0, Lo/MetadataReader;->d:Lo/FontRequest;

    invoke-virtual {v1}, Lo/FontRequest;->h()Ljava/lang/String;

    move-result-object v1

    move-object v7, v1

    goto :goto_0

    :cond_0
    move-object/from16 v7, p4

    .line 513
    :goto_0
    iget-object v1, v0, Lo/MetadataReader;->d:Lo/FontRequest;

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->c:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    invoke-virtual {v1, v2, v7}, Lo/FontRequest;->c(Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v1

    .line 514
    new-instance v13, Lo/UserDictionary;

    iget-object v3, v0, Lo/MetadataReader;->d:Lo/FontRequest;

    iget-object v4, v0, Lo/MetadataReader;->e:Lo/hY;

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v8, v2

    check-cast v8, Ljava/lang/String;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v9, v1

    check-cast v9, Ljava/lang/String;

    move-object v2, v13

    move-object v5, p1

    move-object/from16 v6, p2

    move/from16 v10, p3

    move-object/from16 v11, p5

    move-object/from16 v12, p6

    invoke-direct/range {v2 .. v12}, Lo/UserDictionary;-><init>(Lo/FontRequest;Lo/SearchIndexablesContract;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lo/ci;)V

    invoke-static {v13}, Lo/MetadataReader;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Ljava/lang/String;Lo/ci;)V
    .locals 8

    .line 426
    new-instance v7, Lo/FillEventHistory;

    iget-object v1, p0, Lo/MetadataReader;->d:Lo/FontRequest;

    move-object v0, v7

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lo/FillEventHistory;-><init>(Lo/FontRequest;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Ljava/lang/String;Lo/ci;)V

    invoke-static {v7}, Lo/MetadataReader;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b(Ljava/lang/String;Lo/ci;)V
    .locals 2

    .line 452
    new-instance v0, Lo/DecryptionFailedException;

    iget-object v1, p0, Lo/MetadataReader;->d:Lo/FontRequest;

    invoke-direct {v0, v1, p1, p2}, Lo/DecryptionFailedException;-><init>(Lo/FontRequest;Ljava/lang/String;Lo/ci;)V

    invoke-static {v0}, Lo/MetadataReader;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b(Ljava/lang/String;ZLo/ci;)V
    .locals 2

    .line 497
    new-instance v0, Lo/WrappedApplicationKey;

    iget-object v1, p0, Lo/MetadataReader;->d:Lo/FontRequest;

    invoke-direct {v0, v1, p1, p2, p3}, Lo/WrappedApplicationKey;-><init>(Lo/FontRequest;Ljava/lang/String;ZLo/ci;)V

    invoke-static {v0}, Lo/MetadataReader;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b(Ljava/util/List;Lo/ci;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lo/Av;",
            ">;",
            "Lo/ci;",
            ")V"
        }
    .end annotation

    .line 382
    invoke-static {}, Lo/hV;->b()Z

    move-result v0

    .line 383
    invoke-static {p1, p2}, Lo/hV;->a(Ljava/util/List;Lo/ci;)V

    if-eqz v0, :cond_0

    .line 385
    invoke-virtual {p0}, Lo/MetadataReader;->c()V

    :cond_0
    return-void
.end method

.method public varargs b(Lo/ci;[Ljava/lang/String;)V
    .locals 2

    .line 501
    new-instance v0, Lo/InternalSanitizer;

    iget-object v1, p0, Lo/MetadataReader;->d:Lo/FontRequest;

    invoke-direct {v0, v1, p1, p2}, Lo/InternalSanitizer;-><init>(Lo/FontRequest;Lo/ci;[Ljava/lang/String;)V

    invoke-static {v0}, Lo/MetadataReader;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public c()V
    .locals 10

    .line 390
    :cond_0
    :goto_0
    invoke-static {}, Lo/hV;->b()Z

    move-result v0

    if-nez v0, :cond_4

    .line 391
    invoke-static {}, Lo/hV;->a()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_4

    .line 393
    invoke-static {}, Lo/hV;->h()I

    .line 394
    invoke-static {}, Lo/hV;->e()Lo/Av;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 401
    invoke-static {v0}, Lo/hV;->a(Lo/Av;)Lo/ci;

    move-result-object v9

    .line 403
    invoke-interface {v0}, Lo/Av;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->MOVIE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-ne v1, v2, :cond_1

    .line 404
    invoke-interface {v0}, Lo/Av;->getId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    sget-object v7, Lcom/netflix/mediaclient/browse/api/task/TaskMode;->d:Lcom/netflix/mediaclient/browse/api/task/TaskMode;

    move-object v1, p0

    move-object v8, v9

    invoke-virtual/range {v1 .. v8}, Lo/MetadataReader;->e(Ljava/lang/String;Ljava/lang/String;ZZZLcom/netflix/mediaclient/browse/api/task/TaskMode;Lo/ci;)V

    goto :goto_0

    .line 405
    :cond_1
    invoke-interface {v0}, Lo/Av;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->SHOW:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-ne v1, v2, :cond_2

    .line 406
    invoke-interface {v0}, Lo/Av;->getId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    sget-object v8, Lcom/netflix/mediaclient/browse/api/task/TaskMode;->d:Lcom/netflix/mediaclient/browse/api/task/TaskMode;

    move-object v1, p0

    invoke-virtual/range {v1 .. v9}, Lo/MetadataReader;->d(Ljava/lang/String;Ljava/lang/String;ZZZZLcom/netflix/mediaclient/browse/api/task/TaskMode;Lo/ci;)V

    goto :goto_0

    .line 407
    :cond_2
    invoke-interface {v0}, Lo/Av;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->CHARACTERS:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-ne v1, v2, :cond_0

    .line 408
    invoke-interface {v0}, Lo/Av;->getId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, v9}, Lo/MetadataReader;->e(Ljava/lang/String;ZLo/ci;)V

    goto :goto_0

    .line 412
    :cond_3
    invoke-static {}, Lo/hV;->d()I

    goto :goto_0

    :cond_4
    return-void
.end method

.method public c(IIZLo/ci;)V
    .locals 7

    .line 493
    new-instance v6, Lo/DirectoryCertificateSource;

    iget-object v1, p0, Lo/MetadataReader;->d:Lo/FontRequest;

    move-object v0, v6

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lo/DirectoryCertificateSource;-><init>(Lo/FontRequest;IIZLo/ci;)V

    invoke-static {v6}, Lo/MetadataReader;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public c(Ljava/lang/String;IIZZLo/ci;)V
    .locals 9

    .line 253
    new-instance v8, Lo/KeymasterCertificateChain;

    iget-object v1, p0, Lo/MetadataReader;->d:Lo/FontRequest;

    move-object v0, v8

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lo/KeymasterCertificateChain;-><init>(Lo/FontRequest;Ljava/lang/String;IIZZLo/ci;)V

    invoke-static {v8}, Lo/MetadataReader;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public c(Ljava/lang/String;Lcom/netflix/mediaclient/browse/api/task/TaskMode;IIZLo/ci;)V
    .locals 9

    .line 480
    new-instance v8, Lo/NetworkSecurityTrustManager;

    iget-object v1, p0, Lo/MetadataReader;->d:Lo/FontRequest;

    move-object v0, v8

    move-object v2, p2

    move-object v3, p1

    move v4, p5

    move v5, p3

    move v6, p4

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lo/NetworkSecurityTrustManager;-><init>(Lo/FontRequest;Lcom/netflix/mediaclient/browse/api/task/TaskMode;Ljava/lang/String;ZIILo/ci;)V

    invoke-static {v8}, Lo/MetadataReader;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public c(Ljava/lang/String;Lcom/netflix/mediaclient/browse/api/task/TaskMode;ZLo/ci;)V
    .locals 7

    .line 464
    new-instance v6, Lo/SessionExpiredException;

    iget-object v1, p0, Lo/MetadataReader;->d:Lo/FontRequest;

    move-object v0, v6

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lo/SessionExpiredException;-><init>(Lo/FontRequest;Ljava/lang/String;Lcom/netflix/mediaclient/browse/api/task/TaskMode;ZLo/ci;)V

    invoke-static {v6}, Lo/MetadataReader;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public c(Ljava/lang/String;Lcom/netflix/model/leafs/advisory/ContentAction;)V
    .locals 2

    .line 539
    new-instance v0, Lo/UserData;

    iget-object v1, p0, Lo/MetadataReader;->d:Lo/FontRequest;

    invoke-direct {v0, v1, p1, p2}, Lo/UserData;-><init>(Lo/FontRequest;Ljava/lang/String;Lcom/netflix/model/leafs/advisory/ContentAction;)V

    invoke-static {v0}, Lo/MetadataReader;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;Lo/ci;)V
    .locals 2

    .line 430
    new-instance v0, Lo/FillRequest;

    iget-object v1, p0, Lo/MetadataReader;->d:Lo/FontRequest;

    invoke-direct {v0, v1, p1, p2, p3}, Lo/FillRequest;-><init>(Lo/FontRequest;Ljava/lang/String;Ljava/lang/String;Lo/ci;)V

    invoke-static {v0}, Lo/MetadataReader;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;ZLcom/netflix/mediaclient/browse/api/task/TaskMode;Lo/ci;)V
    .locals 9

    .line 440
    new-instance v8, Lo/KeymasterBooleanArgument;

    iget-object v1, p0, Lo/MetadataReader;->d:Lo/FontRequest;

    iget-object v2, p0, Lo/MetadataReader;->e:Lo/hY;

    move-object v0, v8

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lo/KeymasterBooleanArgument;-><init>(Lo/FontRequest;Lo/SearchIndexablesContract;Ljava/lang/String;Ljava/lang/String;ZLcom/netflix/mediaclient/browse/api/task/TaskMode;Lo/ci;)V

    invoke-static {v8}, Lo/MetadataReader;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public c(Ljava/lang/String;Lo/ci;)V
    .locals 7

    .line 422
    new-instance v6, Lo/KeyStoreCertificateSource;

    iget-object v1, p0, Lo/MetadataReader;->d:Lo/FontRequest;

    iget-object v2, p0, Lo/MetadataReader;->e:Lo/hY;

    move-object v0, v6

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lo/KeyStoreCertificateSource;-><init>(Lo/FontRequest;Lo/SearchIndexablesContract;Lo/MetadataReader;Ljava/lang/String;Lo/ci;)V

    invoke-static {v6}, Lo/MetadataReader;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public c(Ljava/util/List;Lo/ci;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lo/ci;",
            ")V"
        }
    .end annotation

    .line 280
    new-instance v0, Lo/ConfigNetworkSecurityPolicy;

    iget-object v1, p0, Lo/MetadataReader;->d:Lo/FontRequest;

    invoke-direct {v0, v1, p1, p2}, Lo/ConfigNetworkSecurityPolicy;-><init>(Lo/FontRequest;Ljava/util/List;Lo/ci;)V

    invoke-static {v0}, Lo/MetadataReader;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public d(IIIIIIZZZLo/ci;IIZLjava/lang/String;)V
    .locals 16

    move-object/from16 v0, p0

    .line 202
    iget-object v2, v0, Lo/MetadataReader;->d:Lo/FontRequest;

    move/from16 v1, p3

    iput v1, v2, Lo/FontRequest;->b:I

    move/from16 v5, p4

    .line 203
    iput v5, v2, Lo/FontRequest;->d:I

    .line 204
    new-instance v15, Lo/LuhnChecksumValidator;

    const/4 v3, 0x0

    const/4 v7, 0x2

    move-object v1, v15

    move/from16 v4, p2

    move/from16 v6, p6

    move/from16 v8, p7

    move/from16 v9, p9

    move-object/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    move/from16 v13, p13

    move-object/from16 v14, p14

    invoke-direct/range {v1 .. v14}, Lo/LuhnChecksumValidator;-><init>(Lo/FontRequest;Ljava/lang/String;IIIIZZLo/ci;IIZLjava/lang/String;)V

    invoke-static {v15}, Lo/MetadataReader;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public d(IILjava/lang/String;Lo/ci;Z)V
    .locals 8

    .line 276
    new-instance v7, Lo/NetworkSecurityConfig;

    iget-object v1, p0, Lo/MetadataReader;->d:Lo/FontRequest;

    move-object v0, v7

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lo/NetworkSecurityConfig;-><init>(Lo/FontRequest;IILjava/lang/String;Lo/ci;Z)V

    invoke-static {v7}, Lo/MetadataReader;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public d(IILjava/lang/String;ZLo/ci;)V
    .locals 8

    .line 261
    new-instance v7, Lo/FrameworkNetworkSecurityPolicy;

    iget-object v1, p0, Lo/MetadataReader;->d:Lo/FontRequest;

    move-object v0, v7

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lo/FrameworkNetworkSecurityPolicy;-><init>(Lo/FontRequest;IILjava/lang/String;ZLo/ci;)V

    invoke-static {v7}, Lo/MetadataReader;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public d(IZLo/ci;)V
    .locals 2

    .line 257
    new-instance v0, Lo/ApplicationConfig;

    iget-object v1, p0, Lo/MetadataReader;->d:Lo/FontRequest;

    invoke-direct {v0, v1, p1, p2, p3}, Lo/ApplicationConfig;-><init>(Lo/FontRequest;IZLo/ci;)V

    invoke-static {v0}, Lo/MetadataReader;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public d(Ljava/lang/String;IILo/ci;)V
    .locals 7

    .line 230
    new-instance v6, Lo/LockScreenRequiredException;

    iget-object v1, p0, Lo/MetadataReader;->d:Lo/FontRequest;

    move-object v0, v6

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lo/LockScreenRequiredException;-><init>(Lo/FontRequest;Ljava/lang/String;IILo/ci;)V

    invoke-static {v6}, Lo/MetadataReader;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public d(Ljava/lang/String;IIZLo/ci;)V
    .locals 8

    .line 484
    new-instance v7, Lo/ResourceCertificateSource;

    iget-object v1, p0, Lo/MetadataReader;->d:Lo/FontRequest;

    move-object v0, v7

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lo/ResourceCertificateSource;-><init>(Lo/FontRequest;Ljava/lang/String;IIZLo/ci;)V

    invoke-static {v7}, Lo/MetadataReader;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public d(Ljava/lang/String;Lcom/netflix/mediaclient/browse/api/task/TaskMode;Lo/ci;)V
    .locals 2

    .line 310
    new-instance v0, Lo/KeymasterDefs;

    iget-object v1, p0, Lo/MetadataReader;->d:Lo/FontRequest;

    invoke-direct {v0, v1, p1, p2, p3}, Lo/KeymasterDefs;-><init>(Lo/FontRequest;Ljava/lang/String;Lcom/netflix/mediaclient/browse/api/task/TaskMode;Lo/ci;)V

    invoke-static {v0}, Lo/MetadataReader;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 131
    invoke-static {p1}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "NetflixFalkorTasksDispatcher"

    const-string p2, "Can\'t refresh list - input listContext is null or empty"

    .line 132
    invoke-static {p1, p2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 138
    :cond_0
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->computation()Lio/reactivex/Scheduler;

    move-result-object v0

    new-instance v1, Lo/LiveFolders;

    invoke-direct {v1, p0, p1, p2, p3}, Lo/LiveFolders;-><init>(Lo/MetadataReader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Scheduler;->scheduleDirect(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;ZZZZLcom/netflix/mediaclient/browse/api/task/TaskMode;Lo/ci;)V
    .locals 14

    move-object v12, p0

    .line 360
    new-instance v13, Lo/RootTrustManager;

    iget-object v1, v12, Lo/MetadataReader;->d:Lo/FontRequest;

    iget-object v2, v12, Lo/MetadataReader;->e:Lo/hY;

    move-object v0, v13

    move-object v3, p0

    move-object v4, p1

    move-object/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    invoke-direct/range {v0 .. v11}, Lo/RootTrustManager;-><init>(Lo/FontRequest;Lo/SearchIndexablesContract;Lo/MetadataReader;Ljava/lang/String;Ljava/lang/String;ZZZZLcom/netflix/mediaclient/browse/api/task/TaskMode;Lo/ci;)V

    invoke-static {v13}, Lo/MetadataReader;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public d(Ljava/lang/String;Lo/ci;)V
    .locals 2

    .line 318
    new-instance v0, Lo/UserCertificateSource;

    iget-object v1, p0, Lo/MetadataReader;->d:Lo/FontRequest;

    invoke-direct {v0, v1, p1, p2}, Lo/UserCertificateSource;-><init>(Lo/FontRequest;Ljava/lang/String;Lo/ci;)V

    invoke-static {v0}, Lo/MetadataReader;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public d(Lo/iu;Lo/iw;ILcom/netflix/model/browse/BrowseDiskCacheCompactionTrigger;)V
    .locals 7

    .line 556
    new-instance v6, Lo/MetadataReader$5;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p4

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lo/MetadataReader$5;-><init>(Lo/MetadataReader;Lcom/netflix/model/browse/BrowseDiskCacheCompactionTrigger;Lo/iu;Lo/iw;I)V

    invoke-static {v6}, Lo/MetadataReader;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public e(IIZLjava/lang/String;ZLo/ci;)V
    .locals 11

    move-object v0, p0

    .line 266
    new-instance v10, Lo/KeystoreArguments;

    iget-object v2, v0, Lo/MetadataReader;->d:Lo/FontRequest;

    iget-object v3, v0, Lo/MetadataReader;->e:Lo/hY;

    if-eqz p5, :cond_0

    sget-object v1, Lcom/netflix/mediaclient/browse/api/task/TaskMode;->b:Lcom/netflix/mediaclient/browse/api/task/TaskMode;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/netflix/mediaclient/browse/api/task/TaskMode;->d:Lcom/netflix/mediaclient/browse/api/task/TaskMode;

    :goto_0
    move-object v8, v1

    move-object v1, v10

    move v4, p1

    move v5, p2

    move v6, p3

    move-object v7, p4

    move-object/from16 v9, p6

    invoke-direct/range {v1 .. v9}, Lo/KeystoreArguments;-><init>(Lo/FontRequest;Lo/SearchIndexablesContract;IIZLjava/lang/String;Lcom/netflix/mediaclient/browse/api/task/TaskMode;Lo/ci;)V

    invoke-static {v10}, Lo/MetadataReader;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public e(Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;IILo/ci;)V
    .locals 7

    .line 476
    new-instance v6, Lo/PinSet;

    iget-object v1, p0, Lo/MetadataReader;->d:Lo/FontRequest;

    move-object v0, v6

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lo/PinSet;-><init>(Lo/FontRequest;Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;IILo/ci;)V

    invoke-static {v6}, Lo/MetadataReader;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public e(Ljava/lang/String;Lcom/netflix/mediaclient/browse/api/task/TaskMode;IILo/ci;)V
    .locals 8

    .line 468
    new-instance v7, Lo/NetworkSecurityConfigProvider;

    iget-object v1, p0, Lo/MetadataReader;->d:Lo/FontRequest;

    move-object v0, v7

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lo/NetworkSecurityConfigProvider;-><init>(Lo/FontRequest;Ljava/lang/String;Lcom/netflix/mediaclient/browse/api/task/TaskMode;IILo/ci;)V

    invoke-static {v7}, Lo/MetadataReader;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public e(Ljava/lang/String;Lcom/netflix/mediaclient/browse/api/task/TaskMode;Lo/ci;)V
    .locals 2

    .line 306
    new-instance v0, Lo/OperationResult;

    iget-object v1, p0, Lo/MetadataReader;->d:Lo/FontRequest;

    invoke-direct {v0, v1, p1, p2, p3}, Lo/OperationResult;-><init>(Lo/FontRequest;Ljava/lang/String;Lcom/netflix/mediaclient/browse/api/task/TaskMode;Lo/ci;)V

    invoke-static {v0}, Lo/MetadataReader;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public e(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/PlayLocationType;Lo/ci;)V
    .locals 7

    .line 418
    new-instance v6, Lo/CertificateSource;

    iget-object v1, p0, Lo/MetadataReader;->d:Lo/FontRequest;

    move-object v0, v6

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lo/CertificateSource;-><init>(Lo/FontRequest;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/PlayLocationType;Lo/ci;)V

    invoke-static {v6}, Lo/MetadataReader;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;ZZZLcom/netflix/mediaclient/browse/api/task/TaskMode;Lo/ci;)V
    .locals 13

    move-object v11, p0

    .line 334
    new-instance v12, Lo/TrustedRootCertificates;

    iget-object v1, v11, Lo/MetadataReader;->d:Lo/FontRequest;

    iget-object v2, v11, Lo/MetadataReader;->e:Lo/hY;

    move-object v0, v12

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    invoke-direct/range {v0 .. v10}, Lo/TrustedRootCertificates;-><init>(Lo/FontRequest;Lo/SearchIndexablesContract;Lo/MetadataReader;Ljava/lang/String;Ljava/lang/String;ZZZLcom/netflix/mediaclient/browse/api/task/TaskMode;Lo/ci;)V

    invoke-static {v12}, Lo/MetadataReader;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public e(Ljava/lang/String;Lo/ci;)V
    .locals 2

    .line 543
    invoke-static {p1}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_1

    .line 545
    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    sget-object v0, Lo/LegacyErrorStrings;->aa:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-interface {p2, p1, v0}, Lo/ci;->o(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0

    .line 548
    :cond_0
    new-instance v0, Lo/ConfirmationNotAvailableException;

    iget-object v1, p0, Lo/MetadataReader;->d:Lo/FontRequest;

    invoke-direct {v0, v1, p1, p2}, Lo/ConfirmationNotAvailableException;-><init>(Lo/FontRequest;Ljava/lang/String;Lo/ci;)V

    invoke-static {v0}, Lo/MetadataReader;->d(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public e(Ljava/lang/String;ZLo/ci;)V
    .locals 8

    .line 378
    new-instance v7, Lo/DateValueSanitizer;

    iget-object v1, p0, Lo/MetadataReader;->d:Lo/FontRequest;

    iget-object v2, p0, Lo/MetadataReader;->e:Lo/hY;

    move-object v0, v7

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lo/DateValueSanitizer;-><init>(Lo/FontRequest;Lo/SearchIndexablesContract;Lo/MetadataReader;Ljava/lang/String;ZLo/ci;)V

    invoke-static {v7}, Lo/MetadataReader;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public e(Lo/AR;Lcom/netflix/mediaclient/servicemgr/BillboardInteractionType;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/AR;",
            "Lcom/netflix/mediaclient/servicemgr/BillboardInteractionType;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 535
    new-instance v0, Lo/FillCallback;

    iget-object v1, p0, Lo/MetadataReader;->d:Lo/FontRequest;

    invoke-direct {v0, v1, p1, p2, p3}, Lo/FillCallback;-><init>(Lo/FontRequest;Lo/AR;Lcom/netflix/mediaclient/servicemgr/BillboardInteractionType;Ljava/util/Map;)V

    invoke-static {v0}, Lo/MetadataReader;->d(Ljava/lang/Runnable;)V

    return-void
.end method
