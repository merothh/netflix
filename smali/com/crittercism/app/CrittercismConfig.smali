.class public Lcom/crittercism/app/CrittercismConfig;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/util/List;

.field private k:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/crittercism/app/CrittercismConfig;->b:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/crittercism/app/CrittercismConfig;->c:Z

    iput-boolean v1, p0, Lcom/crittercism/app/CrittercismConfig;->d:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/crittercism/app/CrittercismConfig;->e:Z

    iput-boolean v1, p0, Lcom/crittercism/app/CrittercismConfig;->f:Z

    invoke-static {}, Lcom/crittercism/app/CrittercismConfig;->b()Z

    move-result v0

    iput-boolean v0, p0, Lcom/crittercism/app/CrittercismConfig;->g:Z

    const-string/jumbo v0, "com.crittercism/dumps"

    iput-object v0, p0, Lcom/crittercism/app/CrittercismConfig;->a:Ljava/lang/String;

    const-string/jumbo v0, "Developer Reply"

    iput-object v0, p0, Lcom/crittercism/app/CrittercismConfig;->h:Ljava/lang/String;

    iput-object v2, p0, Lcom/crittercism/app/CrittercismConfig;->i:Ljava/lang/String;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/crittercism/app/CrittercismConfig;->j:Ljava/util/List;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/crittercism/app/CrittercismConfig;->k:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/crittercism/app/CrittercismConfig;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/crittercism/app/CrittercismConfig;->b:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/crittercism/app/CrittercismConfig;->c:Z

    iput-boolean v1, p0, Lcom/crittercism/app/CrittercismConfig;->d:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/crittercism/app/CrittercismConfig;->e:Z

    iput-boolean v1, p0, Lcom/crittercism/app/CrittercismConfig;->f:Z

    invoke-static {}, Lcom/crittercism/app/CrittercismConfig;->b()Z

    move-result v0

    iput-boolean v0, p0, Lcom/crittercism/app/CrittercismConfig;->g:Z

    const-string/jumbo v0, "com.crittercism/dumps"

    iput-object v0, p0, Lcom/crittercism/app/CrittercismConfig;->a:Ljava/lang/String;

    const-string/jumbo v0, "Developer Reply"

    iput-object v0, p0, Lcom/crittercism/app/CrittercismConfig;->h:Ljava/lang/String;

    iput-object v2, p0, Lcom/crittercism/app/CrittercismConfig;->i:Ljava/lang/String;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/crittercism/app/CrittercismConfig;->j:Ljava/util/List;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/crittercism/app/CrittercismConfig;->k:Ljava/util/List;

    iget-object v0, p1, Lcom/crittercism/app/CrittercismConfig;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/crittercism/app/CrittercismConfig;->b:Ljava/lang/String;

    iget-boolean v0, p1, Lcom/crittercism/app/CrittercismConfig;->c:Z

    iput-boolean v0, p0, Lcom/crittercism/app/CrittercismConfig;->c:Z

    iget-boolean v0, p1, Lcom/crittercism/app/CrittercismConfig;->d:Z

    iput-boolean v0, p0, Lcom/crittercism/app/CrittercismConfig;->d:Z

    iget-boolean v0, p1, Lcom/crittercism/app/CrittercismConfig;->e:Z

    iput-boolean v0, p0, Lcom/crittercism/app/CrittercismConfig;->e:Z

    iget-boolean v0, p1, Lcom/crittercism/app/CrittercismConfig;->f:Z

    iput-boolean v0, p0, Lcom/crittercism/app/CrittercismConfig;->f:Z

    iget-boolean v0, p1, Lcom/crittercism/app/CrittercismConfig;->g:Z

    iput-boolean v0, p0, Lcom/crittercism/app/CrittercismConfig;->g:Z

    iget-object v0, p1, Lcom/crittercism/app/CrittercismConfig;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/crittercism/app/CrittercismConfig;->a:Ljava/lang/String;

    iget-object v0, p1, Lcom/crittercism/app/CrittercismConfig;->h:Ljava/lang/String;

    iput-object v0, p0, Lcom/crittercism/app/CrittercismConfig;->h:Ljava/lang/String;

    iget-object v0, p1, Lcom/crittercism/app/CrittercismConfig;->j:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/crittercism/app/CrittercismConfig;->setURLBlacklistPatterns(Ljava/util/List;)V

    iget-object v0, p1, Lcom/crittercism/app/CrittercismConfig;->k:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/crittercism/app/CrittercismConfig;->setPreserveQueryStringPatterns(Ljava/util/List;)V

    iget-object v0, p1, Lcom/crittercism/app/CrittercismConfig;->i:Ljava/lang/String;

    iput-object v0, p0, Lcom/crittercism/app/CrittercismConfig;->i:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/crittercism/app/CrittercismConfig;->b:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/crittercism/app/CrittercismConfig;->c:Z

    iput-boolean v1, p0, Lcom/crittercism/app/CrittercismConfig;->d:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/crittercism/app/CrittercismConfig;->e:Z

    iput-boolean v1, p0, Lcom/crittercism/app/CrittercismConfig;->f:Z

    invoke-static {}, Lcom/crittercism/app/CrittercismConfig;->b()Z

    move-result v0

    iput-boolean v0, p0, Lcom/crittercism/app/CrittercismConfig;->g:Z

    const-string/jumbo v0, "com.crittercism/dumps"

    iput-object v0, p0, Lcom/crittercism/app/CrittercismConfig;->a:Ljava/lang/String;

    const-string/jumbo v0, "Developer Reply"

    iput-object v0, p0, Lcom/crittercism/app/CrittercismConfig;->h:Ljava/lang/String;

    iput-object v2, p0, Lcom/crittercism/app/CrittercismConfig;->i:Ljava/lang/String;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/crittercism/app/CrittercismConfig;->j:Ljava/util/List;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/crittercism/app/CrittercismConfig;->k:Ljava/util/List;

    const-string/jumbo v0, "customVersionName"

    iget-object v1, p0, Lcom/crittercism/app/CrittercismConfig;->b:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/crittercism/app/CrittercismConfig;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/crittercism/app/CrittercismConfig;->b:Ljava/lang/String;

    const-string/jumbo v0, "includeVersionCode"

    iget-boolean v1, p0, Lcom/crittercism/app/CrittercismConfig;->d:Z

    invoke-static {p1, v0, v1}, Lcom/crittercism/app/CrittercismConfig;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/crittercism/app/CrittercismConfig;->d:Z

    const-string/jumbo v0, "installNdk"

    iget-boolean v1, p0, Lcom/crittercism/app/CrittercismConfig;->e:Z

    invoke-static {p1, v0, v1}, Lcom/crittercism/app/CrittercismConfig;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/crittercism/app/CrittercismConfig;->e:Z

    const-string/jumbo v0, "delaySendingAppLoad"

    iget-boolean v1, p0, Lcom/crittercism/app/CrittercismConfig;->c:Z

    invoke-static {p1, v0, v1}, Lcom/crittercism/app/CrittercismConfig;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/crittercism/app/CrittercismConfig;->c:Z

    const-string/jumbo v0, "shouldCollectLogcat"

    iget-boolean v1, p0, Lcom/crittercism/app/CrittercismConfig;->f:Z

    invoke-static {p1, v0, v1}, Lcom/crittercism/app/CrittercismConfig;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/crittercism/app/CrittercismConfig;->f:Z

    const-string/jumbo v0, "nativeDumpPath"

    iget-object v1, p0, Lcom/crittercism/app/CrittercismConfig;->a:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/crittercism/app/CrittercismConfig;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/crittercism/app/CrittercismConfig;->a:Ljava/lang/String;

    const-string/jumbo v0, "notificationTitle"

    iget-object v1, p0, Lcom/crittercism/app/CrittercismConfig;->h:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/crittercism/app/CrittercismConfig;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/crittercism/app/CrittercismConfig;->h:Ljava/lang/String;

    const-string/jumbo v0, "installApm"

    iget-boolean v1, p0, Lcom/crittercism/app/CrittercismConfig;->g:Z

    invoke-static {p1, v0, v1}, Lcom/crittercism/app/CrittercismConfig;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/crittercism/app/CrittercismConfig;->g:Z

    return-void
