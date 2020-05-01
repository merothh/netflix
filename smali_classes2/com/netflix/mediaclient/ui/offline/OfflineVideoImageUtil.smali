.class public final Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil$ImageType;,
        Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil$ActionBar;,
        Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil$TaskDescription;,
        Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil$Activity;,
        Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil$StateListAnimator;
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# static fields
.field public static final e:Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil$StateListAnimator;


# instance fields
.field private final b:Lo/ErrorCodes;

.field private final c:Landroid/content/Context;

.field private final d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil$ActionBar;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil$StateListAnimator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil$StateListAnimator;-><init>(Lo/amc;)V

    sput-object v0, Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil;->e:Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil$StateListAnimator;

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

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil;->c:Landroid/content/Context;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil;->b:Lo/ErrorCodes;

    .line 49
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    check-cast p1, Ljava/util/Map;

    invoke-static {p1}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil;->d:Ljava/util/Set;

    return-void
.end method

.method public static final b(Landroid/content/Context;)Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil;
    .locals 1

    sget-object v0, Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil;->e:Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil$StateListAnimator;

    invoke-virtual {v0, p0}, Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil$StateListAnimator;->b(Landroid/content/Context;)Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic b(Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil;)Lo/ErrorCodes;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil;->b:Lo/ErrorCodes;

    return-object p0
.end method

.method public static final synthetic c(Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil;)Ljava/util/Set;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil;->d:Ljava/util/Set;

    return-object p0
.end method

.method private final e()Ljava/io/File;
    .locals 3

    .line 52
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "img/of/videos/"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static final synthetic e(Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil;)Ljava/io/File;
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil;->e()Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method private final e(Ljava/lang/String;Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil$ImageType;)Ljava/io/File;
    .locals 3

    .line 57
    sget-object v0, Lo/RQ;->a:[I

    invoke-virtual {p2}, Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil$ImageType;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_3

    const/4 v0, 0x2

    if-eq p2, v0, :cond_2

    const/4 v0, 0x3

    if-eq p2, v0, :cond_1

    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    const-string p2, "_billboardArtImgUrl"

    goto :goto_0

    .line 61
    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :cond_1
    const-string p2, "_titleImgUrl"

    goto :goto_0

    :cond_2
    const-string p2, "_storyUrl"

    goto :goto_0

    :cond_3
    const-string p2, ""

    .line 63
    :goto_0
    new-instance v0, Ljava/io/File;

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil;->e()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".img"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final b(Ljava/lang/String;Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil$ImageType;)Z
    .locals 3

    const-string v0, "videoId"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imageType"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x3

    .line 142
    invoke-static {v0, v1, v2, v0}, Lo/aeB;->d(Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 143
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil;->e(Ljava/lang/String;Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil$ImageType;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    return p1
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil$ImageType;Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil$TaskDescription;)V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    const-string v0, "videoId"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imageType"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lo/anv;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    return-void

    .line 79
    :cond_2
    new-instance v0, Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil$ActionBar;

    invoke-direct {v0, p2, p3}, Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil$ActionBar;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil$ImageType;)V

    .line 80
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil;->d:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    return-void

    :cond_3
    if-eqz p4, :cond_4

    .line 83
    invoke-interface {p4}, Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil$TaskDescription;->a()V

    .line 84
    :cond_4
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil;->d:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 86
    invoke-direct {p0, p2, p3}, Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil;->e(Ljava/lang/String;Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil$ImageType;)Ljava/io/File;

    move-result-object p2

    .line 87
    invoke-static {p2}, Lo/adE;->j(Ljava/io/File;)Lio/reactivex/Single;

    move-result-object p3

    .line 89
    sget-object v1, Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil$Application;->e:Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil$Application;

    check-cast v1, Lio/reactivex/functions/Predicate;

    invoke-virtual {p3, v1}, Lio/reactivex/Single;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Maybe;

    move-result-object p3

    .line 90
    new-instance v1, Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil$Dialog;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil$Dialog;-><init>(Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil;)V

    check-cast v1, Lio/reactivex/functions/Function;

    invoke-virtual {p3, v1}, Lio/reactivex/Maybe;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Maybe;

    move-result-object p3

    .line 91
    new-instance v1, Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil$FragmentManager;

    invoke-direct {v1, p0, p1}, Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil$FragmentManager;-><init>(Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil;Ljava/lang/String;)V

    check-cast v1, Lio/reactivex/functions/Function;

    invoke-virtual {p3, v1}, Lio/reactivex/Maybe;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Maybe;

    move-result-object p1

    .line 95
    new-instance p3, Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil$LoaderManager;

    invoke-direct {p3, p0, p2}, Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil$LoaderManager;-><init>(Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil;Ljava/io/File;)V

    check-cast p3, Lio/reactivex/functions/Function;

    invoke-virtual {p1, p3}, Lio/reactivex/Maybe;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Maybe;

    move-result-object p1

    .line 102
    new-instance p2, Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil$PendingIntent;

    invoke-direct {p2, p0, v0, p4}, Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil$PendingIntent;-><init>(Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil;Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil$ActionBar;Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil$TaskDescription;)V

    check-cast p2, Lio/reactivex/functions/Action;

    invoke-virtual {p1, p2}, Lio/reactivex/Maybe;->doFinally(Lio/reactivex/functions/Action;)Lio/reactivex/Maybe;

    move-result-object v0

    const-string p1, "FileUtils.doesFileExistS\u2026ownloaded()\n            }"

    invoke-static {v0, p1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    sget-object p1, Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil$cacheVideoImage$6;->c:Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil$cacheVideoImage$6;

    move-object v1, p1

    check-cast v1, Lo/alA;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    .line 106
    invoke-static/range {v0 .. v5}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Maybe;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public final c(Ljava/lang/String;Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil$ImageType;)Z
    .locals 2

    const-string v0, "videoId"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imageType"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil;->d:Ljava/util/Set;

    new-instance v1, Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil$ActionBar;

    invoke-direct {v1, p1, p2}, Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil$ActionBar;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil$ImageType;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final d(Ljava/lang/String;Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil$ImageType;)Ljava/lang/String;
    .locals 1

    const-string v0, "videoId"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imageType"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil;->e(Ljava/lang/String;Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil$ImageType;)Ljava/io/File;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Uri.fromFile(getLocalFil\u2026d, imageType)).toString()"

    invoke-static {p1, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final e(Ljava/lang/String;)V
    .locals 5

    const-string v0, "videoId"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 113
    invoke-static {v1, v2, v0, v1}, Lo/aeB;->d(Ljava/lang/String;ZILjava/lang/Object;)Z

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil$ImageType;

    .line 114
    sget-object v3, Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil$ImageType;->a:Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil$ImageType;

    aput-object v3, v1, v2

    sget-object v3, Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil$ImageType;->e:Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil$ImageType;

    const/4 v4, 0x1

    aput-object v3, v1, v4

    sget-object v3, Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil$ImageType;->b:Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil$ImageType;

    const/4 v4, 0x2

    aput-object v3, v1, v4

    sget-object v3, Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil$ImageType;->c:Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil$ImageType;

    aput-object v3, v1, v0

    .line 115
    array-length v0, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, v1, v2

    .line 116
    invoke-direct {p0, p1, v3}, Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil;->e(Ljava/lang/String;Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil$ImageType;)Ljava/io/File;

    move-result-object v3

    .line 117
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_0

    .line 119
    sget-object v3, Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil;->e:Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil$StateListAnimator;

    check-cast v3, Lo/MessagePdu;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
