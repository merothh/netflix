.class public abstract Lcom/netflix/mediaclient/storage/db/OfflineDatabase;
.super Landroidx/room/RoomDatabase;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/mediaclient/storage/db/OfflineDatabase$Activity;
    }
.end annotation


# static fields
.field public static final a:Lcom/netflix/mediaclient/storage/db/OfflineDatabase$Activity;

.field private static final b:Landroidx/room/migration/Migration;

.field private static final c:Landroidx/room/migration/Migration;

.field private static final e:Landroidx/room/migration/Migration;

.field private static final f:Landroidx/room/migration/Migration;

.field private static final g:Landroidx/room/migration/Migration;

.field private static final h:Landroidx/room/migration/Migration;

.field private static final i:Landroidx/room/migration/Migration;

.field private static final j:Landroidx/room/migration/Migration;

.field private static final l:Landroidx/room/migration/Migration;

.field private static m:Lcom/netflix/mediaclient/storage/db/OfflineDatabase;

.field private static final n:Landroidx/room/migration/Migration;

.field private static final o:Landroidx/room/migration/Migration;


# instance fields
.field private final d:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/netflix/mediaclient/storage/db/OfflineDatabase$Activity;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/storage/db/OfflineDatabase$Activity;-><init>(Lo/amc;)V

    sput-object v0, Lcom/netflix/mediaclient/storage/db/OfflineDatabase;->a:Lcom/netflix/mediaclient/storage/db/OfflineDatabase$Activity;

    .line 69
    new-instance v0, Lcom/netflix/mediaclient/storage/db/OfflineDatabase$TaskDescription;

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Lcom/netflix/mediaclient/storage/db/OfflineDatabase$TaskDescription;-><init>(II)V

    check-cast v0, Landroidx/room/migration/Migration;

    sput-object v0, Lcom/netflix/mediaclient/storage/db/OfflineDatabase;->e:Landroidx/room/migration/Migration;

    .line 75
    new-instance v0, Lcom/netflix/mediaclient/storage/db/OfflineDatabase$StateListAnimator;

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/storage/db/OfflineDatabase$StateListAnimator;-><init>(II)V

    check-cast v0, Landroidx/room/migration/Migration;

    sput-object v0, Lcom/netflix/mediaclient/storage/db/OfflineDatabase;->c:Landroidx/room/migration/Migration;

    .line 83
    new-instance v0, Lcom/netflix/mediaclient/storage/db/OfflineDatabase$Dialog;

    const/4 v1, 0x4

    invoke-direct {v0, v2, v1}, Lcom/netflix/mediaclient/storage/db/OfflineDatabase$Dialog;-><init>(II)V

    check-cast v0, Landroidx/room/migration/Migration;

    sput-object v0, Lcom/netflix/mediaclient/storage/db/OfflineDatabase;->b:Landroidx/room/migration/Migration;

    .line 96
    new-instance v0, Lcom/netflix/mediaclient/storage/db/OfflineDatabase$Fragment;

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/storage/db/OfflineDatabase$Fragment;-><init>(II)V

    check-cast v0, Landroidx/room/migration/Migration;

    sput-object v0, Lcom/netflix/mediaclient/storage/db/OfflineDatabase;->i:Landroidx/room/migration/Migration;

    .line 107
    new-instance v0, Lcom/netflix/mediaclient/storage/db/OfflineDatabase$LoaderManager;

    const/4 v1, 0x6

    invoke-direct {v0, v2, v1}, Lcom/netflix/mediaclient/storage/db/OfflineDatabase$LoaderManager;-><init>(II)V

    check-cast v0, Landroidx/room/migration/Migration;

    sput-object v0, Lcom/netflix/mediaclient/storage/db/OfflineDatabase;->g:Landroidx/room/migration/Migration;

    .line 118
    new-instance v0, Lcom/netflix/mediaclient/storage/db/OfflineDatabase$FragmentManager;

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/storage/db/OfflineDatabase$FragmentManager;-><init>(II)V

    check-cast v0, Landroidx/room/migration/Migration;

    sput-object v0, Lcom/netflix/mediaclient/storage/db/OfflineDatabase;->f:Landroidx/room/migration/Migration;

    .line 128
    new-instance v0, Lcom/netflix/mediaclient/storage/db/OfflineDatabase$PendingIntent;

    const/16 v1, 0x8

    invoke-direct {v0, v2, v1}, Lcom/netflix/mediaclient/storage/db/OfflineDatabase$PendingIntent;-><init>(II)V

    check-cast v0, Landroidx/room/migration/Migration;

    sput-object v0, Lcom/netflix/mediaclient/storage/db/OfflineDatabase;->j:Landroidx/room/migration/Migration;

    .line 138
    new-instance v0, Lcom/netflix/mediaclient/storage/db/OfflineDatabase$VoiceInteractor;

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/storage/db/OfflineDatabase$VoiceInteractor;-><init>(II)V

    check-cast v0, Landroidx/room/migration/Migration;

    sput-object v0, Lcom/netflix/mediaclient/storage/db/OfflineDatabase;->h:Landroidx/room/migration/Migration;

    .line 148
    new-instance v0, Lcom/netflix/mediaclient/storage/db/OfflineDatabase$SharedElementCallback;

    const/16 v1, 0xa

    invoke-direct {v0, v2, v1}, Lcom/netflix/mediaclient/storage/db/OfflineDatabase$SharedElementCallback;-><init>(II)V

    check-cast v0, Landroidx/room/migration/Migration;

    sput-object v0, Lcom/netflix/mediaclient/storage/db/OfflineDatabase;->o:Landroidx/room/migration/Migration;

    .line 158
    new-instance v0, Lcom/netflix/mediaclient/storage/db/OfflineDatabase$Application;

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/storage/db/OfflineDatabase$Application;-><init>(II)V

    check-cast v0, Landroidx/room/migration/Migration;

    sput-object v0, Lcom/netflix/mediaclient/storage/db/OfflineDatabase;->l:Landroidx/room/migration/Migration;

    .line 168
    new-instance v0, Lcom/netflix/mediaclient/storage/db/OfflineDatabase$ActionBar;

    const/16 v1, 0xc

    invoke-direct {v0, v2, v1}, Lcom/netflix/mediaclient/storage/db/OfflineDatabase$ActionBar;-><init>(II)V

    check-cast v0, Landroidx/room/migration/Migration;

    sput-object v0, Lcom/netflix/mediaclient/storage/db/OfflineDatabase;->n:Landroidx/room/migration/Migration;

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    .line 51
    invoke-direct {p0}, Landroidx/room/RoomDatabase;-><init>()V

    .line 53
    new-instance v7, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    move-object v6, v0

    check-cast v6, Ljava/util/concurrent/BlockingQueue;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const-wide/16 v3, 0x3c

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v7, p0, Lcom/netflix/mediaclient/storage/db/OfflineDatabase;->d:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method

