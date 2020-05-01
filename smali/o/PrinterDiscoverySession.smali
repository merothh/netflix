.class public final Lo/PrinterDiscoverySession;
.super Lo/PrintDocumentInfo;
.source ""


# instance fields
.field private final a:Ljava/lang/Long;

.field private final b:Lo/RapporEncoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/RapporEncoder<",
            "Lo/DiskWriteViolation;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/lang/Long;

.field private final e:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Lo/RapporEncoder;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/RapporEncoder<",
            "+",
            "Lo/DiskWriteViolation;",
            ">;",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    const-string v0, "path"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 254
    invoke-direct {p0, v0}, Lo/PrintDocumentInfo;-><init>(Lo/amc;)V

    iput-object p1, p0, Lo/PrinterDiscoverySession;->b:Lo/RapporEncoder;

    iput-object p2, p0, Lo/PrinterDiscoverySession;->a:Ljava/lang/Long;

    iput-object p3, p0, Lo/PrinterDiscoverySession;->c:Ljava/lang/Long;

    iput-object p4, p0, Lo/PrinterDiscoverySession;->e:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public c()Ljava/lang/Long;
    .locals 1

    .line 252
    iget-object v0, p0, Lo/PrinterDiscoverySession;->c:Ljava/lang/Long;

    return-object v0
.end method

.method public d()Ljava/lang/Long;
    .locals 1

    .line 251
    iget-object v0, p0, Lo/PrinterDiscoverySession;->a:Ljava/lang/Long;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lo/PrinterDiscoverySession;

    if-eqz v0, :cond_0

    check-cast p1, Lo/PrinterDiscoverySession;

    iget-object v0, p0, Lo/PrinterDiscoverySession;->b:Lo/RapporEncoder;

    iget-object v1, p1, Lo/PrinterDiscoverySession;->b:Lo/RapporEncoder;

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lo/PrinterDiscoverySession;->d()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1}, Lo/PrinterDiscoverySession;->d()Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lo/PrinterDiscoverySession;->c()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1}, Lo/PrinterDiscoverySession;->c()Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lo/PrinterDiscoverySession;->i()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1}, Lo/PrinterDiscoverySession;->i()Ljava/lang/Integer;

    move-result-object p1

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

    iget-object v0, p0, Lo/PrinterDiscoverySession;->b:Lo/RapporEncoder;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lo/PrinterDiscoverySession;->d()Ljava/lang/Long;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lo/PrinterDiscoverySession;->c()Ljava/lang/Long;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lo/PrinterDiscoverySession;->i()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_3
    add-int/2addr v0, v1

    return v0
.end method

.method public i()Ljava/lang/Integer;
    .locals 1

    .line 253
    iget-object v0, p0, Lo/PrinterDiscoverySession;->e:Ljava/lang/Integer;

    return-object v0
.end method

.method public final j()Lo/RapporEncoder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/RapporEncoder<",
            "Lo/DiskWriteViolation;",
            ">;"
        }
    .end annotation

    .line 250
    iget-object v0, p0, Lo/PrinterDiscoverySession;->b:Lo/RapporEncoder;

    return-object v0
.end method

.method public t_()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "JsonGraphReference(path="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/PrinterDiscoverySession;->b:Lo/RapporEncoder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", expires="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lo/PrinterDiscoverySession;->d()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", timestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lo/PrinterDiscoverySession;->c()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lo/PrinterDiscoverySession;->i()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
