.class Lo/mt$StateListAnimator;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/mt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "StateListAnimator"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private d:I

.field private e:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 295
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 298
    iput v0, p0, Lo/mt$StateListAnimator;->d:I

    return-void
.end method

.method synthetic constructor <init>(Lo/mt$2;)V
    .locals 0

    .line 295
    invoke-direct {p0}, Lo/mt$StateListAnimator;-><init>()V

    return-void
.end method


# virtual methods
.method a()Ljava/lang/String;
    .locals 1

    .line 311
    iget-object v0, p0, Lo/mt$StateListAnimator;->e:Ljava/lang/String;

    return-object v0
.end method

.method b()Ljava/lang/String;
    .locals 1

    .line 307
    iget-object v0, p0, Lo/mt$StateListAnimator;->a:Ljava/lang/String;

    return-object v0
.end method

.method declared-synchronized c()Lo/aeM$Application;
    .locals 5

    monitor-enter p0

    :try_start_0
    const-string v0, "MdxTargetPlayerState"

    const-string v1, "getVideoIds %s, %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 319
    iget-object v4, p0, Lo/mt$StateListAnimator;->a:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lo/mt$StateListAnimator;->e:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    .line 322
    :try_start_1
    iget-object v1, p0, Lo/mt$StateListAnimator;->a:Ljava/lang/String;

    iget-object v2, p0, Lo/mt$StateListAnimator;->e:Ljava/lang/String;

    invoke-static {v1, v2}, Lo/aeM;->c(Ljava/lang/String;Ljava/lang/String;)Lo/aeM$Application;

    move-result-object v0
    :try_end_1
    .catch Ljava/security/InvalidParameterException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    const-string v1, "MdxTargetPlayerState"

    const-string v2, "getVideoIds has exception."

    .line 324
    invoke-static {v1, v2}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 326
    :goto_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized c(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    monitor-enter p0

    .line 300
    :try_start_0
    iput-object p1, p0, Lo/mt$StateListAnimator;->a:Ljava/lang/String;

    .line 301
    iput-object p2, p0, Lo/mt$StateListAnimator;->e:Ljava/lang/String;

    .line 302
    iput p3, p0, Lo/mt$StateListAnimator;->d:I

    const-string p1, "MdxTargetPlayerState"

    const-string p2, "reset VideoInfo %s, %s, %d"

    const/4 p3, 0x3

    new-array p3, p3, [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 303
    iget-object v1, p0, Lo/mt$StateListAnimator;->a:Ljava/lang/String;

    aput-object v1, p3, v0

    const/4 v0, 0x1

    iget-object v1, p0, Lo/mt$StateListAnimator;->e:Ljava/lang/String;

    aput-object v1, p3, v0

    const/4 v0, 0x2

    iget v1, p0, Lo/mt$StateListAnimator;->d:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p3, v0

    invoke-static {p1, p2, p3}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 304
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method d()I
    .locals 1

    .line 315
    iget v0, p0, Lo/mt$StateListAnimator;->d:I

    return v0
.end method