.end method

.method private static a(Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :cond_0
    return v0
.end method

.method private static a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p2

    :cond_0
    :goto_0
    return-object p2

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    if-nez p0, :cond_1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private static a(Lorg/json/JSONObject;Ljava/lang/String;Z)Z
    .locals 1

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    :cond_0
    :goto_0
    return p2

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static final b()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1

    invoke-virtual {p0}, Lcom/crittercism/app/CrittercismConfig;->getURLBlacklistPatterns()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final delaySendingAppLoad()Z
    .locals 1

    iget-boolean v0, p0, Lcom/crittercism/app/CrittercismConfig;->c:Z

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/crittercism/app/CrittercismConfig;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    check-cast p1, Lcom/crittercism/app/CrittercismConfig;

    iget-boolean v1, p0, Lcom/crittercism/app/CrittercismConfig;->c:Z

    iget-boolean v2, p1, Lcom/crittercism/app/CrittercismConfig;->c:Z

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/crittercism/app/CrittercismConfig;->f:Z

    iget-boolean v2, p1, Lcom/crittercism/app/CrittercismConfig;->f:Z

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/crittercism/app/CrittercismConfig;->isNdkCrashReportingEnabled()Z

    move-result v1

    invoke-virtual {p1}, Lcom/crittercism/app/CrittercismConfig;->isNdkCrashReportingEnabled()Z

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/crittercism/app/CrittercismConfig;->isOptmzEnabled()Z

    move-result v1

    invoke-virtual {p1}, Lcom/crittercism/app/CrittercismConfig;->isOptmzEnabled()Z

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/crittercism/app/CrittercismConfig;->isVersionCodeToBeIncludedInVersionString()Z

    move-result v1

    invoke-virtual {p1}, Lcom/crittercism/app/CrittercismConfig;->isVersionCodeToBeIncludedInVersionString()Z

    move-result v2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/crittercism/app/CrittercismConfig;->b:Ljava/lang/String;

    iget-object v2, p1, Lcom/crittercism/app/CrittercismConfig;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/crittercism/app/CrittercismConfig;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/crittercism/app/CrittercismConfig;->h:Ljava/lang/String;

    iget-object v2, p1, Lcom/crittercism/app/CrittercismConfig;->h:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/crittercism/app/CrittercismConfig;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/crittercism/app/CrittercismConfig;->a:Ljava/lang/String;

    iget-object v2, p1, Lcom/crittercism/app/CrittercismConfig;->a:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/crittercism/app/CrittercismConfig;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/crittercism/app/CrittercismConfig;->j:Ljava/util/List;

    iget-object v2, p1, Lcom/crittercism/app/CrittercismConfig;->j:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/crittercism/app/CrittercismConfig;->k:Ljava/util/List;

    iget-object v2, p1, Lcom/crittercism/app/CrittercismConfig;->k:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/crittercism/app/CrittercismConfig;->i:Ljava/lang/String;

    iget-object v2, p1, Lcom/crittercism/app/CrittercismConfig;->i:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/crittercism/app/CrittercismConfig;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final getCustomVersionName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/crittercism/app/CrittercismConfig;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getPreserveQueryStringPatterns()Ljava/util/List;
    .locals 2

    new-instance v0, Ljava/util/LinkedList;

    iget-object v1, p0, Lcom/crittercism/app/CrittercismConfig;->k:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final getRateMyAppTestTarget()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/crittercism/app/CrittercismConfig;->i:Ljava/lang/String;

    return-object v0
.end method

.method public getURLBlacklistPatterns()Ljava/util/List;
    .locals 2

    new-instance v0, Ljava/util/LinkedList;

    iget-object v1, p0, Lcom/crittercism/app/CrittercismConfig;->j:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/crittercism/app/CrittercismConfig;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/crittercism/app/CrittercismConfig;->a(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v3, p0, Lcom/crittercism/app/CrittercismConfig;->h:Ljava/lang/String;

    invoke-static {v3}, Lcom/crittercism/app/CrittercismConfig;->a(Ljava/lang/String;)I

    move-result v3

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget-object v3, p0, Lcom/crittercism/app/CrittercismConfig;->a:Ljava/lang/String;

    invoke-static {v3}, Lcom/crittercism/app/CrittercismConfig;->a(Ljava/lang/String;)I

    move-result v3

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget-object v3, p0, Lcom/crittercism/app/CrittercismConfig;->i:Ljava/lang/String;

    invoke-static {v3}, Lcom/crittercism/app/CrittercismConfig;->a(Ljava/lang/String;)I

    move-result v3

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget-object v3, p0, Lcom/crittercism/app/CrittercismConfig;->j:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->hashCode()I

    move-result v3

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget-object v3, p0, Lcom/crittercism/app/CrittercismConfig;->k:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->hashCode()I

    move-result v3

    add-int/2addr v3, v0

    iget-boolean v0, p0, Lcom/crittercism/app/CrittercismConfig;->c:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit8 v0, v0, 0x0

    shl-int/lit8 v4, v0, 0x1

    iget-boolean v0, p0, Lcom/crittercism/app/CrittercismConfig;->f:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v4

    shl-int/lit8 v4, v0, 0x1

    invoke-virtual {p0}, Lcom/crittercism/app/CrittercismConfig;->isNdkCrashReportingEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    add-int/2addr v0, v4

    shl-int/lit8 v4, v0, 0x1

    invoke-virtual {p0}, Lcom/crittercism/app/CrittercismConfig;->isOptmzEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    add-int/2addr v0, v4

    shl-int/lit8 v0, v0, 0x1

    invoke-virtual {p0}, Lcom/crittercism/app/CrittercismConfig;->isVersionCodeToBeIncludedInVersionString()Z

    move-result v4

    if-eqz v4, :cond_4

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v1, v3, 0x1f

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    return v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_2

    :cond_3
    move v0, v2

    goto :goto_3

    :cond_4
    move v1, v2

    goto :goto_4
.end method

.method public final isLogcatReportingEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/crittercism/app/CrittercismConfig;->f:Z

    return v0
.end method

.method public final isNdkCrashReportingEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/crittercism/app/CrittercismConfig;->e:Z

    return v0
.end method

.method public final isOptmzEnabled()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v0, p0, Lcom/crittercism/app/CrittercismConfig;->g:Z

    return v0
.end method

.method public final isServiceMonitoringEnabled()Z
    .locals 1

    invoke-virtual {p0}, Lcom/crittercism/app/CrittercismConfig;->isOptmzEnabled()Z

    move-result v0

    return v0
.end method

.method public final isVersionCodeToBeIncludedInVersionString()Z
    .locals 1

    iget-boolean v0, p0, Lcom/crittercism/app/CrittercismConfig;->d:Z

    return v0
.end method

.method public final setCustomVersionName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/crittercism/app/CrittercismConfig;->b:Ljava/lang/String;

    return-void
.end method

.method public final setDelaySendingAppLoad(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/crittercism/app/CrittercismConfig;->c:Z

    return-void
.end method

.method public final setLogcatReportingEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/crittercism/app/CrittercismConfig;->f:Z

    return-void
.end method

.method public final setNdkCrashReportingEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/crittercism/app/CrittercismConfig;->e:Z

    return-void
.end method

.method public final setOptmzEnabled(Z)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/crittercism/app/CrittercismConfig;->b()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    const-string/jumbo v0, "OPTMZ is currently only allowed for api levels 10 to 23.  APM will not be installed"

    invoke-static {v0}, Lcom/crittercism/internal/dw;->c(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/crittercism/app/CrittercismConfig;->g:Z

    goto :goto_0
.end method

.method public setPreserveQueryStringPatterns(Ljava/util/List;)V
    .locals 1

    iget-object v0, p0, Lcom/crittercism/app/CrittercismConfig;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/crittercism/app/CrittercismConfig;->k:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method public final setRateMyAppTestTarget(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/crittercism/app/CrittercismConfig;->i:Ljava/lang/String;

    return-void
.end method

.method public final setServiceMonitoringEnabled(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/crittercism/app/CrittercismConfig;->setOptmzEnabled(Z)V

    return-void
.end method

.method public setURLBlacklistPatterns(Ljava/util/List;)V
    .locals 1

    iget-object v0, p0, Lcom/crittercism/app/CrittercismConfig;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/crittercism/app/CrittercismConfig;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method public final setVersionCodeToBeIncludedInVersionString(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/crittercism/app/CrittercismConfig;->d:Z

    return-void
.end method
