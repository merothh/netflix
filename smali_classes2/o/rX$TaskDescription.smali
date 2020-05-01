.class final Lo/rX$TaskDescription;
.super Lo/sO$ActionBar;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/rX;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TaskDescription"
.end annotation


# instance fields
.field private a:Ljava/lang/Integer;

.field private b:Ljava/lang/Integer;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/Integer;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/Integer;

.field private g:Ljava/lang/Integer;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/Integer;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 187
    invoke-direct {p0}, Lo/sO$ActionBar;-><init>()V

    return-void
.end method

.method private constructor <init>(Lo/sO;)V
    .locals 1

    .line 189
    invoke-direct {p0}, Lo/sO$ActionBar;-><init>()V

    .line 190
    invoke-virtual {p1}, Lo/sO;->a()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lo/rX$TaskDescription;->c:Ljava/util/List;

    .line 191
    invoke-virtual {p1}, Lo/sO;->b()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lo/rX$TaskDescription;->d:Ljava/lang/Integer;

    .line 192
    invoke-virtual {p1}, Lo/sO;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/rX$TaskDescription;->e:Ljava/lang/String;

    .line 193
    invoke-virtual {p1}, Lo/sO;->c()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lo/rX$TaskDescription;->a:Ljava/lang/Integer;

    .line 194
    invoke-virtual {p1}, Lo/sO;->e()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lo/rX$TaskDescription;->b:Ljava/lang/Integer;

    .line 195
    invoke-virtual {p1}, Lo/sO;->h()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lo/rX$TaskDescription;->g:Ljava/lang/Integer;

    .line 196
    invoke-virtual {p1}, Lo/sO;->g()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/rX$TaskDescription;->i:Ljava/lang/String;

    .line 197
    invoke-virtual {p1}, Lo/sO;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lo/rX$TaskDescription;->j:Ljava/lang/Integer;

    .line 198
    invoke-virtual {p1}, Lo/sO;->i()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lo/rX$TaskDescription;->f:Ljava/lang/Integer;

    return-void
.end method

.method synthetic constructor <init>(Lo/sO;Lo/rX$5;)V
    .locals 0

    .line 177
    invoke-direct {p0, p1}, Lo/rX$TaskDescription;-><init>(Lo/sO;)V

    return-void
.end method


# virtual methods
.method public a()Lo/sO;
    .locals 12

    .line 257
    iget-object v0, p0, Lo/rX$TaskDescription;->c:Ljava/util/List;

    const-string v1, ""

    if-nez v0, :cond_0

    .line 258
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " urls"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 260
    :cond_0
    iget-object v0, p0, Lo/rX$TaskDescription;->d:Ljava/lang/Integer;

    if-nez v0, :cond_1

    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " size"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 263
    :cond_1
    iget-object v0, p0, Lo/rX$TaskDescription;->e:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " downloadableId"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 266
    :cond_2
    iget-object v0, p0, Lo/rX$TaskDescription;->a:Ljava/lang/Integer;

    if-nez v0, :cond_3

    .line 267
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " width"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 269
    :cond_3
    iget-object v0, p0, Lo/rX$TaskDescription;->b:Ljava/lang/Integer;

    if-nez v0, :cond_4

    .line 270
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " interval"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 272
    :cond_4
    iget-object v0, p0, Lo/rX$TaskDescription;->g:Ljava/lang/Integer;

    if-nez v0, :cond_5

    .line 273
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " pixelsAspectY"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 275
    :cond_5
    iget-object v0, p0, Lo/rX$TaskDescription;->i:Ljava/lang/String;

    if-nez v0, :cond_6

    .line 276
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 278
    :cond_6
    iget-object v0, p0, Lo/rX$TaskDescription;->j:Ljava/lang/Integer;

    if-nez v0, :cond_7

    .line 279
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " pixelsAspectX"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 281
    :cond_7
    iget-object v0, p0, Lo/rX$TaskDescription;->f:Ljava/lang/Integer;

    if-nez v0, :cond_8

    .line 282
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " height"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 284
    :cond_8
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 287
    new-instance v0, Lo/sq;

    iget-object v3, p0, Lo/rX$TaskDescription;->c:Ljava/util/List;

    iget-object v1, p0, Lo/rX$TaskDescription;->d:Ljava/lang/Integer;

    .line 289
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v5, p0, Lo/rX$TaskDescription;->e:Ljava/lang/String;

    iget-object v1, p0, Lo/rX$TaskDescription;->a:Ljava/lang/Integer;

    .line 291
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v1, p0, Lo/rX$TaskDescription;->b:Ljava/lang/Integer;

    .line 292
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object v1, p0, Lo/rX$TaskDescription;->g:Ljava/lang/Integer;

    .line 293
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget-object v9, p0, Lo/rX$TaskDescription;->i:Ljava/lang/String;

    iget-object v1, p0, Lo/rX$TaskDescription;->j:Ljava/lang/Integer;

    .line 295
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iget-object v1, p0, Lo/rX$TaskDescription;->f:Ljava/lang/Integer;

    .line 296
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v11

    move-object v2, v0

    invoke-direct/range {v2 .. v11}, Lo/sq;-><init>(Ljava/util/List;ILjava/lang/String;IIILjava/lang/String;II)V

    return-object v0

    .line 285
    :cond_9
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

.method public d(Ljava/util/List;)Lo/sO$ActionBar;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lo/sO$ActionBar;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 205
    iput-object p1, p0, Lo/rX$TaskDescription;->c:Ljava/util/List;

    return-object p0

    .line 203
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null urls"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
