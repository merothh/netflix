.class public final Lo/WebViewMethodCalledOnWrongThreadViolation;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final b:Z

.field private final c:Ljava/lang/String;

.field private final d:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ZZ)V
    .locals 1

    const-string v0, "databaseName"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/WebViewMethodCalledOnWrongThreadViolation;->c:Ljava/lang/String;

    iput-boolean p2, p0, Lo/WebViewMethodCalledOnWrongThreadViolation;->d:Z

    iput-boolean p3, p0, Lo/WebViewMethodCalledOnWrongThreadViolation;->b:Z

    return-void
.end method


# virtual methods
.method public final c()Z
    .locals 1

    .line 21
    iget-boolean v0, p0, Lo/WebViewMethodCalledOnWrongThreadViolation;->b:Z

    return v0
.end method

.method public final d()Z
    .locals 1

    .line 16
    iget-boolean v0, p0, Lo/WebViewMethodCalledOnWrongThreadViolation;->d:Z

    return v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .line 11
    iget-object v0, p0, Lo/WebViewMethodCalledOnWrongThreadViolation;->c:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lo/WebViewMethodCalledOnWrongThreadViolation;

    if-eqz v0, :cond_0

    check-cast p1, Lo/WebViewMethodCalledOnWrongThreadViolation;

    iget-object v0, p0, Lo/WebViewMethodCalledOnWrongThreadViolation;->c:Ljava/lang/String;

    iget-object v1, p1, Lo/WebViewMethodCalledOnWrongThreadViolation;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lo/WebViewMethodCalledOnWrongThreadViolation;->d:Z

    iget-boolean v1, p1, Lo/WebViewMethodCalledOnWrongThreadViolation;->d:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lo/WebViewMethodCalledOnWrongThreadViolation;->b:Z

    iget-boolean p1, p1, Lo/WebViewMethodCalledOnWrongThreadViolation;->b:Z

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
    .locals 3

    iget-object v0, p0, Lo/WebViewMethodCalledOnWrongThreadViolation;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lo/WebViewMethodCalledOnWrongThreadViolation;->d:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :cond_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lo/WebViewMethodCalledOnWrongThreadViolation;->b:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    :cond_2
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SqliteDiskCacheConfig(databaseName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/WebViewMethodCalledOnWrongThreadViolation;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", optimizeLeafyObjects="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lo/WebViewMethodCalledOnWrongThreadViolation;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", valuesAsBlobs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lo/WebViewMethodCalledOnWrongThreadViolation;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
