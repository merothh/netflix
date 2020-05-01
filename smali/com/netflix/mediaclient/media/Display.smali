.class public Lcom/netflix/mediaclient/media/Display;
.super Ljava/lang/Object;
.source "Display.java"


# instance fields
.field private height:I

.field private width:I

.field private x:I

.field private y:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput p1, p0, Lcom/netflix/mediaclient/media/Display;->width:I

    .line 27
    iput p2, p0, Lcom/netflix/mediaclient/media/Display;->height:I

    .line 28
    iput p3, p0, Lcom/netflix/mediaclient/media/Display;->x:I

    .line 29
    iput p4, p0, Lcom/netflix/mediaclient/media/Display;->y:I

    .line 30
    return-void
.end method

.method public static isDisplayUpdated(Lcom/netflix/mediaclient/media/Display;IIII)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 106
    if-nez p0, :cond_1

    .line 122
    :cond_0
    :goto_0
    return v0

    .line 110
    :cond_1
    iget v1, p0, Lcom/netflix/mediaclient/media/Display;->height:I

    if-ne p2, v1, :cond_0

    .line 113
    iget v1, p0, Lcom/netflix/mediaclient/media/Display;->x:I

    if-ne p3, v1, :cond_0

    .line 116
    iget v1, p0, Lcom/netflix/mediaclient/media/Display;->y:I

    if-ne p4, v1, :cond_0

    .line 119
    iget v1, p0, Lcom/netflix/mediaclient/media/Display;->width:I

    if-ne p1, v1, :cond_0

    .line 122
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 69
    if-ne p0, p1, :cond_1

    .line 91
    :cond_0
    :goto_0
    return v0

    .line 72
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 73
    goto :goto_0

    .line 75
    :cond_2
    instance-of v2, p1, Lcom/netflix/mediaclient/media/Display;

    if-nez v2, :cond_3

    move v0, v1

    .line 76
    goto :goto_0

    .line 78
    :cond_3
    check-cast p1, Lcom/netflix/mediaclient/media/Display;

    .line 79
    iget v2, p0, Lcom/netflix/mediaclient/media/Display;->height:I

    iget v3, p1, Lcom/netflix/mediaclient/media/Display;->height:I

    if-eq v2, v3, :cond_4

    move v0, v1

    .line 80
    goto :goto_0

    .line 82
    :cond_4
    iget v2, p0, Lcom/netflix/mediaclient/media/Display;->x:I

    iget v3, p1, Lcom/netflix/mediaclient/media/Display;->x:I

    if-eq v2, v3, :cond_5

    move v0, v1

    .line 83
    goto :goto_0

    .line 85
    :cond_5
    iget v2, p0, Lcom/netflix/mediaclient/media/Display;->y:I

    iget v3, p1, Lcom/netflix/mediaclient/media/Display;->y:I

    if-eq v2, v3, :cond_6

    move v0, v1

    .line 86
    goto :goto_0

    .line 88
    :cond_6
    iget v2, p0, Lcom/netflix/mediaclient/media/Display;->width:I

    iget v3, p1, Lcom/netflix/mediaclient/media/Display;->width:I

    if-eq v2, v3, :cond_0

    move v0, v1

    .line 89
    goto :goto_0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 140
    iget v0, p0, Lcom/netflix/mediaclient/media/Display;->height:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 131
    iget v0, p0, Lcom/netflix/mediaclient/media/Display;->width:I

    return v0
.end method

.method public getX()I
    .locals 1

    .prologue
    .line 149
    iget v0, p0, Lcom/netflix/mediaclient/media/Display;->x:I

    return v0
.end method

.method public getY()I
    .locals 1

    .prologue
    .line 158
    iget v0, p0, Lcom/netflix/mediaclient/media/Display;->y:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 56
    .line 58
    iget v0, p0, Lcom/netflix/mediaclient/media/Display;->height:I

    add-int/lit8 v0, v0, 0x1f

    .line 59
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/netflix/mediaclient/media/Display;->x:I

    add-int/2addr v0, v1

    .line 60
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/netflix/mediaclient/media/Display;->y:I

    add-int/2addr v0, v1

    .line 61
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/netflix/mediaclient/media/Display;->width:I

    add-int/2addr v0, v1

    .line 62
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Display [height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/media/Display;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/media/Display;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", x="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/media/Display;->x:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/media/Display;->y:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
