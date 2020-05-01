.class public final Lo/sP;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lo/sP;",
        ">;"
    }
.end annotation


# instance fields
.field private a:I

.field private final b:Ljava/lang/String;

.field private c:I

.field private d:I

.field private e:I

.field private f:[Ljava/lang/String;

.field private final i:J


# direct methods
.method public constructor <init>(Lo/sO;)V
    .locals 2

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-virtual {p1}, Lo/sO;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/sP;->b:Ljava/lang/String;

    .line 49
    invoke-virtual {p1}, Lo/sO;->b()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lo/sP;->i:J

    .line 50
    invoke-virtual {p1}, Lo/sO;->c()I

    move-result v0

    iput v0, p0, Lo/sP;->c:I

    .line 51
    invoke-virtual {p1}, Lo/sO;->i()I

    move-result v0

    iput v0, p0, Lo/sP;->a:I

    .line 52
    invoke-virtual {p1}, Lo/sO;->f()I

    move-result v0

    iput v0, p0, Lo/sP;->e:I

    .line 53
    invoke-virtual {p1}, Lo/sO;->h()I

    move-result v0

    iput v0, p0, Lo/sP;->d:I

    .line 55
    invoke-virtual {p1}, Lo/sO;->a()Ljava/util/List;

    move-result-object p1

    .line 56
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lo/sP;->f:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .line 123
    iget-wide v0, p0, Lo/sP;->i:J

    return-wide v0
.end method

.method public b()Z
    .locals 3

    .line 84
    iget-object v0, p0, Lo/sP;->b:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/sP;->f:[Ljava/lang/String;

    if-eqz v0, :cond_0

    array-length v2, v0

    if-lez v2, :cond_0

    aget-object v0, v0, v1

    invoke-static {v0}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public c(Lo/sP;)I
    .locals 0

    if-ne p0, p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public c()[Ljava/lang/String;
    .locals 1

    .line 77
    iget-object v0, p0, Lo/sP;->f:[Ljava/lang/String;

    return-object v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 16
    check-cast p1, Lo/sP;

    invoke-virtual {p0, p1}, Lo/sP;->c(Lo/sP;)I

    move-result p1

    return p1
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Lo/sP;->b:Ljava/lang/String;

    return-object v0
.end method

.method public e()F
    .locals 2

    .line 68
    iget v0, p0, Lo/sP;->d:I

    if-eqz v0, :cond_0

    .line 69
    iget v1, p0, Lo/sP;->e:I

    div-int/2addr v1, v0

    int-to-float v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TrickplayUrl: width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo/sP;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo/sP;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " aspect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo/sP;->e:I

    int-to-float v1, v1

    iget v2, p0, Lo/sP;->d:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", url:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/sP;->f:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
