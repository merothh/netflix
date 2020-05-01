.class public Lo/Uc;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static k:Z = false


# instance fields
.field a:Z

.field b:Lcom/netflix/mediaclient/ui/player/IPlayerFragment$PlayerFragmentState;

.field c:Z

.field d:Z

.field e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public f:Z

.field g:Z

.field h:Z

.field i:Z

.field j:J

.field l:Z

.field m:Z

.field private n:J

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:I

.field private t:Z

.field private v:Z

.field private w:Z

.field private x:Z

.field private y:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lo/Uc;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 55
    sget-object v0, Lcom/netflix/mediaclient/ui/player/IPlayerFragment$PlayerFragmentState;->c:Lcom/netflix/mediaclient/ui/player/IPlayerFragment$PlayerFragmentState;

    iput-object v0, p0, Lo/Uc;->b:Lcom/netflix/mediaclient/ui/player/IPlayerFragment$PlayerFragmentState;

    const/4 v0, 0x0

    .line 62
    iput-boolean v0, p0, Lo/Uc;->c:Z

    .line 74
    iput-boolean v0, p0, Lo/Uc;->r:Z

    .line 81
    iput-boolean v0, p0, Lo/Uc;->d:Z

    const-wide/16 v1, -0x1

    .line 107
    iput-wide v1, p0, Lo/Uc;->j:J

    .line 112
    iput-boolean v0, p0, Lo/Uc;->m:Z

    .line 117
    iput v0, p0, Lo/Uc;->s:I

    .line 122
    iput-boolean v0, p0, Lo/Uc;->p:Z

    .line 124
    iput-boolean v0, p0, Lo/Uc;->t:Z

    .line 126
    iput-boolean v0, p0, Lo/Uc;->q:Z

    .line 128
    iput-boolean v0, p0, Lo/Uc;->x:Z

    .line 133
    iput-boolean v0, p0, Lo/Uc;->v:Z

    .line 146
    iput-boolean v0, p0, Lo/Uc;->w:Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    const-wide/16 v0, 0x0

    .line 165
    iput-wide v0, p0, Lo/Uc;->n:J

    const/4 v0, 0x0

    .line 166
    iput-boolean v0, p0, Lo/Uc;->c:Z

    .line 167
    iput-boolean v0, p0, Lo/Uc;->f:Z

    .line 168
    iput-boolean v0, p0, Lo/Uc;->i:Z

    .line 169
    iput-boolean v0, p0, Lo/Uc;->g:Z

    .line 170
    iput-boolean v0, p0, Lo/Uc;->h:Z

    .line 171
    iput-boolean v0, p0, Lo/Uc;->r:Z

    .line 172
    iput-boolean v0, p0, Lo/Uc;->d:Z

    .line 173
    iput-boolean v0, p0, Lo/Uc;->a:Z

    const-wide/16 v1, -0x1

    .line 174
    iput-wide v1, p0, Lo/Uc;->j:J

    .line 175
    iput-boolean v0, p0, Lo/Uc;->l:Z

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 306
    iput-boolean p1, p0, Lo/Uc;->p:Z

    return-void
.end method

.method public b()J
    .locals 2

    .line 184
    iget-wide v0, p0, Lo/Uc;->n:J

    return-wide v0
.end method

.method public b(Z)V
    .locals 0

    .line 149
    iput-boolean p1, p0, Lo/Uc;->f:Z

    return-void
.end method

.method public c(I)V
    .locals 0

    .line 348
    iput p1, p0, Lo/Uc;->s:I

    return-void
.end method

.method public c(Z)V
    .locals 0

    .line 328
    iput-boolean p1, p0, Lo/Uc;->x:Z

    return-void
.end method

.method public c()Z
    .locals 1

    .line 283
    iget-boolean v0, p0, Lo/Uc;->o:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public d(J)V
    .locals 0

    .line 274
    iput-wide p1, p0, Lo/Uc;->n:J

    return-void
.end method

.method public d(Z)V
    .locals 0

    .line 314
    iput-boolean p1, p0, Lo/Uc;->t:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 316
    iput-boolean p1, p0, Lo/Uc;->q:Z

    :cond_0
    return-void
.end method

.method public d()Z
    .locals 1

    .line 302
    iget-boolean v0, p0, Lo/Uc;->p:Z

    return v0
.end method

.method public e()V
    .locals 1

    const/4 v0, 0x1

    .line 294
    iput-boolean v0, p0, Lo/Uc;->o:Z

    return-void
.end method

.method public e(Z)V
    .locals 0

    .line 336
    iput-boolean p1, p0, Lo/Uc;->v:Z

    return-void
.end method

.method public f()V
    .locals 1

    .line 344
    iget v0, p0, Lo/Uc;->s:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lo/Uc;->s:I

    return-void
.end method

.method public g()Z
    .locals 1

    .line 325
    iget-boolean v0, p0, Lo/Uc;->x:Z

    return v0
.end method

.method public h(Z)V
    .locals 0

    .line 366
    iput-boolean p1, p0, Lo/Uc;->w:Z

    return-void
.end method

.method public h()Z
    .locals 1

    .line 310
    iget-boolean v0, p0, Lo/Uc;->t:Z

    return v0
.end method

.method public i()I
    .locals 1

    .line 340
    iget v0, p0, Lo/Uc;->s:I

    return v0
.end method

.method public j(Z)V
    .locals 0

    .line 356
    iput-boolean p1, p0, Lo/Uc;->y:Z

    return-void
.end method

.method public j()Z
    .locals 1

    .line 322
    iget-boolean v0, p0, Lo/Uc;->q:Z

    return v0
.end method

.method public k()Z
    .locals 1

    .line 352
    iget-boolean v0, p0, Lo/Uc;->y:Z

    return v0
.end method

.method public m()Z
    .locals 2

    .line 360
    iget-boolean v0, p0, Lo/Uc;->w:Z

    const/4 v1, 0x0

    .line 361
    iput-boolean v1, p0, Lo/Uc;->w:Z

    return v0
.end method
