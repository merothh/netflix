.class public final Lo/WebStorage;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/WebResourceError;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lo/DESedeKeySpec;

.field private final d:I

.field private final e:I


# direct methods
.method public constructor <init>(Lo/DESedeKeySpec;Ljava/util/List;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/DESedeKeySpec;",
            "Ljava/util/List<",
            "Lo/WebResourceError;",
            ">;II)V"
        }
    .end annotation

    const-string v0, "composition"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "netflixTagList"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/WebStorage;->c:Lo/DESedeKeySpec;

    iput-object p2, p0, Lo/WebStorage;->a:Ljava/util/List;

    iput p3, p0, Lo/WebStorage;->e:I

    iput p4, p0, Lo/WebStorage;->d:I

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/WebResourceError;",
            ">;"
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lo/WebStorage;->a:Ljava/util/List;

    return-object v0
.end method

.method public final b()I
    .locals 1

    .line 8
    iget v0, p0, Lo/WebStorage;->e:I

    return v0
.end method

.method public final c()I
    .locals 1

    .line 9
    iget v0, p0, Lo/WebStorage;->d:I

    return v0
.end method

.method public final d()Lo/DESedeKeySpec;
    .locals 1

    .line 6
    iget-object v0, p0, Lo/WebStorage;->c:Lo/DESedeKeySpec;

    return-object v0
.end method

.method public final e()Lo/DESedeKeySpec;
    .locals 1

    iget-object v0, p0, Lo/WebStorage;->c:Lo/DESedeKeySpec;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lo/WebStorage;

    if-eqz v0, :cond_0

    check-cast p1, Lo/WebStorage;

    iget-object v0, p0, Lo/WebStorage;->c:Lo/DESedeKeySpec;

    iget-object v1, p1, Lo/WebStorage;->c:Lo/DESedeKeySpec;

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/WebStorage;->a:Ljava/util/List;

    iget-object v1, p1, Lo/WebStorage;->a:Ljava/util/List;

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lo/WebStorage;->e:I

    iget v1, p1, Lo/WebStorage;->e:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lo/WebStorage;->d:I

    iget p1, p1, Lo/WebStorage;->d:I

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

.method public final g()I
    .locals 1

    iget v0, p0, Lo/WebStorage;->d:I

    return v0
.end method

.method public final h()I
    .locals 1

    iget v0, p0, Lo/WebStorage;->e:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lo/WebStorage;->c:Lo/DESedeKeySpec;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lo/WebStorage;->a:Ljava/util/List;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lo/WebStorage;->e:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lo/WebStorage;->d:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final i()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/WebResourceError;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lo/WebStorage;->a:Ljava/util/List;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NetflixLottieComposition(composition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/WebStorage;->c:Lo/DESedeKeySpec;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", netflixTagList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/WebStorage;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", sourceWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo/WebStorage;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sourceHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo/WebStorage;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
