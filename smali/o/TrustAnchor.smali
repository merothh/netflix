.class public final Lo/TrustAnchor;
.super Lo/SyncConstValue;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/TrustAnchor$Application;
    }
.end annotation


# static fields
.field public static final c:Lo/TrustAnchor$Application;


# instance fields
.field private final a:Lcom/netflix/mediaclient/browse/api/task/TaskMode;

.field private final b:Lo/TextInputTimePickerView;

.field private d:Lo/TextInputTimePickerView;

.field private final e:Lo/TextInputTimePickerView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/TrustAnchor$Application;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/TrustAnchor$Application;-><init>(Lo/amc;)V

    sput-object v0, Lo/TrustAnchor;->c:Lo/TrustAnchor$Application;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lo/TrustAnchor;-><init>(Lcom/netflix/mediaclient/browse/api/task/TaskMode;ILo/amc;)V

    return-void
.end method

.method public constructor <init>(Lcom/netflix/mediaclient/browse/api/task/TaskMode;)V
    .locals 9

    const-string v0, "taskMode"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "FetchSearchPrequeryTask"

    .line 23
    invoke-direct {p0, v0}, Lo/SyncConstValue;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lo/TrustAnchor;->a:Lcom/netflix/mediaclient/browse/api/task/TaskMode;

    const/4 p1, 0x2

    new-array v0, p1, [Ljava/lang/Object;

    const-string v1, "searchPrequery"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v3, "summary"

    const/4 v4, 0x1

    aput-object v3, v0, v4

    .line 30
    invoke-static {v0}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object v0

    const-string v5, "PQLHelper.create(\n      \u2026,\n        \"summary\"\n    )"

    invoke-static {v0, v5}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lo/TrustAnchor;->e:Lo/TextInputTimePickerView;

    const/4 v0, 0x3

    new-array v6, v0, [Ljava/lang/Object;

    aput-object v1, v6, v2

    const/16 v7, 0x32

    .line 37
    invoke-static {v7}, Lo/SearchIndexableResource;->d(I)Ljava/util/Map;

    move-result-object v8

    aput-object v8, v6, v4

    aput-object v3, v6, p1

    .line 35
    invoke-static {v6}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object v3

    invoke-static {v3, v5}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v3, p0, Lo/TrustAnchor;->b:Lo/TextInputTimePickerView;

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v1, v0, v2

    .line 43
    invoke-static {v7}, Lo/SearchIndexableResource;->d(I)Ljava/util/Map;

    move-result-object v1

    aput-object v1, v0, v4

    const-string v1, "preQueryItem"

    aput-object v1, v0, p1

    .line 41
    invoke-static {v0}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object p1

    const-string v0, "PQLHelper.create(\n      \u2026     \"preQueryItem\"\n    )"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lo/TrustAnchor;->d:Lo/TextInputTimePickerView;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/netflix/mediaclient/browse/api/task/TaskMode;ILo/amc;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 22
    sget-object p1, Lcom/netflix/mediaclient/browse/api/task/TaskMode;->d:Lcom/netflix/mediaclient/browse/api/task/TaskMode;

    :cond_0
    invoke-direct {p0, p1}, Lo/TrustAnchor;-><init>(Lcom/netflix/mediaclient/browse/api/task/TaskMode;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 4
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

    .line 48
    iget-object v0, p0, Lo/TrustAnchor;->e:Lo/TextInputTimePickerView;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    iget-object v0, p0, Lo/TrustAnchor;->b:Lo/TextInputTimePickerView;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    sget-object v0, Lo/SEService;->e:Lo/TextInputTimePickerView;

    iget-object v1, p0, Lo/TrustAnchor;->d:Lo/TextInputTimePickerView;

    invoke-interface {v0, v1}, Lo/TextInputTimePickerView;->c(Lo/TextInputTimePickerView;)Lo/TextInputTimePickerView;

    move-result-object v0

    const-string v1, "PRE_QUERY_SEARCH_CURR_EP\u2026nd(preQueryVideoItemPath)"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    iget-object v0, p0, Lo/TrustAnchor;->d:Lo/TextInputTimePickerView;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "summary"

    aput-object v3, v1, v2

    .line 54
    invoke-static {v1}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object v1

    .line 53
    invoke-interface {v0, v1}, Lo/TextInputTimePickerView;->d(Lo/TextInputTimePickerView;)Lo/TextInputTimePickerView;

    move-result-object v0

    const-string v1, "preQueryVideoItemPath.ap\u2026\"\n            )\n        )"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lo/TrustAnchor;->d:Lo/TextInputTimePickerView;

    .line 58
    iget-object v0, p0, Lo/TrustAnchor;->d:Lo/TextInputTimePickerView;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lo/ConfirmationAlreadyPresentingException;Lo/ci;Lo/TextClock;)V
    .locals 5

    const-string v0, "cmpTask"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_6

    .line 67
    iget-object p1, p1, Lo/ConfirmationAlreadyPresentingException;->a:Lo/FontRequest;

    const-string v0, "cmpTask.modelProxy"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lo/TrustAnchor;->e:Lo/TextInputTimePickerView;

    invoke-virtual {p1, v0}, Lo/FontRequest;->b(Lo/TextInputTimePickerView;)Lo/agi;

    move-result-object v0

    instance-of v1, v0, Lcom/netflix/model/leafs/SearchTrackableListSummary;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    check-cast v0, Lcom/netflix/model/leafs/SearchTrackableListSummary;

    .line 69
    iget-object v1, p0, Lo/TrustAnchor;->b:Lo/TextInputTimePickerView;

    invoke-virtual {p1, v1}, Lo/FontRequest;->e(Lo/TextInputTimePickerView;)Ljava/util/List;

    move-result-object v1

    const-string v2, "modelProxy.getItemsAsLis\u2026ityImpl>(itemSummaryPath)"

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Iterable;

    .line 95
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/Collection;

    .line 102
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Lcom/netflix/model/leafs/SearchCollectionEntityImpl;

    if-eqz v4, :cond_1

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 103
    :cond_2
    check-cast v2, Ljava/util/List;

    .line 72
    new-instance v1, Lcom/netflix/model/leafs/SearchResults$Builder;

    invoke-direct {v1}, Lcom/netflix/model/leafs/SearchResults$Builder;-><init>()V

    .line 73
    check-cast v0, Lo/Bz;

    invoke-virtual {v1, v0}, Lcom/netflix/model/leafs/SearchResults$Builder;->setSuggestionsListSummary(Lo/Bz;)V

    .line 74
    check-cast v2, Ljava/util/Collection;

    invoke-virtual {v1, v2}, Lcom/netflix/model/leafs/SearchResults$Builder;->addVideoEntities(Ljava/util/Collection;)V

    .line 75
    iget-object v0, p0, Lo/TrustAnchor;->d:Lo/TextInputTimePickerView;

    invoke-virtual {p1, v0}, Lo/FontRequest;->e(Lo/TextInputTimePickerView;)Ljava/util/List;

    move-result-object p1

    const-string v0, "modelProxy.getItemsAsLis\u2026o>(preQueryVideoItemPath)"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Iterable;

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/Collection;

    .line 111
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lo/Bx;

    if-eqz v3, :cond_3

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 112
    :cond_4
    check-cast v0, Ljava/util/List;

    .line 77
    check-cast v0, Ljava/util/Collection;

    invoke-virtual {v1, v0}, Lcom/netflix/model/leafs/SearchResults$Builder;->addVideos(Ljava/util/Collection;)V

    .line 78
    invoke-virtual {v1}, Lcom/netflix/model/leafs/SearchResults$Builder;->getResults()Lcom/netflix/model/leafs/SearchResults;

    move-result-object p1

    check-cast p1, Lo/Bs;

    sget-object v0, Lo/LegacyErrorStrings;->b:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    check-cast v0, Lcom/netflix/mediaclient/android/app/Status;

    const/4 v1, 0x1

    if-eqz p3, :cond_5

    invoke-virtual {p3}, Lo/TextClock;->a()Z

    move-result p3

    goto :goto_2

    :cond_5
    const/4 p3, 0x1

    :goto_2
    xor-int/2addr p3, v1

    invoke-interface {p2, p1, v0, p3}, Lo/ci;->a(Lo/Bs;Lcom/netflix/mediaclient/android/app/Status;Z)V

    :cond_6
    return-void
.end method

.method public a()Z
    .locals 2

    .line 87
    iget-object v0, p0, Lo/TrustAnchor;->a:Lcom/netflix/mediaclient/browse/api/task/TaskMode;

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

    .line 91
    iget-object v0, p0, Lo/TrustAnchor;->a:Lcom/netflix/mediaclient/browse/api/task/TaskMode;

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
    .locals 2

    const-string v0, "res"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 83
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
