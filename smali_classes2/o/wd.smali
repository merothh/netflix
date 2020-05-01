.class public Lo/wd;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/DataSource$Factory;


# instance fields
.field private final a:Lo/wU;

.field private final b:Lo/wf;

.field private final c:Landroid/content/Context;

.field private final d:Lo/vY;

.field private final e:Lo/tP;

.field private final g:Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;

.field private final h:Lo/vt;

.field private final i:Lo/tG;

.field private final j:Lo/tw;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lo/wf;Lo/tP;Lo/wU;Lo/vY;Lo/tw;Lo/tG;Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;Lo/vt;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lo/wd;->c:Landroid/content/Context;

    .line 40
    iput-object p2, p0, Lo/wd;->b:Lo/wf;

    .line 41
    iput-object p3, p0, Lo/wd;->e:Lo/tP;

    .line 42
    iput-object p4, p0, Lo/wd;->a:Lo/wU;

    .line 43
    iput-object p5, p0, Lo/wd;->d:Lo/vY;

    .line 44
    iput-object p6, p0, Lo/wd;->j:Lo/tw;

    .line 45
    iput-object p7, p0, Lo/wd;->i:Lo/tG;

    .line 46
    iput-object p8, p0, Lo/wd;->g:Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;

    .line 47
    iput-object p9, p0, Lo/wd;->h:Lo/vt;

    return-void
.end method

.method private a()Lcom/google/android/exoplayer2/upstream/DataSource;
    .locals 7

    .line 59
    iget-object v0, p0, Lo/wd;->d:Lo/vY;

    iget-object v1, p0, Lo/wd;->b:Lo/wf;

    iget-object v2, p0, Lo/wd;->a:Lo/wU;

    iget-object v3, p0, Lo/wd;->e:Lo/tP;

    iget-object v4, p0, Lo/wd;->j:Lo/tw;

    iget-object v5, p0, Lo/wd;->i:Lo/tG;

    iget-object v6, p0, Lo/wd;->g:Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;

    invoke-interface/range {v0 .. v6}, Lo/vY;->c(Lo/wf;Lo/wU;Lo/wa;Lo/tw;Lo/tG;Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;)Lcom/google/android/exoplayer2/upstream/DataSource;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public createDataSource()Lcom/google/android/exoplayer2/upstream/DataSource;
    .locals 4

    .line 52
    invoke-direct {p0}, Lo/wd;->a()Lcom/google/android/exoplayer2/upstream/DataSource;

    move-result-object v0

    .line 53
    new-instance v1, Lcom/google/android/exoplayer2/upstream/DefaultDataSource;

    iget-object v2, p0, Lo/wd;->c:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v0}, Lcom/google/android/exoplayer2/upstream/DefaultDataSource;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/upstream/TransferListener;Lcom/google/android/exoplayer2/upstream/DataSource;)V

    .line 54
    new-instance v0, Lo/vZ;

    iget-object v2, p0, Lo/wd;->e:Lo/tP;

    iget-object v3, p0, Lo/wd;->h:Lo/vt;

    invoke-direct {v0, v2, v1, v3}, Lo/vZ;-><init>(Lo/tP;Lcom/google/android/exoplayer2/upstream/DataSource;Lo/vt;)V

    return-object v0
.end method
