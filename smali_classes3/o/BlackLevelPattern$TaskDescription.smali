.class public Lo/BlackLevelPattern$TaskDescription;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/BlackLevelPattern;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TaskDescription"
.end annotation


# instance fields
.field private a:Lo/RuntimePermissionPresenter;

.field private b:Lo/Face;

.field private c:Lo/HighSpeedVideoConfiguration;

.field private d:Lo/Face;

.field private e:Lo/Face;

.field private f:I

.field private g:Ljava/lang/String;

.field private h:Lo/HighSpeedVideoConfiguration;

.field private i:Lo/HighSpeedVideoConfiguration;

.field private j:Lo/Face;

.field private k:I

.field private l:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lo/BlackLevelPattern$5;)V
    .locals 0

    .line 143
    invoke-direct {p0}, Lo/BlackLevelPattern$TaskDescription;-><init>()V

    return-void
.end method

.method static synthetic a(Lo/BlackLevelPattern$TaskDescription;)Lo/RuntimePermissionPresenter;
    .locals 0

    .line 143
    iget-object p0, p0, Lo/BlackLevelPattern$TaskDescription;->a:Lo/RuntimePermissionPresenter;

    return-object p0
.end method

.method static synthetic b(Lo/BlackLevelPattern$TaskDescription;)Lo/Face;
    .locals 0

    .line 143
    iget-object p0, p0, Lo/BlackLevelPattern$TaskDescription;->d:Lo/Face;

    return-object p0
.end method

.method static synthetic c(Lo/BlackLevelPattern$TaskDescription;)Lo/HighSpeedVideoConfiguration;
    .locals 0

    .line 143
    iget-object p0, p0, Lo/BlackLevelPattern$TaskDescription;->c:Lo/HighSpeedVideoConfiguration;

    return-object p0
.end method

.method static synthetic d(Lo/BlackLevelPattern$TaskDescription;)Lo/Face;
    .locals 0

    .line 143
    iget-object p0, p0, Lo/BlackLevelPattern$TaskDescription;->b:Lo/Face;

    return-object p0
.end method

.method static synthetic e(Lo/BlackLevelPattern$TaskDescription;)Lo/Face;
    .locals 0

    .line 143
    iget-object p0, p0, Lo/BlackLevelPattern$TaskDescription;->e:Lo/Face;

    return-object p0
.end method

.method static synthetic f(Lo/BlackLevelPattern$TaskDescription;)Lo/HighSpeedVideoConfiguration;
    .locals 0

    .line 143
    iget-object p0, p0, Lo/BlackLevelPattern$TaskDescription;->i:Lo/HighSpeedVideoConfiguration;

    return-object p0
.end method

.method static synthetic g(Lo/BlackLevelPattern$TaskDescription;)Ljava/lang/String;
    .locals 0

    .line 143
    iget-object p0, p0, Lo/BlackLevelPattern$TaskDescription;->g:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic h(Lo/BlackLevelPattern$TaskDescription;)Lo/Face;
    .locals 0

    .line 143
    iget-object p0, p0, Lo/BlackLevelPattern$TaskDescription;->j:Lo/Face;

    return-object p0
.end method

.method static synthetic i(Lo/BlackLevelPattern$TaskDescription;)I
    .locals 0

    .line 143
    iget p0, p0, Lo/BlackLevelPattern$TaskDescription;->f:I

    return p0
.end method

.method static synthetic j(Lo/BlackLevelPattern$TaskDescription;)Lo/HighSpeedVideoConfiguration;
    .locals 0

    .line 143
    iget-object p0, p0, Lo/BlackLevelPattern$TaskDescription;->h:Lo/HighSpeedVideoConfiguration;

    return-object p0
.end method

.method static synthetic l(Lo/BlackLevelPattern$TaskDescription;)Z
    .locals 0

    .line 143
    iget-boolean p0, p0, Lo/BlackLevelPattern$TaskDescription;->l:Z

    return p0
.end method

.method static synthetic o(Lo/BlackLevelPattern$TaskDescription;)I
    .locals 0

    .line 143
    iget p0, p0, Lo/BlackLevelPattern$TaskDescription;->k:I

    return p0
.end method


# virtual methods
.method public e()Lo/BlackLevelPattern;
    .locals 2

    .line 206
    new-instance v0, Lo/BlackLevelPattern;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lo/BlackLevelPattern;-><init>(Lo/BlackLevelPattern$TaskDescription;Lo/BlackLevelPattern$5;)V

    return-object v0
.end method
