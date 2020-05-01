.class public final Lo/Rv;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/Rv$StateListAnimator;,
        Lo/Rv$Application;
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# static fields
.field public static final a:Lo/Rv$Application;


# instance fields
.field private final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Landroid/content/Context;

.field private final e:Lo/ErrorCodes;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/Rv$Application;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/Rv$Application;-><init>(Lo/amc;)V

    sput-object v0, Lo/Rv;->a:Lo/Rv$Application;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lo/ErrorCodes;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imageLoaderRepository"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/Rv;->d:Landroid/content/Context;

    iput-object p2, p0, Lo/Rv;->e:Lo/ErrorCodes;

    .line 35
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    check-cast p1, Ljava/util/Map;

    invoke-static {p1}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lo/Rv;->c:Ljava/util/Set;

    return-void
.end method

.method private final a(Ljava/lang/String;)Ljava/io/File;
    .locals 3

    .line 43
    new-instance v0, Ljava/io/File;

    invoke-direct {p0}, Lo/Rv;->c()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".img"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static final synthetic b(Lo/Rv;)Lo/ErrorCodes;
    .locals 0

    .line 23
    iget-object p0, p0, Lo/Rv;->e:Lo/ErrorCodes;

    return-object p0
.end method

.method public static final b(Landroid/content/Context;)Lo/Rv;
    .locals 1

    sget-object v0, Lo/Rv;->a:Lo/Rv$Application;

    invoke-virtual {v0, p0}, Lo/Rv$Application;->b(Landroid/content/Context;)Lo/Rv;

    move-result-object p0

    return-object p0
.end method

.method private final c()Ljava/io/File;
    .locals 3

    .line 38
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lo/Rv;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "img/of/profiles/"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static final synthetic c(Lo/Rv;)Ljava/util/Set;
    .locals 0

    .line 23
    iget-object p0, p0, Lo/Rv;->c:Ljava/util/Set;

    return-object p0
.end method

.method public static final synthetic d(Lo/Rv;)Ljava/io/File;
    .locals 0

    .line 23
    invoke-direct {p0}, Lo/Rv;->c()Ljava/io/File;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "profileGuid"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    invoke-direct {p0, p1}, Lo/Rv;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Uri.fromFile(getLocalFil\u2026(profileGuid)).toString()"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final c(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "profileGuid"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lo/Rv;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    const-string v0, "avatarUrl"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "profileGuid"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lo/Rv;->c:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 53
    :cond_0
    iget-object v0, p0, Lo/Rv;->c:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 55
    invoke-direct {p0, p2}, Lo/Rv;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 56
    invoke-static {v0}, Lo/adE;->j(Ljava/io/File;)Lio/reactivex/Single;

    move-result-object v1

    .line 58
    sget-object v2, Lo/Rv$TaskDescription;->d:Lo/Rv$TaskDescription;

    check-cast v2, Lio/reactivex/functions/Predicate;

    invoke-virtual {v1, v2}, Lio/reactivex/Single;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Maybe;

    move-result-object v1

    .line 59
    new-instance v2, Lo/Rv$ActionBar;

    invoke-direct {v2, p0}, Lo/Rv$ActionBar;-><init>(Lo/Rv;)V

    check-cast v2, Lio/reactivex/functions/Function;

    invoke-virtual {v1, v2}, Lio/reactivex/Maybe;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Maybe;

    move-result-object v1

    .line 60
    new-instance v2, Lo/Rv$Activity;

    invoke-direct {v2, p0, p1}, Lo/Rv$Activity;-><init>(Lo/Rv;Ljava/lang/String;)V

    check-cast v2, Lio/reactivex/functions/Function;

    invoke-virtual {v1, v2}, Lio/reactivex/Maybe;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Maybe;

    move-result-object p1

    .line 64
    new-instance v1, Lo/Rv$LoaderManager;

    invoke-direct {v1, p0, v0}, Lo/Rv$LoaderManager;-><init>(Lo/Rv;Ljava/io/File;)V

    check-cast v1, Lio/reactivex/functions/Function;

    invoke-virtual {p1, v1}, Lio/reactivex/Maybe;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Maybe;

    move-result-object p1

    .line 71
    new-instance v0, Lo/Rv$PendingIntent;

    invoke-direct {v0, p0, p2}, Lo/Rv$PendingIntent;-><init>(Lo/Rv;Ljava/lang/String;)V

    check-cast v0, Lio/reactivex/functions/Action;

    invoke-virtual {p1, v0}, Lio/reactivex/Maybe;->doFinally(Lio/reactivex/functions/Action;)Lio/reactivex/Maybe;

    move-result-object v1

    const-string p1, "FileUtils.doesFileExistS\u2026ads.remove(profileGuid) }"

    invoke-static {v1, p1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    sget-object p1, Lcom/netflix/mediaclient/ui/offline/OfflineProfileImageUtil$cacheProfileImage$6;->d:Lcom/netflix/mediaclient/ui/offline/OfflineProfileImageUtil$cacheProfileImage$6;

    move-object v2, p1

    check-cast v2, Lo/alA;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    .line 72
    invoke-static/range {v1 .. v6}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Maybe;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    return-void
.end method
