.class public final Lo/ManifestConfigSource;
.super Lo/SyncConstValue;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ManifestConfigSource$ActionBar;
    }
.end annotation


# static fields
.field public static final c:Lo/ManifestConfigSource$ActionBar;


# instance fields
.field private final b:I

.field private final e:Lcom/netflix/mediaclient/browse/api/task/TaskMode;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/ManifestConfigSource$ActionBar;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/ManifestConfigSource$ActionBar;-><init>(Lo/amc;)V

    sput-object v0, Lo/ManifestConfigSource;->c:Lo/ManifestConfigSource$ActionBar;

    return-void
.end method

.method public constructor <init>(Lcom/netflix/mediaclient/browse/api/task/TaskMode;I)V
    .locals 1

    const-string v0, "taskMode"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "FetchPreQuerySearchV3Task"

    .line 26
    invoke-direct {p0, v0}, Lo/SyncConstValue;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lo/ManifestConfigSource;->e:Lcom/netflix/mediaclient/browse/api/task/TaskMode;

    iput p2, p0, Lo/ManifestConfigSource;->b:I

    return-void
.end method

.method private final b(I)Lo/TextInputTimePickerView;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "preQuerySearchV3"

    aput-object v2, v0, v1

    .line 31
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/16 p1, 0x31

    .line 32
    invoke-static {p1}, Lo/SearchIndexableResource;->d(I)Ljava/util/Map;

    move-result-object p1

    const/4 v1, 0x2

    aput-object p1, v0, v1

    .line 29
    invoke-static {v0}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object p1

    const-string v0, "PQLHelper.create(\n      \u2026CH_RESULTS - 1)\n        )"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final c(I)Lo/TextInputTimePickerView;
    .locals 1

    .line 38
    invoke-direct {p0, p1}, Lo/ManifestConfigSource;->b(I)Lo/TextInputTimePickerView;

    move-result-object p1

    const-string v0, "summary"

    invoke-interface {p1, v0}, Lo/TextInputTimePickerView;->b(Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object p1

    const-string v0, "createPQSV3PerSectionPat\u2026nIndex).append(\"summary\")"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final d(I)Lo/TextInputTimePickerView;
    .locals 1

    .line 43
    invoke-direct {p0, p1}, Lo/ManifestConfigSource;->b(I)Lo/TextInputTimePickerView;

    move-result-object p1

    const-string v0, "preQueryItem"

    invoke-interface {p1, v0}, Lo/TextInputTimePickerView;->b(Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object p1

    const-string v0, "summary"

    invoke-interface {p1, v0}, Lo/TextInputTimePickerView;->b(Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object p1

    const-string v0, "createPQSV3PerSectionPat\u2026yItem\").append(\"summary\")"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
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

    .line 47
    iget v0, p0, Lo/ManifestConfigSource;->b:I

    invoke-direct {p0, v0}, Lo/ManifestConfigSource;->c(I)Lo/TextInputTimePickerView;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    iget v0, p0, Lo/ManifestConfigSource;->b:I

    invoke-direct {p0, v0}, Lo/ManifestConfigSource;->d(I)Lo/TextInputTimePickerView;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lo/ConfirmationAlreadyPresentingException;Lo/ci;Lo/TextClock;)V
    .locals 5

    const-string v0, "cmpTask"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callbackOnMain"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    iget-object p1, p1, Lo/ConfirmationAlreadyPresentingException;->a:Lo/FontRequest;

    const-string v0, "cmpTask.modelProxy"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    new-instance v0, Lcom/netflix/model/leafs/SearchResults$Builder;

    invoke-direct {v0}, Lcom/netflix/model/leafs/SearchResults$Builder;-><init>()V

    .line 58
    iget v1, p0, Lo/ManifestConfigSource;->b:I

    invoke-direct {p0, v1}, Lo/ManifestConfigSource;->c(I)Lo/TextInputTimePickerView;

    move-result-object v1

    invoke-virtual {p1, v1}, Lo/FontRequest;->e(Lo/TextInputTimePickerView;)Ljava/util/List;

    move-result-object v1

    const-string v2, "modelProxy.getItemsAsLis\u2026ummaryPath(sectionIndex))"

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Iterable;

    .line 79
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/Collection;

    .line 86
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Lcom/netflix/model/leafs/SearchCollectionEntityImpl;

    if-eqz v4, :cond_0

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 87
    :cond_1
    check-cast v2, Ljava/util/List;

    .line 60
    check-cast v2, Ljava/util/Collection;

    invoke-virtual {v0, v2}, Lcom/netflix/model/leafs/SearchResults$Builder;->addVideoEntities(Ljava/util/Collection;)V

    .line 62
    iget v1, p0, Lo/ManifestConfigSource;->b:I

    invoke-direct {p0, v1}, Lo/ManifestConfigSource;->d(I)Lo/TextInputTimePickerView;

    move-result-object v1

    invoke-virtual {p1, v1}, Lo/FontRequest;->e(Lo/TextInputTimePickerView;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_4

    check-cast p1, Ljava/lang/Iterable;

    .line 88
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/Collection;

    .line 95
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lo/agp;

    if-eqz v3, :cond_2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 96
    :cond_3
    check-cast v1, Ljava/util/List;

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    .line 63
    :goto_2
    check-cast v1, Ljava/util/Collection;

    invoke-virtual {v0, v1}, Lcom/netflix/model/leafs/SearchResults$Builder;->addVideos(Ljava/util/Collection;)V

    .line 64
    iget p1, p0, Lo/ManifestConfigSource;->b:I

    invoke-virtual {v0, p1}, Lcom/netflix/model/leafs/SearchResults$Builder;->setSectionIndex(I)V

    .line 65
    invoke-virtual {v0}, Lcom/netflix/model/leafs/SearchResults$Builder;->getResults()Lcom/netflix/model/leafs/SearchResults;

    move-result-object p1

    check-cast p1, Lo/Bs;

    sget-object v0, Lo/LegacyErrorStrings;->b:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    check-cast v0, Lcom/netflix/mediaclient/android/app/Status;

    const/4 v1, 0x1

    if-eqz p3, :cond_5

    invoke-virtual {p3}, Lo/TextClock;->a()Z

    move-result p3

    goto :goto_3

    :cond_5
    const/4 p3, 0x1

    :goto_3
    xor-int/2addr p3, v1

    invoke-interface {p2, p1, v0, p3}, Lo/ci;->a(Lo/Bs;Lcom/netflix/mediaclient/android/app/Status;Z)V

    return-void
.end method

.method public e(Lo/ci;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 69
    new-instance v0, Lcom/netflix/model/leafs/SearchResults$Builder;

    invoke-direct {v0}, Lcom/netflix/model/leafs/SearchResults$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/netflix/model/leafs/SearchResults$Builder;->getResults()Lcom/netflix/model/leafs/SearchResults;

    move-result-object v0

    check-cast v0, Lo/Bs;

    const/4 v1, 0x0

    invoke-interface {p1, v0, p2, v1}, Lo/ci;->a(Lo/Bs;Lcom/netflix/mediaclient/android/app/Status;Z)V

    :cond_0
    return-void
.end method
