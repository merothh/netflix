.class public final Lo/KeymasterArguments;
.super Lo/FillContext;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/KeymasterArguments$StateListAnimator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/FillContext<",
        "Lkotlin/Pair<",
        "+",
        "Lo/AS;",
        "+",
        "Lcom/netflix/mediaclient/android/app/Status;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final a:Lo/KeymasterArguments$StateListAnimator;


# instance fields
.field private final b:Z

.field private final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/KeymasterArguments$StateListAnimator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/KeymasterArguments$StateListAnimator;-><init>(Lo/amc;)V

    sput-object v0, Lo/KeymasterArguments;->a:Lo/KeymasterArguments$StateListAnimator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 3

    const-string v0, "episodeId"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const-string v1, "FetchEpisodeDetails_NfRepo"

    const/4 v2, 0x2

    .line 21
    invoke-direct {p0, v1, v0, v2, v0}, Lo/FillContext;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/browse/api/task/TaskMode;ILo/amc;)V

    iput-object p1, p0, Lo/KeymasterArguments;->e:Ljava/lang/String;

    iput-boolean p2, p0, Lo/KeymasterArguments;->b:Z

    return-void
.end method


# virtual methods
.method public synthetic a(Lo/TableLayout;Lo/TextClock;)Ljava/lang/Object;
    .locals 0

    .line 18
    invoke-virtual {p0, p1, p2}, Lo/KeymasterArguments;->d(Lo/TableLayout;Lo/TextClock;)Lkotlin/Pair;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/TextInputTimePickerView;",
            ">;)V"
        }
    .end annotation

    const-string v0, "queries"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    const-string v1, "detail"

    const-string v2, "summary"

    const-string v3, "bookmark"

    const-string v4, "offlineAvailable"

    const-string v5, "rating"

    .line 29
    filled-new-array {v1, v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lo/akz;->e([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 31
    sget-object v1, Lo/eI;->d:Lo/eI$TaskDescription;

    invoke-virtual {v1}, Lo/eI$TaskDescription;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "timeCodes"

    .line 32
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "videos"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 38
    iget-object v4, p0, Lo/KeymasterArguments;->e:Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v4, v1, v5

    const/4 v4, 0x2

    const-string v6, "watchNext"

    aput-object v6, v1, v4

    const/4 v6, 0x3

    aput-object v0, v1, v6

    .line 36
    invoke-static {v1}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object v1

    const-string v7, "PQLHelper.create(\n      \u2026          leafs\n        )"

    invoke-static {v1, v7}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    iget-boolean v1, p0, Lo/KeymasterArguments;->b:Z

    if-eqz v1, :cond_1

    const-string v1, "trickplayBifUrl"

    .line 44
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    new-array v1, v6, [Ljava/lang/Object;

    aput-object v2, v1, v3

    .line 46
    iget-object v2, p0, Lo/KeymasterArguments;->e:Ljava/lang/String;

    aput-object v2, v1, v5

    aput-object v0, v1, v4

    invoke-static {v1}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object v0

    const-string v1, "PQLHelper.create(FalkorB\u2026VIDEOS, episodeId, leafs)"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public d(Lo/TableLayout;Lo/TextClock;)Lkotlin/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/TableLayout<",
            "*>;",
            "Lo/TextClock;",
            ")",
            "Lkotlin/Pair<",
            "Lo/AS;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ">;"
        }
    .end annotation

    const-string v0, "modelProxy"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "result"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v1, "videos"

    aput-object v1, p2, v0

    .line 50
    iget-object v0, p0, Lo/KeymasterArguments;->e:Ljava/lang/String;

    const/4 v1, 0x1

    aput-object v0, p2, v1

    invoke-static {p2}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object p2

    invoke-interface {p1, p2}, Lo/TableLayout;->b(Lo/TextInputTimePickerView;)Lo/agi;

    move-result-object p1

    instance-of p2, p1, Lo/AS;

    const/4 v0, 0x0

    if-nez p2, :cond_0

    move-object p1, v0

    :cond_0
    check-cast p1, Lo/AS;

    .line 52
    instance-of p2, p1, Lo/agp;

    if-eqz p2, :cond_2

    .line 53
    const-class p2, Lcom/netflix/mediaclient/media/BookmarkStore;

    invoke-static {p2}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/netflix/mediaclient/media/BookmarkStore;

    .line 54
    invoke-static {}, Lo/CarrierIdentifier;->getInstance()Lo/CarrierIdentifier;

    move-result-object v1

    const-string v2, "BaseNetflixApp.getInstance()"

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lo/CarrierIdentifier;->n()Lo/CameraPrewarmService;

    move-result-object v1

    const-string v2, "BaseNetflixApp.getInstance().nfAgentProvider"

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    move-object v2, p1

    check-cast v2, Lo/agp;

    invoke-virtual {v2}, Lo/agp;->bA()Lcom/netflix/model/leafs/Bookmark;

    move-result-object v2

    .line 57
    iget-object v3, p0, Lo/KeymasterArguments;->e:Ljava/lang/String;

    invoke-virtual {v1}, Lo/CameraPrewarmService;->c()Lcom/netflix/mediaclient/service/user/UserAgent;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/netflix/mediaclient/service/user/UserAgent;->g()Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-interface {p2, v3, v2, v0}, Lcom/netflix/mediaclient/media/BookmarkStore;->updateBookmarkIfExists(Ljava/lang/String;Lcom/netflix/model/leafs/Bookmark;Ljava/lang/String;)V

    .line 60
    :cond_2
    new-instance p2, Lkotlin/Pair;

    sget-object v0, Lo/LegacyErrorStrings;->b:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-direct {p2, p1, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p2
.end method
