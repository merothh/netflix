.class public final Lo/PrintServicesLoader;
.super Lo/PrinterInfo;
.source ""


# instance fields
.field private final d:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 160
    invoke-direct {p0, v0}, Lo/PrinterInfo;-><init>(Lo/amc;)V

    iput p1, p0, Lo/PrintServicesLoader;->d:I

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Number;
    .locals 1

    .line 161
    iget v0, p0, Lo/PrintServicesLoader;->d:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lo/PrintServicesLoader;

    if-eqz v0, :cond_0

    check-cast p1, Lo/PrintServicesLoader;

    iget v0, p0, Lo/PrintServicesLoader;->d:I

    iget p1, p1, Lo/PrintServicesLoader;->d:I

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

.method public f()I
    .locals 1

    .line 162
    iget v0, p0, Lo/PrintServicesLoader;->d:I

    return v0
.end method

.method public final g()I
    .locals 1

    .line 160
    iget v0, p0, Lo/PrintServicesLoader;->d:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lo/PrintServicesLoader;->d:I

    return v0
.end method

.method public j()J
    .locals 2

    .line 163
    iget v0, p0, Lo/PrintServicesLoader;->d:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "JsonGraphPrimitiveInt(value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo/PrintServicesLoader;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
