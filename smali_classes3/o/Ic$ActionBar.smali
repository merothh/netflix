.class final Lo/Ic$ActionBar;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Ic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ActionBar"
.end annotation


# instance fields
.field private a:F

.field private final b:I

.field private final d:I


# direct methods
.method public constructor <init>(IIF)V
    .locals 0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lo/Ic$ActionBar;->b:I

    iput p2, p0, Lo/Ic$ActionBar;->d:I

    iput p3, p0, Lo/Ic$ActionBar;->a:F

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 78
    iget v0, p0, Lo/Ic$ActionBar;->b:I

    return v0
.end method

.method public final a(F)V
    .locals 0

    .line 80
    iput p1, p0, Lo/Ic$ActionBar;->a:F

    return-void
.end method

.method public final d()I
    .locals 1

    .line 79
    iget v0, p0, Lo/Ic$ActionBar;->d:I

    return v0
.end method

.method public final e()F
    .locals 1

    .line 80
    iget v0, p0, Lo/Ic$ActionBar;->a:F

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lo/Ic$ActionBar;

    if-eqz v0, :cond_0

    check-cast p1, Lo/Ic$ActionBar;

    iget v0, p0, Lo/Ic$ActionBar;->b:I

    iget v1, p1, Lo/Ic$ActionBar;->b:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lo/Ic$ActionBar;->d:I

    iget v1, p1, Lo/Ic$ActionBar;->d:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lo/Ic$ActionBar;->a:F

    iget p1, p1, Lo/Ic$ActionBar;->a:F

    invoke-static {v0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-nez p1, :cond_0

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
    .locals 2

    iget v0, p0, Lo/Ic$ActionBar;->b:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lo/Ic$ActionBar;->d:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lo/Ic$ActionBar;->a:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ModelVisibility(position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo/Ic$ActionBar;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", selectedImagesIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo/Ic$ActionBar;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", percentVisible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo/Ic$ActionBar;->a:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
