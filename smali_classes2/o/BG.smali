.class public final Lo/BG;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/BG$Activity;
    }
.end annotation


# static fields
.field public static final c:Lo/BG$Activity;

.field private static e:Lo/BG;


# instance fields
.field private final b:Ljava/util/concurrent/ThreadPoolExecutor;

.field private final d:Lcom/netflix/mediaclient/storage/db/OfflineDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/BG$Activity;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/BG$Activity;-><init>(Lo/amc;)V

    sput-object v0, Lo/BG;->c:Lo/BG$Activity;

    return-void
.end method

.method private constructor <init>(Lcom/netflix/mediaclient/storage/db/OfflineDatabase;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/BG;->d:Lcom/netflix/mediaclient/storage/db/OfflineDatabase;

    .line 16
    iget-object p1, p0, Lo/BG;->d:Lcom/netflix/mediaclient/storage/db/OfflineDatabase;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/storage/db/OfflineDatabase;->b()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object p1

    iput-object p1, p0, Lo/BG;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/netflix/mediaclient/storage/db/OfflineDatabase;Lo/amc;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lo/BG;-><init>(Lcom/netflix/mediaclient/storage/db/OfflineDatabase;)V

    return-void
.end method

.method public static final synthetic b(Lo/BG;)V
    .locals 0

    .line 15
    sput-object p0, Lo/BG;->e:Lo/BG;

    return-void
.end method

.method public static final synthetic d(Lo/BG;)Lcom/netflix/mediaclient/storage/db/OfflineDatabase;
    .locals 0

    .line 15
    iget-object p0, p0, Lo/BG;->d:Lcom/netflix/mediaclient/storage/db/OfflineDatabase;

    return-object p0
.end method

.method public static final synthetic d()Lo/BG;
    .locals 1

    .line 15
    sget-object v0, Lo/BG;->e:Lo/BG;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 51
    iget-object v0, p0, Lo/BG;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lo/BG$TaskDescription;

    invoke-direct {v1, p0}, Lo/BG$TaskDescription;-><init>(Lo/BG;)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final b()Lio/reactivex/Flowable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Flowable<",
            "Ljava/util/List<",
            "Lo/BZ;",
            ">;>;"
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lo/BG;->d:Lcom/netflix/mediaclient/storage/db/OfflineDatabase;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/storage/db/OfflineDatabase;->g()Lo/BR;

    move-result-object v0

    invoke-interface {v0}, Lo/BR;->b()Lio/reactivex/Flowable;

    move-result-object v0

    const-string v1, "database.offlineWatchedDao().allWatched"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final b(Ljava/lang/String;)Lio/reactivex/Flowable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Flowable<",
            "Ljava/util/List<",
            "Lo/BZ;",
            ">;>;"
        }
    .end annotation

    const-string v0, "downloadEpisodeId"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lo/BG;->d:Lcom/netflix/mediaclient/storage/db/OfflineDatabase;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/storage/db/OfflineDatabase;->g()Lo/BR;

    move-result-object v0

    invoke-interface {v0, p1}, Lo/BR;->e(Ljava/lang/String;)Lio/reactivex/Flowable;

    move-result-object p1

    const-string v0, "database.offlineWatchedD\u2026sodeId(downloadEpisodeId)"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final b(Lo/BZ;)V
    .locals 2

    const-string v0, "item"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    iget-object v0, p0, Lo/BG;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lo/BG$ActionBar;

    invoke-direct {v1, p0, p1}, Lo/BG$ActionBar;-><init>(Lo/BG;Lo/BZ;)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final c()Lio/reactivex/Flowable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Flowable<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 25
    iget-object v0, p0, Lo/BG;->d:Lcom/netflix/mediaclient/storage/db/OfflineDatabase;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/storage/db/OfflineDatabase;->g()Lo/BR;

    move-result-object v0

    invoke-interface {v0}, Lo/BR;->c()Lio/reactivex/Flowable;

    move-result-object v0

    const-string v1, "database.offlineWatchedDao().allShowsId"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final c(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 38
    iget-object v0, p0, Lo/BG;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lo/BG$Application;

    invoke-direct {v1, p0, p1}, Lo/BG$Application;-><init>(Lo/BG;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final c(Lo/BZ;)V
    .locals 2

    const-string v0, "watchedEpisode"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lo/BG;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lo/BG$StateListAnimator;

    invoke-direct {v1, p0, p1}, Lo/BG$StateListAnimator;-><init>(Lo/BG;Lo/BZ;)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final c(Lo/BZ;Ljava/lang/String;)V
    .locals 2

    const-string v0, "watchedEpisode"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nextEpisodeId"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    iget-object v0, p0, Lo/BG;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lo/BG$PendingIntent;

    invoke-direct {v1, p0, p1, p2}, Lo/BG$PendingIntent;-><init>(Lo/BG;Lo/BZ;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final e(Ljava/lang/String;)Lio/reactivex/Flowable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Flowable<",
            "Ljava/util/List<",
            "Lo/BZ;",
            ">;>;"
        }
    .end annotation

    const-string v0, "parentId"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    iget-object v0, p0, Lo/BG;->d:Lcom/netflix/mediaclient/storage/db/OfflineDatabase;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/storage/db/OfflineDatabase;->g()Lo/BR;

    move-result-object v0

    invoke-interface {v0, p1}, Lo/BR;->c(Ljava/lang/String;)Lio/reactivex/Flowable;

    move-result-object p1

    const-string v0, "database.offlineWatchedD\u2026pisodesByShowId(parentId)"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