.method public static final synthetic d(Lcom/netflix/mediaclient/storage/db/OfflineDatabase;)V
    .locals 0

    .line 51
    sput-object p0, Lcom/netflix/mediaclient/storage/db/OfflineDatabase;->m:Lcom/netflix/mediaclient/storage/db/OfflineDatabase;

    return-void
.end method

.method public static final synthetic f()Landroidx/room/migration/Migration;
    .locals 1

    .line 51
    sget-object v0, Lcom/netflix/mediaclient/storage/db/OfflineDatabase;->e:Landroidx/room/migration/Migration;

    return-object v0
.end method

.method public static final synthetic h()Lcom/netflix/mediaclient/storage/db/OfflineDatabase;
    .locals 1

    .line 51
    sget-object v0, Lcom/netflix/mediaclient/storage/db/OfflineDatabase;->m:Lcom/netflix/mediaclient/storage/db/OfflineDatabase;

    return-object v0
.end method

.method public static final synthetic i()Landroidx/room/migration/Migration;
    .locals 1

    .line 51
    sget-object v0, Lcom/netflix/mediaclient/storage/db/OfflineDatabase;->b:Landroidx/room/migration/Migration;

    return-object v0
.end method

.method public static final synthetic j()Landroidx/room/migration/Migration;
    .locals 1

    .line 51
    sget-object v0, Lcom/netflix/mediaclient/storage/db/OfflineDatabase;->c:Landroidx/room/migration/Migration;

    return-object v0
.end method

.method public static final synthetic k()Landroidx/room/migration/Migration;
    .locals 1

    .line 51
    sget-object v0, Lcom/netflix/mediaclient/storage/db/OfflineDatabase;->g:Landroidx/room/migration/Migration;

    return-object v0
.end method

.method public static final synthetic l()Landroidx/room/migration/Migration;
    .locals 1

    .line 51
    sget-object v0, Lcom/netflix/mediaclient/storage/db/OfflineDatabase;->i:Landroidx/room/migration/Migration;

    return-object v0
.end method

.method public static final synthetic m()Landroidx/room/migration/Migration;
    .locals 1

    .line 51
    sget-object v0, Lcom/netflix/mediaclient/storage/db/OfflineDatabase;->f:Landroidx/room/migration/Migration;

    return-object v0
.end method

.method public static final synthetic n()Landroidx/room/migration/Migration;
    .locals 1

    .line 51
    sget-object v0, Lcom/netflix/mediaclient/storage/db/OfflineDatabase;->j:Landroidx/room/migration/Migration;

    return-object v0
.end method

.method public static final synthetic o()Landroidx/room/migration/Migration;
    .locals 1

    .line 51
    sget-object v0, Lcom/netflix/mediaclient/storage/db/OfflineDatabase;->h:Landroidx/room/migration/Migration;

    return-object v0
.end method

.method public static final synthetic p()Landroidx/room/migration/Migration;
    .locals 1

    .line 51
    sget-object v0, Lcom/netflix/mediaclient/storage/db/OfflineDatabase;->n:Landroidx/room/migration/Migration;

    return-object v0
.end method

.method public static final synthetic s()Landroidx/room/migration/Migration;
    .locals 1

    .line 51
    sget-object v0, Lcom/netflix/mediaclient/storage/db/OfflineDatabase;->o:Landroidx/room/migration/Migration;

    return-object v0
.end method

.method public static final synthetic t()Landroidx/room/migration/Migration;
    .locals 1

    .line 51
    sget-object v0, Lcom/netflix/mediaclient/storage/db/OfflineDatabase;->l:Landroidx/room/migration/Migration;

    return-object v0
.end method


# virtual methods
.method public abstract a()Lo/BL;
.end method

.method public final b()Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/netflix/mediaclient/storage/db/OfflineDatabase;->d:Ljava/util/concurrent/ThreadPoolExecutor;

    return-object v0
.end method

.method public abstract c()Lo/BK;
.end method

.method public abstract d()Lo/BN;
.end method

.method public abstract e()Lo/BH;
.end method

.method public abstract g()Lo/BR;
.end method
