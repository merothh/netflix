.class final Lo/MessageQueue$ActionBar;
.super Lo/PooledStringWriter$TaskDescription;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/MessageQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ActionBar"
.end annotation


# instance fields
.field private a:Ljava/lang/Integer;

.field private b:Ljava/lang/Integer;

.field private c:Ljava/lang/Integer;

.field private d:Ljava/lang/Float;

.field private e:Ljava/lang/Integer;

.field private f:Ljava/lang/Integer;

.field private g:Ljava/lang/Integer;

.field private h:Landroidx/recyclerview/widget/RecyclerView$SharedElementCallback;

.field private i:Ljava/lang/Float;

.field private j:Lo/PooledStringWriter$Activity;

.field private k:Ljava/lang/Boolean;

.field private l:Ljava/lang/Integer;

.field private m:Ljava/lang/Boolean;

.field private n:Ljava/lang/Integer;

.field private o:Ljava/lang/Boolean;

.field private q:Ljava/lang/Integer;

.field private r:Ljava/lang/Integer;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 292
    invoke-direct {p0}, Lo/PooledStringWriter$TaskDescription;-><init>()V

    return-void
.end method

.method private constructor <init>(Lo/PooledStringWriter;)V
    .locals 1

    .line 294
    invoke-direct {p0}, Lo/PooledStringWriter$TaskDescription;-><init>()V

    .line 295
    invoke-virtual {p1}, Lo/PooledStringWriter;->a()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lo/MessageQueue$ActionBar;->a:Ljava/lang/Integer;

    .line 296
    invoke-virtual {p1}, Lo/PooledStringWriter;->c()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lo/MessageQueue$ActionBar;->d:Ljava/lang/Float;

    .line 297
    invoke-virtual {p1}, Lo/PooledStringWriter;->d()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lo/MessageQueue$ActionBar;->c:Ljava/lang/Integer;

    .line 298
    invoke-virtual {p1}, Lo/PooledStringWriter;->e()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lo/MessageQueue$ActionBar;->e:Ljava/lang/Integer;

    .line 299
    invoke-virtual {p1}, Lo/PooledStringWriter;->b()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lo/MessageQueue$ActionBar;->b:Ljava/lang/Integer;

    .line 300
    invoke-virtual {p1}, Lo/PooledStringWriter;->i()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lo/MessageQueue$ActionBar;->f:Ljava/lang/Integer;

    .line 301
    invoke-virtual {p1}, Lo/PooledStringWriter;->f()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lo/MessageQueue$ActionBar;->i:Ljava/lang/Float;

    .line 302
    invoke-virtual {p1}, Lo/PooledStringWriter;->h()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lo/MessageQueue$ActionBar;->g:Ljava/lang/Integer;

    .line 303
    invoke-virtual {p1}, Lo/PooledStringWriter;->j()Landroidx/recyclerview/widget/RecyclerView$SharedElementCallback;

    move-result-object v0

    iput-object v0, p0, Lo/MessageQueue$ActionBar;->h:Landroidx/recyclerview/widget/RecyclerView$SharedElementCallback;

    .line 304
    invoke-virtual {p1}, Lo/PooledStringWriter;->g()Lo/PooledStringWriter$Activity;

    move-result-object v0

    iput-object v0, p0, Lo/MessageQueue$ActionBar;->j:Lo/PooledStringWriter$Activity;

    .line 305
    invoke-virtual {p1}, Lo/PooledStringWriter;->n()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lo/MessageQueue$ActionBar;->l:Ljava/lang/Integer;

    .line 306
    invoke-virtual {p1}, Lo/PooledStringWriter;->l()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lo/MessageQueue$ActionBar;->m:Ljava/lang/Boolean;

    .line 307
    invoke-virtual {p1}, Lo/PooledStringWriter;->o()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lo/MessageQueue$ActionBar;->o:Ljava/lang/Boolean;

    .line 308
    invoke-virtual {p1}, Lo/PooledStringWriter;->k()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lo/MessageQueue$ActionBar;->k:Ljava/lang/Boolean;

    .line 309
    invoke-virtual {p1}, Lo/PooledStringWriter;->m()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lo/MessageQueue$ActionBar;->n:Ljava/lang/Integer;

    .line 310
    invoke-virtual {p1}, Lo/PooledStringWriter;->p()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lo/MessageQueue$ActionBar;->q:Ljava/lang/Integer;

    .line 311
    invoke-virtual {p1}, Lo/PooledStringWriter;->q()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lo/MessageQueue$ActionBar;->r:Ljava/lang/Integer;

    return-void
.end method

.method synthetic constructor <init>(Lo/PooledStringWriter;Lo/MessageQueue$1;)V
    .locals 0

    .line 274
    invoke-direct {p0, p1}, Lo/MessageQueue$ActionBar;-><init>(Lo/PooledStringWriter;)V

    return-void
.end method


