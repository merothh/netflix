.class public final Lcom/crittercism/internal/dk;
.super Lcom/crittercism/internal/di;


# instance fields
.field public a:Ljava/util/Map;

.field public b:Z

.field public c:Z

.field public d:Z

.field public e:Z

.field private f:Lcom/crittercism/internal/dv;

.field private g:Lcom/crittercism/internal/dr;

.field private h:Lcom/crittercism/internal/ar;


# direct methods
.method public constructor <init>(Lcom/crittercism/internal/ar;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/crittercism/internal/di;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/crittercism/internal/dk;->a:Ljava/util/Map;

    iput-boolean v1, p0, Lcom/crittercism/internal/dk;->b:Z

    iput-boolean v1, p0, Lcom/crittercism/internal/dk;->c:Z

    iput-boolean v1, p0, Lcom/crittercism/internal/dk;->d:Z

    iput-boolean v1, p0, Lcom/crittercism/internal/dk;->e:Z

    iput-object p1, p0, Lcom/crittercism/internal/dk;->h:Lcom/crittercism/internal/ar;

    invoke-interface {p1}, Lcom/crittercism/internal/ar;->l()Lcom/crittercism/internal/dv;

    move-result-object v0

    iput-object v0, p0, Lcom/crittercism/internal/dk;->f:Lcom/crittercism/internal/dv;

    invoke-interface {p1}, Lcom/crittercism/internal/ar;->m()Lcom/crittercism/internal/dr;

    move-result-object v0

    iput-object v0, p0, Lcom/crittercism/internal/dk;->g:Lcom/crittercism/internal/dr;

    return-void
.end method

.method private declared-synchronized a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/crittercism/internal/dk;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final a()V
    .locals 8

    const/4 v7, 0x5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/crittercism/internal/dk;->g:Lcom/crittercism/internal/dr;

    invoke-virtual {v1}, Lcom/crittercism/internal/dr;->a()Z

    move-result v1

    iget-boolean v2, p0, Lcom/crittercism/internal/dk;->b:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "optOutStatus"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/crittercism/internal/dk;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    if-nez v1, :cond_4

    iget-boolean v1, p0, Lcom/crittercism/internal/dk;->c:Z

    if-eqz v1, :cond_1

    const-string/jumbo v1, "crashedOnLastLoad"

    sget-boolean v2, Lcom/crittercism/internal/dp;->a:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/crittercism/internal/dk;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    iget-boolean v1, p0, Lcom/crittercism/internal/dk;->d:Z

    if-eqz v1, :cond_2

    const-string/jumbo v1, "userUUID"

    iget-object v2, p0, Lcom/crittercism/internal/dk;->h:Lcom/crittercism/internal/ar;

    invoke-interface {v2}, Lcom/crittercism/internal/ar;->c()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/crittercism/internal/dk;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    iget-boolean v1, p0, Lcom/crittercism/internal/dk;->e:Z

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/crittercism/internal/ax;->C()Lcom/crittercism/internal/ax;

    move-result-object v1

    iget-object v1, v1, Lcom/crittercism/internal/ax;->A:Lcom/crittercism/internal/ds;

    if-eqz v1, :cond_4

    const-string/jumbo v2, "shouldShowRateAppAlert"

    iget-object v3, v1, Lcom/crittercism/internal/ds;->a:Landroid/content/SharedPreferences;

    const-string/jumbo v4, "rateMyAppEnabled"

    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, v1, Lcom/crittercism/internal/ds;->a:Landroid/content/SharedPreferences;

    const-string/jumbo v4, "hasRatedApp"

    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v1}, Lcom/crittercism/internal/ds;->a()I

    move-result v3

    iget-object v4, v1, Lcom/crittercism/internal/ds;->a:Landroid/content/SharedPreferences;

    const-string/jumbo v5, "rateAfterNumLoads"

    invoke-interface {v4, v5, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-lt v3, v4, :cond_3

    iget-object v5, v1, Lcom/crittercism/internal/ds;->a:Landroid/content/SharedPreferences;

    const-string/jumbo v6, "remindAfterNumLoads"

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    sub-int/2addr v3, v4

    rem-int/2addr v3, v5

    if-nez v3, :cond_3

    const/4 v0, 0x1

    :cond_3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lcom/crittercism/internal/dk;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v0, "message"

    invoke-virtual {v1}, Lcom/crittercism/internal/ds;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/crittercism/internal/dk;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v0, "title"

    invoke-virtual {v1}, Lcom/crittercism/internal/ds;->c()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/crittercism/internal/dk;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_4
    return-void
.end method
