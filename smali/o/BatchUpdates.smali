.class public final Lo/BatchUpdates;
.super Lo/SyncConstValue;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/BatchUpdates$Application;
    }
.end annotation


# static fields
.field public static final c:Lo/BatchUpdates$Application;


# instance fields
.field private final a:Ljava/lang/Long;

.field private final b:Ljava/lang/Integer;

.field private final d:Ljava/lang/String;

.field private final e:Lo/TextInputTimePickerView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/BatchUpdates$Application;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/BatchUpdates$Application;-><init>(Lo/amc;)V

    sput-object v0, Lo/BatchUpdates;->c:Lo/BatchUpdates$Application;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Long;)V
    .locals 1

    const-string v0, "ForceBookmarkRefreshTask"

    .line 23
    invoke-direct {p0, v0}, Lo/SyncConstValue;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lo/BatchUpdates;->d:Ljava/lang/String;

    iput-object p2, p0, Lo/BatchUpdates;->b:Ljava/lang/Integer;

    iput-object p3, p0, Lo/BatchUpdates;->a:Ljava/lang/Long;

    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string p3, "videos"

    aput-object p3, p1, p2

    .line 31
    iget-object p2, p0, Lo/BatchUpdates;->d:Ljava/lang/String;

    const/4 p3, 0x1

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string p3, "bookmark"

    aput-object p3, p1, p2

    invoke-static {p1}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object p1

    const-string p2, "PQLHelper.create(FalkorB\u2026EOS, videoId, \"bookmark\")"

    invoke-static {p1, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lo/BatchUpdates;->e:Lo/TextInputTimePickerView;

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

    .line 34
    iget-object v0, p0, Lo/BatchUpdates;->e:Lo/TextInputTimePickerView;

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

    .line 55
    iget-object p3, p1, Lo/ConfirmationAlreadyPresentingException;->a:Lo/FontRequest;

    iget-object v0, p0, Lo/BatchUpdates;->e:Lo/TextInputTimePickerView;

    invoke-virtual {p3, v0}, Lo/FontRequest;->b(Lo/TextInputTimePickerView;)Lo/agi;

    move-result-object p3

    if-eqz p3, :cond_0

    check-cast p3, Lo/agp;

    .line 56
    iget-object v0, p0, Lo/BatchUpdates;->d:Ljava/lang/String;

    invoke-virtual {p3}, Lo/agp;->bA()Lcom/netflix/model/leafs/Bookmark;

    move-result-object p3

    invoke-virtual {p1, v0, p3}, Lo/ConfirmationAlreadyPresentingException;->b(Ljava/lang/String;Lcom/netflix/model/leafs/Bookmark;)V

    const/4 p1, 0x1

    .line 57
    sget-object p3, Lo/LegacyErrorStrings;->b:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    check-cast p3, Lcom/netflix/mediaclient/android/app/Status;

    invoke-interface {p2, p1, p3}, Lo/ci;->e(ZLcom/netflix/mediaclient/android/app/Status;)V

    return-void

    .line 55
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type com.netflix.model.branches.FalkorVideo"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public d()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public e(Lo/ci;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    const-string v0, "callbackOnMain"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "result"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 61
    invoke-interface {p1, v0, p2}, Lo/ci;->e(ZLcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method public i()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/adt$Activity;",
            ">;"
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lo/BatchUpdates;->b:Ljava/lang/Integer;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v1, :cond_2

    :goto_0
    iget-object v0, p0, Lo/BatchUpdates;->a:Ljava/lang/Long;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto :goto_1

    :cond_1
    const-wide/16 v2, -0x1

    :goto_1
    int-to-long v0, v1

    cmp-long v4, v2, v0

    if-lez v4, :cond_2

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 40
    new-instance v1, Lo/adt$Activity;

    iget-object v2, p0, Lo/BatchUpdates;->b:Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "local_bookmark_position"

    invoke-direct {v1, v3, v2}, Lo/adt$Activity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    new-instance v1, Lo/adt$Activity;

    iget-object v2, p0, Lo/BatchUpdates;->a:Ljava/lang/Long;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "local_bookmark_update_time"

    invoke-direct {v1, v3, v2}, Lo/adt$Activity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    check-cast v0, Ljava/util/List;

    goto :goto_2

    .line 44
    :cond_2
    invoke-super {p0}, Lo/SyncConstValue;->i()Ljava/util/List;

    move-result-object v0

    :goto_2
    return-object v0
.end method
