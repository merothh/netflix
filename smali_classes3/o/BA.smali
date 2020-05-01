.class public final Lo/BA;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/BA$Activity;
    }
.end annotation


# static fields
.field public static final a:Lo/BA$Activity;

.field private static d:Lo/BA;


# instance fields
.field private final c:Lcom/netflix/mediaclient/storage/db/OfflineDatabase;

.field private final e:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/BA$Activity;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/BA$Activity;-><init>(Lo/amc;)V

    sput-object v0, Lo/BA;->a:Lo/BA$Activity;

    return-void
.end method

.method private constructor <init>(Lcom/netflix/mediaclient/storage/db/OfflineDatabase;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/BA;->c:Lcom/netflix/mediaclient/storage/db/OfflineDatabase;

    .line 12
    iget-object p1, p0, Lo/BA;->c:Lcom/netflix/mediaclient/storage/db/OfflineDatabase;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/storage/db/OfflineDatabase;->b()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object p1

    iput-object p1, p0, Lo/BA;->e:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/netflix/mediaclient/storage/db/OfflineDatabase;Lo/amc;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1}, Lo/BA;-><init>(Lcom/netflix/mediaclient/storage/db/OfflineDatabase;)V

    return-void
.end method

.method public static final synthetic a(Lo/BA;)V
    .locals 0

    .line 11
    sput-object p0, Lo/BA;->d:Lo/BA;

    return-void
.end method

.method public static final synthetic c()Lo/BA;
    .locals 1

    .line 11
    sget-object v0, Lo/BA;->d:Lo/BA;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/BV;",
            ">;)V"
        }
    .end annotation

    const-string v0, "items"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 33
    iget-object v0, p0, Lo/BA;->e:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lo/BA$ActionBar;

    invoke-direct {v1, p0, p1}, Lo/BA$ActionBar;-><init>(Lo/BA;Ljava/util/List;)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final b()Lcom/netflix/mediaclient/storage/db/OfflineDatabase;
    .locals 1

    .line 11
    iget-object v0, p0, Lo/BA;->c:Lcom/netflix/mediaclient/storage/db/OfflineDatabase;

    return-object v0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "playableId"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "profileGuid"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lo/BA;->e:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lo/BA$StateListAnimator;

    invoke-direct {v1, p0, p1, p2}, Lo/BA$StateListAnimator;-><init>(Lo/BA;Ljava/lang/String;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final b(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "profiles"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lo/BA;->e:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lo/BA$TaskDescription;

    invoke-direct {v1, p0, p1}, Lo/BA$TaskDescription;-><init>(Lo/BA;Ljava/util/List;)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final b(Lo/BV;)V
    .locals 2

    const-string v0, "item"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    iget-object v0, p0, Lo/BA;->e:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lo/BA$Application;

    invoke-direct {v1, p0, p1}, Lo/BA$Application;-><init>(Lo/BA;Lo/BV;)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final d()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/BV;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x3

    .line 46
    invoke-static {v0, v1, v2, v0}, Lo/aeB;->d(Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 47
    iget-object v0, p0, Lo/BA;->c:Lcom/netflix/mediaclient/storage/db/OfflineDatabase;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/storage/db/OfflineDatabase;->e()Lo/BH;

    move-result-object v0

    invoke-interface {v0}, Lo/BH;->a()Ljava/util/List;

    move-result-object v0

    const-string v1, "database.bookmarkStoreDao().findAll()"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
