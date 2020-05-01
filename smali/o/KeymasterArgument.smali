.class public final Lo/KeymasterArgument;
.super Lo/FillContext;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/KeymasterArgument$Application;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/FillContext<",
        "Lkotlin/Pair<",
        "+",
        "Ljava/util/List<",
        "Lo/AS;",
        ">;+",
        "Lcom/netflix/mediaclient/android/app/Status;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final d:Lo/KeymasterArgument$Application;


# instance fields
.field private final a:I

.field private final b:Ljava/lang/String;

.field private final c:Lcom/netflix/mediaclient/browse/api/task/TaskMode;

.field private final e:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/KeymasterArgument$Application;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/KeymasterArgument$Application;-><init>(Lo/amc;)V

    sput-object v0, Lo/KeymasterArgument;->d:Lo/KeymasterArgument$Application;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/netflix/mediaclient/browse/api/task/TaskMode;II)V
    .locals 3

    const-string v0, "id"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "taskMode"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const-string v1, "FetchEpisodes_NfRepo"

    const/4 v2, 0x2

    .line 27
    invoke-direct {p0, v1, v0, v2, v0}, Lo/FillContext;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/browse/api/task/TaskMode;ILo/amc;)V

    iput-object p1, p0, Lo/KeymasterArgument;->b:Ljava/lang/String;

    iput-object p2, p0, Lo/KeymasterArgument;->c:Lcom/netflix/mediaclient/browse/api/task/TaskMode;

    iput p3, p0, Lo/KeymasterArgument;->a:I

    iput p4, p0, Lo/KeymasterArgument;->e:I

    return-void
.end method


# virtual methods
.method public synthetic a(Lo/TableLayout;Lo/TextClock;)Ljava/lang/Object;
    .locals 0

    .line 22
    invoke-virtual {p0, p1, p2}, Lo/KeymasterArgument;->e(Lo/TableLayout;Lo/TextClock;)Lkotlin/Pair;

    move-result-object p1

    return-object p1
.end method

.method public a()Z
    .locals 2

    .line 48
    iget-object v0, p0, Lo/KeymasterArgument;->c:Lcom/netflix/mediaclient/browse/api/task/TaskMode;

    sget-object v1, Lcom/netflix/mediaclient/browse/api/task/TaskMode;->b:Lcom/netflix/mediaclient/browse/api/task/TaskMode;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public b(Ljava/util/List;)V
    .locals 3
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

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "videos"

    aput-object v2, v0, v1

    .line 39
    iget-object v1, p0, Lo/KeymasterArgument;->b:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    const-string v2, "episodes"

    aput-object v2, v0, v1

    .line 41
    iget v1, p0, Lo/KeymasterArgument;->a:I

    iget v2, p0, Lo/KeymasterArgument;->e:I

    invoke-static {v1, v2}, Lo/SearchIndexableResource;->e(II)Ljava/util/Map;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 42
    sget-object v1, Lo/SEService;->b:Ljava/util/List;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 37
    invoke-static {v0}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object v0

    const-string v1, "PQLHelper.create(\n      \u2026_LEAF_TYPES\n            )"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public c()Z
    .locals 2

    .line 52
    iget-object v0, p0, Lo/KeymasterArgument;->c:Lcom/netflix/mediaclient/browse/api/task/TaskMode;

    sget-object v1, Lcom/netflix/mediaclient/browse/api/task/TaskMode;->a:Lcom/netflix/mediaclient/browse/api/task/TaskMode;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public d(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lo/TextInputTimePickerView;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "queries"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public e(Lo/TableLayout;Lo/TextClock;)Lkotlin/Pair;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/TableLayout<",
            "*>;",
            "Lo/TextClock;",
            ")",
            "Lkotlin/Pair<",
            "Ljava/util/List<",
            "Lo/AS;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ">;"
        }
    .end annotation

    const-string v0, "modelProxy"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "result"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    iget-object p2, p2, Lo/TextClock;->d:Ljava/util/Collection;

    invoke-interface {p1, p2}, Lo/TableLayout;->c(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 61
    const-class p2, Lcom/netflix/mediaclient/media/BookmarkStore;

    invoke-static {p2}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/netflix/mediaclient/media/BookmarkStore;

    .line 62
    invoke-static {}, Lo/CarrierIdentifier;->getInstance()Lo/CarrierIdentifier;

    move-result-object v0

    const-string v1, "BaseNetflixApp.getInstance()"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lo/CarrierIdentifier;->n()Lo/CameraPrewarmService;

    move-result-object v0

    const-string v1, "BaseNetflixApp.getInstance().nfAgentProvider"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/AS;

    .line 64
    instance-of v3, v2, Lo/agp;

    if-eqz v3, :cond_0

    .line 66
    check-cast v2, Lo/agp;

    invoke-virtual {v2}, Lo/agp;->bb()Lo/AK;

    move-result-object v3

    const-string v4, "details.playable"

    invoke-static {v3, v4}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3}, Lo/AK;->a()Ljava/lang/String;

    move-result-object v3

    .line 67
    invoke-virtual {v2}, Lo/agp;->bA()Lcom/netflix/model/leafs/Bookmark;

    move-result-object v2

    .line 68
    invoke-virtual {v0}, Lo/CameraPrewarmService;->c()Lcom/netflix/mediaclient/service/user/UserAgent;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-interface {v4}, Lcom/netflix/mediaclient/service/user/UserAgent;->g()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    .line 65
    :goto_1
    invoke-interface {p2, v3, v2, v4}, Lcom/netflix/mediaclient/media/BookmarkStore;->updateBookmarkIfExists(Ljava/lang/String;Lcom/netflix/model/leafs/Bookmark;Ljava/lang/String;)V

    goto :goto_0

    .line 73
    :cond_2
    new-instance p2, Lkotlin/Pair;

    sget-object v0, Lo/LegacyErrorStrings;->b:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-direct {p2, p1, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p2
.end method
