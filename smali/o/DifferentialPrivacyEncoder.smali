.class final Lo/DifferentialPrivacyEncoder;
.super Lo/RapporEncoder;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lo/RapporEncoder<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private a:I

.field private final b:Lo/RapporEncoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/RapporEncoder<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final e:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lo/RapporEncoder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lo/RapporEncoder<",
            "+TT;>;)V"
        }
    .end annotation

    const-string v0, "tail"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 62
    invoke-direct {p0, v0}, Lo/RapporEncoder;-><init>(Lo/amc;)V

    iput-object p1, p0, Lo/DifferentialPrivacyEncoder;->e:Ljava/lang/Object;

    iput-object p2, p0, Lo/DifferentialPrivacyEncoder;->b:Lo/RapporEncoder;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lo/DifferentialPrivacyEncoder;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public final e()Lo/RapporEncoder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/RapporEncoder<",
            "TT;>;"
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lo/DifferentialPrivacyEncoder;->b:Lo/RapporEncoder;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 67
    instance-of v0, p1, Lo/RapporEncoder;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {p0}, Lo/DifferentialPrivacyEncoder;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast p1, Lo/RapporEncoder;

    invoke-virtual {p1}, Lo/RapporEncoder;->b()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v2}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lo/DifferentialPrivacyEncoder;->c()Lo/RapporEncoder;

    move-result-object v0

    invoke-virtual {p1}, Lo/RapporEncoder;->c()Lo/RapporEncoder;

    move-result-object p1

    invoke-static {v0, p1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 79
    iget v0, p0, Lo/DifferentialPrivacyEncoder;->a:I

    if-nez v0, :cond_1

    .line 80
    iget-object v0, p0, Lo/DifferentialPrivacyEncoder;->e:Ljava/lang/Object;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->hashCode()I

    move-result v0

    :goto_0
    invoke-virtual {p0}, Lo/DifferentialPrivacyEncoder;->c()Lo/RapporEncoder;

    move-result-object v1

    invoke-virtual {v1}, Lo/RapporEncoder;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lo/DifferentialPrivacyEncoder;->a:I

    .line 82
    :cond_1
    iget v0, p0, Lo/DifferentialPrivacyEncoder;->a:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lo/DifferentialPrivacyEncoder;->b()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lo/DifferentialPrivacyEncoder;->c()Lo/RapporEncoder;

    move-result-object v1

    invoke-virtual {v1}, Lo/RapporEncoder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
