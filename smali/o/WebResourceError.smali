.class public final Lo/WebResourceError;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final a:I

.field private final b:Ljava/lang/String;

.field private final c:I

.field private final d:I

.field private final e:I

.field private i:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Ljava/lang/String;IIIILandroid/graphics/Rect;)V
    .locals 1

    const-string v0, "tag"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tapAreaRect"

    invoke-static {p6, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/WebResourceError;->b:Ljava/lang/String;

    iput p2, p0, Lo/WebResourceError;->c:I

    iput p3, p0, Lo/WebResourceError;->e:I

    iput p4, p0, Lo/WebResourceError;->a:I

    iput p5, p0, Lo/WebResourceError;->d:I

    iput-object p6, p0, Lo/WebResourceError;->i:Landroid/graphics/Rect;

    return-void
.end method

.method public static synthetic d(Lo/WebResourceError;Ljava/lang/String;IIIILandroid/graphics/Rect;ILjava/lang/Object;)Lo/WebResourceError;
    .locals 4

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    iget-object p1, p0, Lo/WebResourceError;->b:Ljava/lang/String;

    :cond_0
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_1

    iget p2, p0, Lo/WebResourceError;->c:I

    :cond_1
    move p8, p2

    and-int/lit8 p2, p7, 0x4

    if-eqz p2, :cond_2

    iget p3, p0, Lo/WebResourceError;->e:I

    :cond_2
    move v0, p3

    and-int/lit8 p2, p7, 0x8

    if-eqz p2, :cond_3

    iget p4, p0, Lo/WebResourceError;->a:I

    :cond_3
    move v1, p4

    and-int/lit8 p2, p7, 0x10

    if-eqz p2, :cond_4

    iget p5, p0, Lo/WebResourceError;->d:I

    :cond_4
    move v2, p5

    and-int/lit8 p2, p7, 0x20

    if-eqz p2, :cond_5

    iget-object p6, p0, Lo/WebResourceError;->i:Landroid/graphics/Rect;

    :cond_5
    move-object v3, p6

    move-object p2, p0

    move-object p3, p1

    move p4, p8

    move p5, v0

    move p6, v1

    move p7, v2

    move-object p8, v3

    invoke-virtual/range {p2 .. p8}, Lo/WebResourceError;->d(Ljava/lang/String;IIIILandroid/graphics/Rect;)Lo/WebResourceError;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lo/WebResourceError;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final b()I
    .locals 1

    .line 12
    iget v0, p0, Lo/WebResourceError;->d:I

    return v0
.end method

.method public final c()I
    .locals 1

    .line 11
    iget v0, p0, Lo/WebResourceError;->a:I

    return v0
.end method

.method public final d()I
    .locals 1

    .line 10
    iget v0, p0, Lo/WebResourceError;->e:I

    return v0
.end method

.method public final d(Ljava/lang/String;IIIILandroid/graphics/Rect;)Lo/WebResourceError;
    .locals 8

    const-string v0, "tag"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tapAreaRect"

    invoke-static {p6, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lo/WebResourceError;

    move-object v1, v0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lo/WebResourceError;-><init>(Ljava/lang/String;IIIILandroid/graphics/Rect;)V

    return-object v0
.end method

.method public final e()I
    .locals 1

    .line 9
    iget v0, p0, Lo/WebResourceError;->c:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lo/WebResourceError;

    if-eqz v0, :cond_0

    check-cast p1, Lo/WebResourceError;

    iget-object v0, p0, Lo/WebResourceError;->b:Ljava/lang/String;

    iget-object v1, p1, Lo/WebResourceError;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lo/WebResourceError;->c:I

    iget v1, p1, Lo/WebResourceError;->c:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lo/WebResourceError;->e:I

    iget v1, p1, Lo/WebResourceError;->e:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lo/WebResourceError;->a:I

    iget v1, p1, Lo/WebResourceError;->a:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lo/WebResourceError;->d:I

    iget v1, p1, Lo/WebResourceError;->d:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lo/WebResourceError;->i:Landroid/graphics/Rect;

    iget-object p1, p1, Lo/WebResourceError;->i:Landroid/graphics/Rect;

    invoke-static {v0, p1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lo/WebResourceError;->b:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lo/WebResourceError;->c:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lo/WebResourceError;->e:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lo/WebResourceError;->a:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lo/WebResourceError;->d:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lo/WebResourceError;->i:Landroid/graphics/Rect;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public final i()Landroid/graphics/Rect;
    .locals 1

    .line 13
    iget-object v0, p0, Lo/WebResourceError;->i:Landroid/graphics/Rect;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NetflixTagItem(tag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/WebResourceError;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", validFrame="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo/WebResourceError;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", startFrame="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo/WebResourceError;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", endFrame="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo/WebResourceError;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", resetFrame="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo/WebResourceError;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", tapAreaRect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/WebResourceError;->i:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
