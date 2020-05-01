.class public final Lo/PrintJobInfo;
.super Lo/PrinterCapabilitiesInfo;
.source ""


# instance fields
.field private final e:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 179
    invoke-direct {p0, v0}, Lo/PrinterCapabilitiesInfo;-><init>(Lo/amc;)V

    iput-boolean p1, p0, Lo/PrintJobInfo;->e:Z

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .line 179
    iget-boolean v0, p0, Lo/PrintJobInfo;->e:Z

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lo/PrintJobInfo;

    if-eqz v0, :cond_0

    check-cast p1, Lo/PrintJobInfo;

    iget-boolean v0, p0, Lo/PrintJobInfo;->e:Z

    iget-boolean p1, p1, Lo/PrintJobInfo;->e:Z

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
    .locals 1

    iget-boolean v0, p0, Lo/PrintJobInfo;->e:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "JsonGraphPrimitiveBoolean(value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lo/PrintJobInfo;->e:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
