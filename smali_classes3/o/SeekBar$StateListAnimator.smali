.class final Lo/SeekBar$StateListAnimator;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/SeekBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "StateListAnimator"
.end annotation


# instance fields
.field private b:F

.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lo/SeekBar$StateListAnimator;-><init>(FIILo/amc;)V

    return-void
.end method

.method public constructor <init>(FI)V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lo/SeekBar$StateListAnimator;->b:F

    iput p2, p0, Lo/SeekBar$StateListAnimator;->c:I

    return-void
.end method

.method public synthetic constructor <init>(FIILo/amc;)V
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const/4 p2, 0x0

    .line 52
    :cond_1
    invoke-direct {p0, p1, p2}, Lo/SeekBar$StateListAnimator;-><init>(FI)V

    return-void
.end method


# virtual methods
.method public final b(I)V
    .locals 0

    .line 52
    iput p1, p0, Lo/SeekBar$StateListAnimator;->c:I

    return-void
.end method

.method public final d()I
    .locals 1

    .line 52
    iget v0, p0, Lo/SeekBar$StateListAnimator;->c:I

    return v0
.end method

.method public final e()F
    .locals 1

    .line 52
    iget v0, p0, Lo/SeekBar$StateListAnimator;->b:F

    return v0
.end method

.method public final e(F)V
    .locals 0

    .line 52
    iput p1, p0, Lo/SeekBar$StateListAnimator;->b:F

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lo/SeekBar$StateListAnimator;

    if-eqz v0, :cond_0

    check-cast p1, Lo/SeekBar$StateListAnimator;

    iget v0, p0, Lo/SeekBar$StateListAnimator;->b:F

    iget v1, p1, Lo/SeekBar$StateListAnimator;->b:F

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lo/SeekBar$StateListAnimator;->c:I

    iget p1, p1, Lo/SeekBar$StateListAnimator;->c:I

    if-ne v0, p1, :cond_0

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

    iget v0, p0, Lo/SeekBar$StateListAnimator;->b:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lo/SeekBar$StateListAnimator;->c:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Dot(radius="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo/SeekBar$StateListAnimator;->b:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", alpha="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo/SeekBar$StateListAnimator;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
