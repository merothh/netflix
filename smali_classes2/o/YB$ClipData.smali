.class public final Lo/YB$ClipData;
.super Lo/YB;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/YB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ClipData"
.end annotation


# instance fields
.field private final c:I

.field private final d:F

.field private final e:I


# direct methods
.method public constructor <init>(IFI)V
    .locals 1

    const/4 v0, 0x0

    .line 51
    invoke-direct {p0, v0}, Lo/YB;-><init>(Lo/amc;)V

    iput p1, p0, Lo/YB$ClipData;->e:I

    iput p2, p0, Lo/YB$ClipData;->d:F

    iput p3, p0, Lo/YB$ClipData;->c:I

    return-void
.end method


# virtual methods
.method public final b()I
    .locals 1

    .line 48
    iget v0, p0, Lo/YB$ClipData;->e:I

    return v0
.end method

.method public final c()F
    .locals 1

    .line 49
    iget v0, p0, Lo/YB$ClipData;->d:F

    return v0
.end method

.method public final e()I
    .locals 1

    .line 50
    iget v0, p0, Lo/YB$ClipData;->c:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lo/YB$ClipData;

    if-eqz v0, :cond_0

    check-cast p1, Lo/YB$ClipData;

    iget v0, p0, Lo/YB$ClipData;->e:I

    iget v1, p1, Lo/YB$ClipData;->e:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lo/YB$ClipData;->d:F

    iget v1, p1, Lo/YB$ClipData;->d:F

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lo/YB$ClipData;->c:I

    iget p1, p1, Lo/YB$ClipData;->c:I

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

    iget v0, p0, Lo/YB$ClipData;->e:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lo/YB$ClipData;->d:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lo/YB$ClipData;->c:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Tapped(currItemPos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo/YB$ClipData;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", xPositionOfTap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo/YB$ClipData;->d:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", itemViewWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo/YB$ClipData;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
