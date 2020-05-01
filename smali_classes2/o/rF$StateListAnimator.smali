.class final Lo/rF$StateListAnimator;
.super Lo/sb$Activity;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/rF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "StateListAnimator"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/Boolean;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/media/manifest/Stream;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private n:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 238
    invoke-direct {p0}, Lo/sb$Activity;-><init>()V

    return-void
.end method

.method private constructor <init>(Lo/sb;)V
    .locals 1

    .line 240
    invoke-direct {p0}, Lo/sb$Activity;-><init>()V

    .line 241
    invoke-virtual {p1}, Lo/sb;->e()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lo/rF$StateListAnimator;->c:Ljava/util/List;

    .line 242
    invoke-virtual {p1}, Lo/sb;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/rF$StateListAnimator;->a:Ljava/lang/String;

    .line 243
    invoke-virtual {p1}, Lo/sb;->a()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lo/rF$StateListAnimator;->e:Ljava/lang/Boolean;

    .line 244
    invoke-virtual {p1}, Lo/sb;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/rF$StateListAnimator;->b:Ljava/lang/String;

    .line 245
    invoke-virtual {p1}, Lo/sb;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/rF$StateListAnimator;->d:Ljava/lang/String;

    .line 246
    invoke-virtual {p1}, Lo/sb;->g()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/rF$StateListAnimator;->j:Ljava/lang/String;

    .line 247
    invoke-virtual {p1}, Lo/sb;->h()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lo/rF$StateListAnimator;->f:Ljava/util/List;

    .line 248
    invoke-virtual {p1}, Lo/sb;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/rF$StateListAnimator;->g:Ljava/lang/String;

    .line 249
    invoke-virtual {p1}, Lo/sb;->f()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/rF$StateListAnimator;->i:Ljava/lang/String;

    .line 250
    invoke-virtual {p1}, Lo/sb;->i()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/rF$StateListAnimator;->h:Ljava/lang/String;

    .line 251
    invoke-virtual {p1}, Lo/sb;->l()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lo/rF$StateListAnimator;->n:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lo/sb;Lo/rF$3;)V
    .locals 0

    .line 226
    invoke-direct {p0, p1}, Lo/rF$StateListAnimator;-><init>(Lo/sb;)V

    return-void
.end method


# virtual methods
.method public b()Lo/sb;
    .locals 14

    .line 338
    iget-object v0, p0, Lo/rF$StateListAnimator;->c:Ljava/util/List;

    const-string v1, ""

    if-nez v0, :cond_0

    .line 339
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " disallowedSubtitleTracks"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 341
    :cond_0
    iget-object v0, p0, Lo/rF$StateListAnimator;->a:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 342
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " language"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 344
    :cond_1
    iget-object v0, p0, Lo/rF$StateListAnimator;->e:Ljava/lang/Boolean;

    if-nez v0, :cond_2

    .line 345
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " isNative"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 347
    :cond_2
    iget-object v0, p0, Lo/rF$StateListAnimator;->b:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 348
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " languageDescription"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 350
    :cond_3
    iget-object v0, p0, Lo/rF$StateListAnimator;->d:Ljava/lang/String;

    if-nez v0, :cond_4

    .line 351
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 353
    :cond_4
    iget-object v0, p0, Lo/rF$StateListAnimator;->f:Ljava/util/List;

    if-nez v0, :cond_5

    .line 354
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " streams"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 356
    :cond_5
    iget-object v0, p0, Lo/rF$StateListAnimator;->g:Ljava/lang/String;

    if-nez v0, :cond_6

    .line 357
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " trackType"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 359
    :cond_6
    iget-object v0, p0, Lo/rF$StateListAnimator;->i:Ljava/lang/String;

    if-nez v0, :cond_7

    .line 360
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " trackId"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 362
    :cond_7
    iget-object v0, p0, Lo/rF$StateListAnimator;->h:Ljava/lang/String;

    if-nez v0, :cond_8

    .line 363
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " newTrackId"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 365
    :cond_8
    iget-object v0, p0, Lo/rF$StateListAnimator;->n:Ljava/lang/String;

    if-nez v0, :cond_9

    .line 366
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " _channels"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 368
    :cond_9
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 371
    new-instance v0, Lo/sa;

    iget-object v3, p0, Lo/rF$StateListAnimator;->c:Ljava/util/List;

    iget-object v4, p0, Lo/rF$StateListAnimator;->a:Ljava/lang/String;

    iget-object v1, p0, Lo/rF$StateListAnimator;->e:Ljava/lang/Boolean;

    .line 374
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    iget-object v6, p0, Lo/rF$StateListAnimator;->b:Ljava/lang/String;

    iget-object v7, p0, Lo/rF$StateListAnimator;->d:Ljava/lang/String;

    iget-object v8, p0, Lo/rF$StateListAnimator;->j:Ljava/lang/String;

    iget-object v9, p0, Lo/rF$StateListAnimator;->f:Ljava/util/List;

    iget-object v10, p0, Lo/rF$StateListAnimator;->g:Ljava/lang/String;

    iget-object v11, p0, Lo/rF$StateListAnimator;->i:Ljava/lang/String;

    iget-object v12, p0, Lo/rF$StateListAnimator;->h:Ljava/lang/String;

    iget-object v13, p0, Lo/rF$StateListAnimator;->n:Ljava/lang/String;

    move-object v2, v0

    invoke-direct/range {v2 .. v13}, Lo/sa;-><init>(Ljava/util/List;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 369
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

.method public e(Ljava/util/List;)Lo/sb$Activity;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/media/manifest/Stream;",
            ">;)",
            "Lo/sb$Activity;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 300
    iput-object p1, p0, Lo/rF$StateListAnimator;->f:Ljava/util/List;

    return-object p0

    .line 298
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null streams"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