# virtual methods
.method public a(F)Lo/PooledStringWriter$TaskDescription;
    .locals 0

    .line 345
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lo/MessageQueue$ActionBar;->i:Ljava/lang/Float;

    return-object p0
.end method

.method public a(I)Lo/PooledStringWriter$TaskDescription;
    .locals 0

    .line 315
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lo/MessageQueue$ActionBar;->a:Ljava/lang/Integer;

    return-object p0
.end method

.method public b(F)Lo/PooledStringWriter$TaskDescription;
    .locals 0

    .line 320
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lo/MessageQueue$ActionBar;->d:Ljava/lang/Float;

    return-object p0
.end method

.method public b(I)Lo/PooledStringWriter$TaskDescription;
    .locals 0

    .line 335
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lo/MessageQueue$ActionBar;->b:Ljava/lang/Integer;

    return-object p0
.end method

.method public b(Z)Lo/PooledStringWriter$TaskDescription;
    .locals 0

    .line 375
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lo/MessageQueue$ActionBar;->o:Ljava/lang/Boolean;

    return-object p0
.end method

.method public c(I)Lo/PooledStringWriter$TaskDescription;
    .locals 0

    .line 340
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lo/MessageQueue$ActionBar;->f:Ljava/lang/Integer;

    return-object p0
.end method

.method public c(Z)Lo/PooledStringWriter$TaskDescription;
    .locals 0

    .line 380
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lo/MessageQueue$ActionBar;->k:Ljava/lang/Boolean;

    return-object p0
.end method

.method public c()Lo/PooledStringWriter;
    .locals 22

    move-object/from16 v0, p0

    .line 401
    iget-object v1, v0, Lo/MessageQueue$ActionBar;->a:Ljava/lang/Integer;

    const-string v2, ""

    if-nez v1, :cond_0

    .line 402
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " numberOfItemsPerPage"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 404
    :cond_0
    iget-object v1, v0, Lo/MessageQueue$ActionBar;->d:Ljava/lang/Float;

    if-nez v1, :cond_1

    .line 405
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " aspectRatio"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 407
    :cond_1
    iget-object v1, v0, Lo/MessageQueue$ActionBar;->c:Ljava/lang/Integer;

    if-nez v1, :cond_2

    .line 408
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " numberOfPagesToScrollOnFling"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 410
    :cond_2
    iget-object v1, v0, Lo/MessageQueue$ActionBar;->e:Ljava/lang/Integer;

    if-nez v1, :cond_3

    .line 411
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " millisecondsPerInch"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 413
    :cond_3
    iget-object v1, v0, Lo/MessageQueue$ActionBar;->b:Ljava/lang/Integer;

    if-nez v1, :cond_4

    .line 414
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " itemPadding"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 416
    :cond_4
    iget-object v1, v0, Lo/MessageQueue$ActionBar;->f:Ljava/lang/Integer;

    if-nez v1, :cond_5

    .line 417
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " listPadding"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 419
    :cond_5
    iget-object v1, v0, Lo/MessageQueue$ActionBar;->i:Ljava/lang/Float;

    if-nez v1, :cond_6

    .line 420
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " peekRatio"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 422
    :cond_6
    iget-object v1, v0, Lo/MessageQueue$ActionBar;->g:Ljava/lang/Integer;

    if-nez v1, :cond_7

    .line 423
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " maxHeight"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 425
    :cond_7
    iget-object v1, v0, Lo/MessageQueue$ActionBar;->l:Ljava/lang/Integer;

    if-nez v1, :cond_8

    .line 426
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " viewType"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 428
    :cond_8
    iget-object v1, v0, Lo/MessageQueue$ActionBar;->m:Ljava/lang/Boolean;

    if-nez v1, :cond_9

    .line 429
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " freeScroll"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 431
    :cond_9
    iget-object v1, v0, Lo/MessageQueue$ActionBar;->o:Ljava/lang/Boolean;

    if-nez v1, :cond_a

    .line 432
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " lightTheme"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 434
    :cond_a
    iget-object v1, v0, Lo/MessageQueue$ActionBar;->k:Ljava/lang/Boolean;

    if-nez v1, :cond_b

    .line 435
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " hasCirclePlaceholder"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 437
    :cond_b
    iget-object v1, v0, Lo/MessageQueue$ActionBar;->n:Ljava/lang/Integer;

    if-nez v1, :cond_c

    .line 438
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " rowCount"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 440
    :cond_c
    iget-object v1, v0, Lo/MessageQueue$ActionBar;->q:Ljava/lang/Integer;

    if-nez v1, :cond_d

    .line 441
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " rowOrientation"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 443
    :cond_d
    iget-object v1, v0, Lo/MessageQueue$ActionBar;->r:Ljava/lang/Integer;

    if-nez v1, :cond_e

    .line 444
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " adjustStrategy"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 446
    :cond_e
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 449
    new-instance v1, Lo/MessageQueue;

    move-object v3, v1

    iget-object v2, v0, Lo/MessageQueue$ActionBar;->a:Ljava/lang/Integer;

    .line 450
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v2, v0, Lo/MessageQueue$ActionBar;->d:Ljava/lang/Float;

    .line 451
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v5

    iget-object v2, v0, Lo/MessageQueue$ActionBar;->c:Ljava/lang/Integer;

    .line 452
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v2, v0, Lo/MessageQueue$ActionBar;->e:Ljava/lang/Integer;

    .line 453
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object v2, v0, Lo/MessageQueue$ActionBar;->b:Ljava/lang/Integer;

    .line 454
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget-object v2, v0, Lo/MessageQueue$ActionBar;->f:Ljava/lang/Integer;

    .line 455
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iget-object v2, v0, Lo/MessageQueue$ActionBar;->i:Ljava/lang/Float;

    .line 456
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v10

    iget-object v2, v0, Lo/MessageQueue$ActionBar;->g:Ljava/lang/Integer;

    .line 457
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v11

    iget-object v12, v0, Lo/MessageQueue$ActionBar;->h:Landroidx/recyclerview/widget/RecyclerView$SharedElementCallback;

    iget-object v13, v0, Lo/MessageQueue$ActionBar;->j:Lo/PooledStringWriter$Activity;

    iget-object v2, v0, Lo/MessageQueue$ActionBar;->l:Ljava/lang/Integer;

    .line 460
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v14

    iget-object v2, v0, Lo/MessageQueue$ActionBar;->m:Ljava/lang/Boolean;

    .line 461
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    iget-object v2, v0, Lo/MessageQueue$ActionBar;->o:Ljava/lang/Boolean;

    .line 462
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v16

    iget-object v2, v0, Lo/MessageQueue$ActionBar;->k:Ljava/lang/Boolean;

    .line 463
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    iget-object v2, v0, Lo/MessageQueue$ActionBar;->n:Ljava/lang/Integer;

    .line 464
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v18

    iget-object v2, v0, Lo/MessageQueue$ActionBar;->q:Ljava/lang/Integer;

    .line 465
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v19

    iget-object v2, v0, Lo/MessageQueue$ActionBar;->r:Ljava/lang/Integer;

    .line 466
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v20

    const/16 v21, 0x0

    invoke-direct/range {v3 .. v21}, Lo/MessageQueue;-><init>(IFIIIIFILandroidx/recyclerview/widget/RecyclerView$SharedElementCallback;Lo/PooledStringWriter$Activity;IZZZIIILo/MessageQueue$1;)V

    return-object v1

    .line 447
    :cond_f
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Missing required properties:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public d(I)Lo/PooledStringWriter$TaskDescription;
    .locals 0

    .line 325
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lo/MessageQueue$ActionBar;->c:Ljava/lang/Integer;

    return-object p0
