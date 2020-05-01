.class public Lcom/airbnb/epoxy/Carousel$Padding;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/epoxy/Carousel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Padding"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/epoxy/Carousel$Padding$PaddingType;
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:I

.field public final h:Lcom/airbnb/epoxy/Carousel$Padding$PaddingType;


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_7

    .line 463
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 467
    :cond_1
    check-cast p1, Lcom/airbnb/epoxy/Carousel$Padding;

    .line 469
    iget v2, p0, Lcom/airbnb/epoxy/Carousel$Padding;->c:I

    iget v3, p1, Lcom/airbnb/epoxy/Carousel$Padding;->c:I

    if-eq v2, v3, :cond_2

    return v1

    .line 472
    :cond_2
    iget v2, p0, Lcom/airbnb/epoxy/Carousel$Padding;->a:I

    iget v3, p1, Lcom/airbnb/epoxy/Carousel$Padding;->a:I

    if-eq v2, v3, :cond_3

    return v1

    .line 475
    :cond_3
    iget v2, p0, Lcom/airbnb/epoxy/Carousel$Padding;->d:I

    iget v3, p1, Lcom/airbnb/epoxy/Carousel$Padding;->d:I

    if-eq v2, v3, :cond_4

    return v1

    .line 478
    :cond_4
    iget v2, p0, Lcom/airbnb/epoxy/Carousel$Padding;->b:I

    iget v3, p1, Lcom/airbnb/epoxy/Carousel$Padding;->b:I

    if-eq v2, v3, :cond_5

    return v1

    .line 481
    :cond_5
    iget v2, p0, Lcom/airbnb/epoxy/Carousel$Padding;->e:I

    iget p1, p1, Lcom/airbnb/epoxy/Carousel$Padding;->e:I

    if-ne v2, p1, :cond_6

    goto :goto_0

    :cond_6
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_7
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 486
    iget v0, p0, Lcom/airbnb/epoxy/Carousel$Padding;->c:I

    mul-int/lit8 v0, v0, 0x1f

    .line 487
    iget v1, p0, Lcom/airbnb/epoxy/Carousel$Padding;->a:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 488
    iget v1, p0, Lcom/airbnb/epoxy/Carousel$Padding;->d:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 489
    iget v1, p0, Lcom/airbnb/epoxy/Carousel$Padding;->b:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 490
    iget v1, p0, Lcom/airbnb/epoxy/Carousel$Padding;->e:I

    add-int/2addr v0, v1

    return v0
.end method
