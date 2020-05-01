.class public Lo/BlackLevelPattern;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/BlackLevelPattern$TaskDescription;
    }
.end annotation


# instance fields
.field private final a:Lo/RuntimePermissionPresenter;

.field private final b:Lo/HighSpeedVideoConfiguration;

.field private final c:Lo/Face;

.field private final d:Lo/Face;

.field private final e:Lo/Face;

.field private final f:Lo/Face;

.field private final g:I

.field private final h:Lo/HighSpeedVideoConfiguration;

.field private final i:Ljava/lang/String;

.field private final j:Lo/HighSpeedVideoConfiguration;

.field private final n:I

.field private final o:Z


# direct methods
.method private constructor <init>(Lo/BlackLevelPattern$TaskDescription;)V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-static {}, Lo/GeofenceHardwareService;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "PoolConfig()"

    .line 43
    invoke-static {v0}, Lo/GeofenceHardwareService;->e(Ljava/lang/String;)V

    .line 46
    :cond_0
    invoke-static {p1}, Lo/BlackLevelPattern$TaskDescription;->e(Lo/BlackLevelPattern$TaskDescription;)Lo/Face;

    move-result-object v0

    if-nez v0, :cond_1

    .line 47
    invoke-static {}, Lo/MarshalQueryable;->e()Lo/Face;

    move-result-object v0

    goto :goto_0

    .line 48
    :cond_1
    invoke-static {p1}, Lo/BlackLevelPattern$TaskDescription;->e(Lo/BlackLevelPattern$TaskDescription;)Lo/Face;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lo/BlackLevelPattern;->c:Lo/Face;

    .line 50
    invoke-static {p1}, Lo/BlackLevelPattern$TaskDescription;->c(Lo/BlackLevelPattern$TaskDescription;)Lo/HighSpeedVideoConfiguration;

    move-result-object v0

    if-nez v0, :cond_2

    .line 51
    invoke-static {}, Lo/MarshalQueryableStreamConfigurationDuration;->c()Lo/MarshalQueryableStreamConfigurationDuration;

    move-result-object v0

    goto :goto_1

    .line 52
    :cond_2
    invoke-static {p1}, Lo/BlackLevelPattern$TaskDescription;->c(Lo/BlackLevelPattern$TaskDescription;)Lo/HighSpeedVideoConfiguration;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lo/BlackLevelPattern;->b:Lo/HighSpeedVideoConfiguration;

    .line 54
    invoke-static {p1}, Lo/BlackLevelPattern$TaskDescription;->d(Lo/BlackLevelPattern$TaskDescription;)Lo/Face;

    move-result-object v0

    if-nez v0, :cond_3

    .line 55
    invoke-static {}, Lo/MarshalQueryableBoolean;->e()Lo/Face;

    move-result-object v0

    goto :goto_2

    .line 56
    :cond_3
    invoke-static {p1}, Lo/BlackLevelPattern$TaskDescription;->d(Lo/BlackLevelPattern$TaskDescription;)Lo/Face;

    move-result-object v0

    :goto_2
    iput-object v0, p0, Lo/BlackLevelPattern;->e:Lo/Face;

    .line 58
    invoke-static {p1}, Lo/BlackLevelPattern$TaskDescription;->a(Lo/BlackLevelPattern$TaskDescription;)Lo/RuntimePermissionPresenter;

    move-result-object v0

    if-nez v0, :cond_4

    .line 59
    invoke-static {}, Lo/PackageOptimizationInfo;->b()Lo/PackageOptimizationInfo;

    move-result-object v0

    goto :goto_3

    .line 60
    :cond_4
    invoke-static {p1}, Lo/BlackLevelPattern$TaskDescription;->a(Lo/BlackLevelPattern$TaskDescription;)Lo/RuntimePermissionPresenter;

    move-result-object v0

    :goto_3
    iput-object v0, p0, Lo/BlackLevelPattern;->a:Lo/RuntimePermissionPresenter;

    .line 62
    invoke-static {p1}, Lo/BlackLevelPattern$TaskDescription;->b(Lo/BlackLevelPattern$TaskDescription;)Lo/Face;

    move-result-object v0

    if-nez v0, :cond_5

    .line 63
    invoke-static {}, Lo/MarshalQueryableHighSpeedVideoConfiguration;->e()Lo/Face;

    move-result-object v0

    goto :goto_4

    .line 64
    :cond_5
    invoke-static {p1}, Lo/BlackLevelPattern$TaskDescription;->b(Lo/BlackLevelPattern$TaskDescription;)Lo/Face;

    move-result-object v0

    :goto_4
    iput-object v0, p0, Lo/BlackLevelPattern;->d:Lo/Face;

    .line 66
    invoke-static {p1}, Lo/BlackLevelPattern$TaskDescription;->j(Lo/BlackLevelPattern$TaskDescription;)Lo/HighSpeedVideoConfiguration;

    move-result-object v0

    if-nez v0, :cond_6

    .line 67
    invoke-static {}, Lo/MarshalQueryableStreamConfigurationDuration;->c()Lo/MarshalQueryableStreamConfigurationDuration;

    move-result-object v0

    goto :goto_5

    .line 68
    :cond_6
    invoke-static {p1}, Lo/BlackLevelPattern$TaskDescription;->j(Lo/BlackLevelPattern$TaskDescription;)Lo/HighSpeedVideoConfiguration;

    move-result-object v0

    :goto_5
    iput-object v0, p0, Lo/BlackLevelPattern;->h:Lo/HighSpeedVideoConfiguration;

    .line 70
    invoke-static {p1}, Lo/BlackLevelPattern$TaskDescription;->h(Lo/BlackLevelPattern$TaskDescription;)Lo/Face;

    move-result-object v0

    if-nez v0, :cond_7

    .line 71
    invoke-static {}, Lo/MarshalQueryableEnum;->d()Lo/Face;

    move-result-object v0

    goto :goto_6

    .line 72
    :cond_7
    invoke-static {p1}, Lo/BlackLevelPattern$TaskDescription;->h(Lo/BlackLevelPattern$TaskDescription;)Lo/Face;

    move-result-object v0

    :goto_6
    iput-object v0, p0, Lo/BlackLevelPattern;->f:Lo/Face;

    .line 74
    invoke-static {p1}, Lo/BlackLevelPattern$TaskDescription;->f(Lo/BlackLevelPattern$TaskDescription;)Lo/HighSpeedVideoConfiguration;

    move-result-object v0

    if-nez v0, :cond_8

    .line 75
    invoke-static {}, Lo/MarshalQueryableStreamConfigurationDuration;->c()Lo/MarshalQueryableStreamConfigurationDuration;

    move-result-object v0

    goto :goto_7

    .line 76
    :cond_8
    invoke-static {p1}, Lo/BlackLevelPattern$TaskDescription;->f(Lo/BlackLevelPattern$TaskDescription;)Lo/HighSpeedVideoConfiguration;

    move-result-object v0

    :goto_7
    iput-object v0, p0, Lo/BlackLevelPattern;->j:Lo/HighSpeedVideoConfiguration;

    .line 79
    invoke-static {p1}, Lo/BlackLevelPattern$TaskDescription;->g(Lo/BlackLevelPattern$TaskDescription;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_9

    const-string v0, "legacy"

    goto :goto_8

    :cond_9
    invoke-static {p1}, Lo/BlackLevelPattern$TaskDescription;->g(Lo/BlackLevelPattern$TaskDescription;)Ljava/lang/String;

    move-result-object v0

    :goto_8
    iput-object v0, p0, Lo/BlackLevelPattern;->i:Ljava/lang/String;

    .line 80
    invoke-static {p1}, Lo/BlackLevelPattern$TaskDescription;->i(Lo/BlackLevelPattern$TaskDescription;)I

    move-result v0

    iput v0, p0, Lo/BlackLevelPattern;->g:I

    .line 82
    invoke-static {p1}, Lo/BlackLevelPattern$TaskDescription;->o(Lo/BlackLevelPattern$TaskDescription;)I

    move-result v0

    if-lez v0, :cond_a

    .line 83
    invoke-static {p1}, Lo/BlackLevelPattern$TaskDescription;->o(Lo/BlackLevelPattern$TaskDescription;)I

    move-result v0

    goto :goto_9

    :cond_a
    const/high16 v0, 0x400000

    :goto_9
    iput v0, p0, Lo/BlackLevelPattern;->n:I

    .line 85
    invoke-static {p1}, Lo/BlackLevelPattern$TaskDescription;->l(Lo/BlackLevelPattern$TaskDescription;)Z

    move-result p1

    iput-boolean p1, p0, Lo/BlackLevelPattern;->o:Z

    .line 86
    invoke-static {}, Lo/GeofenceHardwareService;->a()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 87
    invoke-static {}, Lo/GeofenceHardwareService;->b()V

    :cond_b
    return-void
.end method

.method synthetic constructor <init>(Lo/BlackLevelPattern$TaskDescription;Lo/BlackLevelPattern$5;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lo/BlackLevelPattern;-><init>(Lo/BlackLevelPattern$TaskDescription;)V

    return-void
.end method

.method public static n()Lo/BlackLevelPattern$TaskDescription;
    .locals 2

    .line 140
    new-instance v0, Lo/BlackLevelPattern$TaskDescription;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/BlackLevelPattern$TaskDescription;-><init>(Lo/BlackLevelPattern$5;)V

    return-object v0
.end method


# virtual methods
.method public a()Lo/RuntimePermissionPresenter;
    .locals 1

    .line 100
    iget-object v0, p0, Lo/BlackLevelPattern;->a:Lo/RuntimePermissionPresenter;

    return-object v0
.end method

.method public b()Lo/HighSpeedVideoConfiguration;
    .locals 1

    .line 108
    iget-object v0, p0, Lo/BlackLevelPattern;->h:Lo/HighSpeedVideoConfiguration;

    return-object v0
.end method

.method public c()Lo/HighSpeedVideoConfiguration;
    .locals 1

    .line 96
    iget-object v0, p0, Lo/BlackLevelPattern;->b:Lo/HighSpeedVideoConfiguration;

    return-object v0
.end method

.method public d()Lo/Face;
    .locals 1

    .line 104
    iget-object v0, p0, Lo/BlackLevelPattern;->d:Lo/Face;

    return-object v0
.end method

.method public e()Lo/Face;
    .locals 1

    .line 92
    iget-object v0, p0, Lo/BlackLevelPattern;->c:Lo/Face;

    return-object v0
.end method

.method public f()Lo/Face;
    .locals 1

    .line 112
    iget-object v0, p0, Lo/BlackLevelPattern;->e:Lo/Face;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .line 124
    iget-object v0, p0, Lo/BlackLevelPattern;->i:Ljava/lang/String;

    return-object v0
.end method

.method public h()I
    .locals 1

    .line 128
    iget v0, p0, Lo/BlackLevelPattern;->g:I

    return v0
.end method

.method public i()Lo/HighSpeedVideoConfiguration;
    .locals 1

    .line 120
    iget-object v0, p0, Lo/BlackLevelPattern;->j:Lo/HighSpeedVideoConfiguration;

    return-object v0
.end method

.method public j()Lo/Face;
    .locals 1

    .line 116
    iget-object v0, p0, Lo/BlackLevelPattern;->f:Lo/Face;

    return-object v0
.end method

.method public k()I
    .locals 1

    .line 132
    iget v0, p0, Lo/BlackLevelPattern;->n:I

    return v0
.end method

.method public o()Z
    .locals 1

    .line 136
    iget-boolean v0, p0, Lo/BlackLevelPattern;->o:Z

    return v0
.end method
