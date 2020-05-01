.class abstract Lo/rY;
.super Lo/sI;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/rY$Application;
    }
.end annotation


# instance fields
.field private final a:I

.field private final b:I

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final d:I


# direct methods
.method constructor <init>(ILjava/util/Map;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;II)V"
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Lo/sI;-><init>()V

    .line 24
    iput p1, p0, Lo/rY;->d:I

    if-eqz p2, :cond_0

    .line 28
    iput-object p2, p0, Lo/rY;->c:Ljava/util/Map;

    .line 29
    iput p3, p0, Lo/rY;->b:I

    .line 30
    iput p4, p0, Lo/rY;->a:I

    return-void

    .line 26
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null downloadUrls"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a()I
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "midxOffset"
    .end annotation

    .line 48
    iget v0, p0, Lo/rY;->b:I

    return v0
.end method

.method public b()Ljava/util/Map;
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "downloadUrls"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lo/rY;->c:Ljava/util/Map;

    return-object v0
.end method

.method public c()I
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "midxSize"
    .end annotation

    .line 54
    iget v0, p0, Lo/rY;->a:I

    return v0
.end method

.method public d()I
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "size"
    .end annotation

    .line 36
    iget v0, p0, Lo/rY;->d:I

    return v0
.end method

.method public e()Lo/sI$TaskDescription;
    .locals 2

    .line 98
    new-instance v0, Lo/rY$Application;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lo/rY$Application;-><init>(Lo/sI;Lo/rY$1;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 72
    :cond_0
    instance-of v1, p1, Lo/sI;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 73
    check-cast p1, Lo/sI;

    .line 74
    iget v1, p0, Lo/rY;->d:I

    invoke-virtual {p1}, Lo/sI;->d()I

    move-result v3

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lo/rY;->c:Ljava/util/Map;

    .line 75
    invoke-virtual {p1}, Lo/sI;->b()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lo/rY;->b:I

    .line 76
    invoke-virtual {p1}, Lo/sI;->a()I

    move-result v3

    if-ne v1, v3, :cond_1

    iget v1, p0, Lo/rY;->a:I

    .line 77
    invoke-virtual {p1}, Lo/sI;->c()I

    move-result p1

    if-ne v1, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public hashCode()I
    .locals 3

    .line 86
    iget v0, p0, Lo/rY;->d:I

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int v0, v0, v1

    .line 88
    iget-object v2, p0, Lo/rY;->c:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 90
    iget v2, p0, Lo/rY;->b:I

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 92
    iget v1, p0, Lo/rY;->a:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SubtitleDownloadable{size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo/rY;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", downloadUrls="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/rY;->c:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", midxOffset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo/rY;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", midxSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo/rY;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
