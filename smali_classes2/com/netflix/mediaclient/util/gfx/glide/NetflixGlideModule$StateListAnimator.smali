.class public final Lcom/netflix/mediaclient/util/gfx/glide/NetflixGlideModule$StateListAnimator;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/util/gfx/glide/NetflixGlideModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StateListAnimator"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lo/amc;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/netflix/mediaclient/util/gfx/glide/NetflixGlideModule$StateListAnimator;-><init>()V

    return-void
.end method

.method private final a(Landroid/content/Context;)J
    .locals 2

    .line 62
    invoke-static {p1}, Lo/aed;->e(Landroid/content/Context;)I

    move-result p1

    int-to-long v0, p1

    return-wide v0
.end method

.method private final b()J
    .locals 4

    .line 48
    sget v0, Lo/aed;->c:I

    int-to-long v0, v0

    .line 49
    invoke-static {}, Lo/ady;->f()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    int-to-long v2, v2

    .line 50
    div-long/2addr v0, v2

    :cond_0
    return-wide v0
.end method

.method public static final synthetic b(Lcom/netflix/mediaclient/util/gfx/glide/NetflixGlideModule$StateListAnimator;)J
    .locals 2

    .line 25
    invoke-direct {p0}, Lcom/netflix/mediaclient/util/gfx/glide/NetflixGlideModule$StateListAnimator;->b()J

    move-result-wide v0

    return-wide v0
.end method

.method private final b(Landroid/content/Context;)Lo/RulesUpdaterContract;
    .locals 3

    .line 36
    invoke-static {}, Lcom/netflix/mediaclient/util/gfx/glide/NetflixGlideModule;->b()Lo/EventStats;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 38
    check-cast v0, Lo/RulesUpdaterContract;

    return-object v0

    .line 40
    :cond_0
    new-instance v0, Lo/EventStats;

    sget-object v1, Lcom/netflix/mediaclient/util/gfx/glide/NetflixGlideModule;->a:Lcom/netflix/mediaclient/util/gfx/glide/NetflixGlideModule$StateListAnimator;

    invoke-direct {v1, p1}, Lcom/netflix/mediaclient/util/gfx/glide/NetflixGlideModule$StateListAnimator;->c(Landroid/content/Context;)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lo/EventStats;-><init>(J)V

    .line 41
    invoke-static {v0}, Lcom/netflix/mediaclient/util/gfx/glide/NetflixGlideModule;->b(Lo/EventStats;)V

    .line 42
    check-cast v0, Lo/RulesUpdaterContract;

    return-object v0
.end method

.method private final c(Landroid/content/Context;)J
    .locals 2

    .line 57
    new-instance v0, Lo/AppWidgetHost$Application;

    invoke-direct {v0, p1}, Lo/AppWidgetHost$Application;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lo/AppWidgetHost$Application;->c()Lo/AppWidgetHost;

    move-result-object p1

    const-string v0, "MemorySizeCalculator.Builder(context).build()"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lo/AppWidgetHost;->b()I

    move-result p1

    int-to-long v0, p1

    return-wide v0
.end method

.method public static final synthetic c(Lcom/netflix/mediaclient/util/gfx/glide/NetflixGlideModule$StateListAnimator;Landroid/content/Context;)J
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/util/gfx/glide/NetflixGlideModule$StateListAnimator;->a(Landroid/content/Context;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final synthetic e(Lcom/netflix/mediaclient/util/gfx/glide/NetflixGlideModule$StateListAnimator;Landroid/content/Context;)Lo/RulesUpdaterContract;
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/util/gfx/glide/NetflixGlideModule$StateListAnimator;->b(Landroid/content/Context;)Lo/RulesUpdaterContract;

    move-result-object p0

    return-object p0
.end method

.method private final e()Lo/UsageStatsManagerInternal;
    .locals 1

    .line 32
    invoke-static {}, Lcom/netflix/mediaclient/util/gfx/glide/NetflixGlideModule;->c()Lo/UsageStatsManagerInternal;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic e(Lcom/netflix/mediaclient/util/gfx/glide/NetflixGlideModule$StateListAnimator;)Lo/UsageStatsManagerInternal;
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/netflix/mediaclient/util/gfx/glide/NetflixGlideModule$StateListAnimator;->e()Lo/UsageStatsManagerInternal;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final d(Lo/H;)V
    .locals 1

    const-string v0, "networkManager"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    invoke-static {p1}, Lcom/netflix/mediaclient/util/gfx/glide/NetflixGlideModule;->a(Lo/H;)V

    return-void
.end method
