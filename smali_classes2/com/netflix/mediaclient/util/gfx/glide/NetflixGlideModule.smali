.class public final Lcom/netflix/mediaclient/util/gfx/glide/NetflixGlideModule;
.super Lo/CursorEntityIterator;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/mediaclient/util/gfx/glide/NetflixGlideModule$StateListAnimator;
    }
.end annotation


# static fields
.field public static final a:Lcom/netflix/mediaclient/util/gfx/glide/NetflixGlideModule$StateListAnimator;

.field private static b:Lo/H;

.field private static final c:Lo/UsageStatsManagerInternal;

.field private static e:Lo/EventStats;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/netflix/mediaclient/util/gfx/glide/NetflixGlideModule$StateListAnimator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/util/gfx/glide/NetflixGlideModule$StateListAnimator;-><init>(Lo/amc;)V

    sput-object v0, Lcom/netflix/mediaclient/util/gfx/glide/NetflixGlideModule;->a:Lcom/netflix/mediaclient/util/gfx/glide/NetflixGlideModule$StateListAnimator;

    .line 26
    new-instance v0, Lo/UsageStatsManagerInternal;

    sget-object v1, Lcom/netflix/mediaclient/util/gfx/glide/NetflixGlideModule;->a:Lcom/netflix/mediaclient/util/gfx/glide/NetflixGlideModule$StateListAnimator;

    invoke-static {v1}, Lcom/netflix/mediaclient/util/gfx/glide/NetflixGlideModule$StateListAnimator;->b(Lcom/netflix/mediaclient/util/gfx/glide/NetflixGlideModule$StateListAnimator;)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lo/UsageStatsManagerInternal;-><init>(J)V

    sput-object v0, Lcom/netflix/mediaclient/util/gfx/glide/NetflixGlideModule;->c:Lo/UsageStatsManagerInternal;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lo/CursorEntityIterator;-><init>()V

    return-void
.end method

.method public static final synthetic a(Lo/H;)V
    .locals 0

    .line 24
    sput-object p0, Lcom/netflix/mediaclient/util/gfx/glide/NetflixGlideModule;->b:Lo/H;

    return-void
.end method

.method public static final synthetic b()Lo/EventStats;
    .locals 1

    .line 24
    sget-object v0, Lcom/netflix/mediaclient/util/gfx/glide/NetflixGlideModule;->e:Lo/EventStats;

    return-object v0
.end method

.method public static final synthetic b(Lo/EventStats;)V
    .locals 0

    .line 24
    sput-object p0, Lcom/netflix/mediaclient/util/gfx/glide/NetflixGlideModule;->e:Lo/EventStats;

    return-void
.end method

.method public static final synthetic c()Lo/UsageStatsManagerInternal;
    .locals 1

    .line 24
    sget-object v0, Lcom/netflix/mediaclient/util/gfx/glide/NetflixGlideModule;->c:Lo/UsageStatsManagerInternal;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;Lo/BackupDataInputStream;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "builder"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    new-instance v0, Lo/SearchRecentSuggestionsProvider;

    invoke-direct {v0}, Lo/SearchRecentSuggestionsProvider;-><init>()V

    sget-object v1, Lcom/bumptech/glide/load/DecodeFormat;->c:Lcom/bumptech/glide/load/DecodeFormat;

    invoke-virtual {v0, v1}, Lo/SearchRecentSuggestionsProvider;->c(Lcom/bumptech/glide/load/DecodeFormat;)Lo/PeriodicSync;

    move-result-object v0

    check-cast v0, Lo/SearchRecentSuggestionsProvider;

    invoke-virtual {v0}, Lo/SearchRecentSuggestionsProvider;->c()Lo/PeriodicSync;

    move-result-object v0

    check-cast v0, Lo/SearchRecentSuggestionsProvider;

    invoke-virtual {p2, v0}, Lo/BackupDataInputStream;->b(Lo/SearchRecentSuggestionsProvider;)Lo/BackupDataInputStream;

    .line 85
    sget-object v0, Lcom/netflix/mediaclient/util/gfx/glide/NetflixGlideModule;->a:Lcom/netflix/mediaclient/util/gfx/glide/NetflixGlideModule$StateListAnimator;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/gfx/glide/NetflixGlideModule$StateListAnimator;->e(Lcom/netflix/mediaclient/util/gfx/glide/NetflixGlideModule$StateListAnimator;)Lo/UsageStatsManagerInternal;

    move-result-object v0

    check-cast v0, Lo/TimeSparseArray;

    invoke-virtual {p2, v0}, Lo/BackupDataInputStream;->d(Lo/TimeSparseArray;)Lo/BackupDataInputStream;

    .line 86
    sget-object v0, Lcom/netflix/mediaclient/util/gfx/glide/NetflixGlideModule;->a:Lcom/netflix/mediaclient/util/gfx/glide/NetflixGlideModule$StateListAnimator;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/util/gfx/glide/NetflixGlideModule$StateListAnimator;->e(Lcom/netflix/mediaclient/util/gfx/glide/NetflixGlideModule$StateListAnimator;Landroid/content/Context;)Lo/RulesUpdaterContract;

    move-result-object v0

    invoke-virtual {p2, v0}, Lo/BackupDataInputStream;->e(Lo/RulesUpdaterContract;)Lo/BackupDataInputStream;

    .line 87
    new-instance v0, Lo/UsageStats;

    sget-object v1, Lcom/netflix/mediaclient/util/gfx/glide/NetflixGlideModule;->a:Lcom/netflix/mediaclient/util/gfx/glide/NetflixGlideModule$StateListAnimator;

    invoke-static {v1, p1}, Lcom/netflix/mediaclient/util/gfx/glide/NetflixGlideModule$StateListAnimator;->c(Lcom/netflix/mediaclient/util/gfx/glide/NetflixGlideModule$StateListAnimator;Landroid/content/Context;)J

    move-result-wide v1

    invoke-direct {v0, p1, v1, v2}, Lo/UsageStats;-><init>(Landroid/content/Context;J)V

    check-cast v0, Lo/StorageStatsManager$Application;

    invoke-virtual {p2, v0}, Lo/BackupDataInputStream;->b(Lo/StorageStatsManager$Application;)Lo/BackupDataInputStream;

    return-void
.end method

.method public a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