.end method

.method public d(Landroidx/recyclerview/widget/RecyclerView$SharedElementCallback;)Lo/PooledStringWriter$TaskDescription;
    .locals 0

    .line 355
    iput-object p1, p0, Lo/MessageQueue$ActionBar;->h:Landroidx/recyclerview/widget/RecyclerView$SharedElementCallback;

    return-object p0
.end method

.method public d(Lo/PooledStringWriter$Activity;)Lo/PooledStringWriter$TaskDescription;
    .locals 0

    .line 360
    iput-object p1, p0, Lo/MessageQueue$ActionBar;->j:Lo/PooledStringWriter$Activity;

    return-object p0
.end method

.method public e(I)Lo/PooledStringWriter$TaskDescription;
    .locals 0

    .line 330
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lo/MessageQueue$ActionBar;->e:Ljava/lang/Integer;

    return-object p0
.end method

.method public e(Z)Lo/PooledStringWriter$TaskDescription;
    .locals 0

    .line 370
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lo/MessageQueue$ActionBar;->m:Ljava/lang/Boolean;

    return-object p0
.end method

.method public f(I)Lo/PooledStringWriter$TaskDescription;
    .locals 0

    .line 390
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lo/MessageQueue$ActionBar;->q:Ljava/lang/Integer;

    return-object p0
.end method

.method public g(I)Lo/PooledStringWriter$TaskDescription;
    .locals 0

    .line 365
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lo/MessageQueue$ActionBar;->l:Ljava/lang/Integer;

    return-object p0
.end method

.method public h(I)Lo/PooledStringWriter$TaskDescription;
    .locals 0

    .line 350
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lo/MessageQueue$ActionBar;->g:Ljava/lang/Integer;

    return-object p0
.end method

.method public i(I)Lo/PooledStringWriter$TaskDescription;
    .locals 0

    .line 395
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lo/MessageQueue$ActionBar;->r:Ljava/lang/Integer;

    return-object p0
.end method

.method public j(I)Lo/PooledStringWriter$TaskDescription;
    .locals 0

    .line 385
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lo/MessageQueue$ActionBar;->n:Ljava/lang/Integer;

    return-object p0
.end method
