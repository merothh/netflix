.class final Lo/rV$TaskDescription;
.super Lo/sQ$StateListAnimator;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/rV;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TaskDescription"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/Boolean;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/sM;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lo/sI;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/lang/String;

.field private g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/Boolean;

.field private j:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private n:Ljava/lang/Boolean;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 248
    invoke-direct {p0}, Lo/sQ$StateListAnimator;-><init>()V

    return-void
.end method

.method private constructor <init>(Lo/sQ;)V
    .locals 1

    .line 250
    invoke-direct {p0}, Lo/sQ$StateListAnimator;-><init>()V

    .line 251
    invoke-virtual {p1}, Lo/sQ;->a()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lo/rV$TaskDescription;->e:Ljava/util/Map;

    .line 252
    invoke-virtual {p1}, Lo/sQ;->b()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lo/rV$TaskDescription;->d:Ljava/util/List;

    .line 253
    invoke-virtual {p1}, Lo/sQ;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/rV$TaskDescription;->a:Ljava/lang/String;

    .line 254
    invoke-virtual {p1}, Lo/sQ;->d()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lo/rV$TaskDescription;->c:Ljava/lang/Boolean;

    .line 255
    invoke-virtual {p1}, Lo/sQ;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/rV$TaskDescription;->b:Ljava/lang/String;

    .line 256
    invoke-virtual {p1}, Lo/sQ;->h()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/rV$TaskDescription;->f:Ljava/lang/String;

    .line 257
    invoke-virtual {p1}, Lo/sQ;->f()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lo/rV$TaskDescription;->i:Ljava/lang/Boolean;

    .line 258
    invoke-virtual {p1}, Lo/sQ;->i()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lo/rV$TaskDescription;->g:Ljava/util/Map;

    .line 259
    invoke-virtual {p1}, Lo/sQ;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/rV$TaskDescription;->h:Ljava/lang/String;

    .line 260
    invoke-virtual {p1}, Lo/sQ;->g()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/rV$TaskDescription;->j:Ljava/lang/String;

    .line 261
    invoke-virtual {p1}, Lo/sQ;->m()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/rV$TaskDescription;->l:Ljava/lang/String;

    .line 262
    invoke-virtual {p1}, Lo/sQ;->o()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lo/rV$TaskDescription;->n:Ljava/lang/Boolean;

    return-void
.end method

.method synthetic constructor <init>(Lo/sQ;Lo/rV$2;)V
    .locals 0

    .line 235
    invoke-direct {p0, p1}, Lo/rV$TaskDescription;-><init>(Lo/sQ;)V

    return-void
.end method


# virtual methods
.method public b(Ljava/util/Map;)Lo/sQ$StateListAnimator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lo/sI;",
            ">;)",
            "Lo/sQ$StateListAnimator;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 269
    iput-object p1, p0, Lo/rV$TaskDescription;->e:Ljava/util/Map;

    return-object p0

    .line 267
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null ttDownloadables"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c(Ljava/util/Map;)Lo/sQ$StateListAnimator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lo/sQ$StateListAnimator;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 313
    iput-object p1, p0, Lo/rV$TaskDescription;->g:Ljava/util/Map;

    return-object p0

    .line 311
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null downloadableIds"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c(Z)Lo/sQ$StateListAnimator;
    .locals 0

    .line 305
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lo/rV$TaskDescription;->i:Ljava/lang/Boolean;

    return-object p0
.end method

.method public e()Lo/sQ;
    .locals 15

    .line 348
    iget-object v0, p0, Lo/rV$TaskDescription;->e:Ljava/util/Map;

    const-string v1, ""

    if-nez v0, :cond_0

    .line 349
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ttDownloadables"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 351
    :cond_0
    iget-object v0, p0, Lo/rV$TaskDescription;->d:Ljava/util/List;

    if-nez v0, :cond_1

    .line 352
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " cdnlist"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 354
    :cond_1
    iget-object v0, p0, Lo/rV$TaskDescription;->a:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 355
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " trackType"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 357
    :cond_2
    iget-object v0, p0, Lo/rV$TaskDescription;->c:Ljava/lang/Boolean;

    if-nez v0, :cond_3

    .line 358
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " isForcedNarrative"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 360
    :cond_3
    iget-object v0, p0, Lo/rV$TaskDescription;->i:Ljava/lang/Boolean;

    if-nez v0, :cond_4

    .line 361
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " isNoneTrack"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 363
    :cond_4
    iget-object v0, p0, Lo/rV$TaskDescription;->g:Ljava/util/Map;

    if-nez v0, :cond_5

    .line 364
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " downloadableIds"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 366
    :cond_5
    iget-object v0, p0, Lo/rV$TaskDescription;->h:Ljava/lang/String;

    if-nez v0, :cond_6

    .line 367
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 369
    :cond_6
    iget-object v0, p0, Lo/rV$TaskDescription;->j:Ljava/lang/String;

    if-nez v0, :cond_7

    .line 370
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " type"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 372
    :cond_7
    iget-object v0, p0, Lo/rV$TaskDescription;->l:Ljava/lang/String;

    if-nez v0, :cond_8

    .line 373
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " newTrackId"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 375
    :cond_8
    iget-object v0, p0, Lo/rV$TaskDescription;->n:Ljava/lang/Boolean;

    if-nez v0, :cond_9

    .line 376
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " canDeviceRender"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 378
    :cond_9
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 381
    new-instance v0, Lo/sr;

    iget-object v3, p0, Lo/rV$TaskDescription;->e:Ljava/util/Map;

    iget-object v4, p0, Lo/rV$TaskDescription;->d:Ljava/util/List;

    iget-object v5, p0, Lo/rV$TaskDescription;->a:Ljava/lang/String;

    iget-object v1, p0, Lo/rV$TaskDescription;->c:Ljava/lang/Boolean;

    .line 385
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    iget-object v7, p0, Lo/rV$TaskDescription;->b:Ljava/lang/String;

    iget-object v8, p0, Lo/rV$TaskDescription;->f:Ljava/lang/String;

    iget-object v1, p0, Lo/rV$TaskDescription;->i:Ljava/lang/Boolean;

    .line 388
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    iget-object v10, p0, Lo/rV$TaskDescription;->g:Ljava/util/Map;

    iget-object v11, p0, Lo/rV$TaskDescription;->h:Ljava/lang/String;

    iget-object v12, p0, Lo/rV$TaskDescription;->j:Ljava/lang/String;

    iget-object v13, p0, Lo/rV$TaskDescription;->l:Ljava/lang/String;

    iget-object v1, p0, Lo/rV$TaskDescription;->n:Ljava/lang/Boolean;

    .line 393
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    move-object v2, v0

    invoke-direct/range {v2 .. v14}, Lo/sr;-><init>(Ljava/util/Map;Ljava/util/List;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZLjava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v0

    .line 379
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Missing required properties:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
