.class public final Lo/RemotableViewMethod;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final a:Z

.field private final b:Z

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final g:Ljava/lang/Long;

.field private final h:Ljava/lang/String;

.field private final i:Z

.field private final j:Z


# direct methods
.method public constructor <init>(ZLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/Long;ZZLjava/lang/String;)V
    .locals 1

    const-string v0, "planPrice"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lo/RemotableViewMethod;->b:Z

    iput-object p2, p0, Lo/RemotableViewMethod;->c:Ljava/lang/String;

    iput-object p3, p0, Lo/RemotableViewMethod;->d:Ljava/lang/String;

    iput-boolean p4, p0, Lo/RemotableViewMethod;->a:Z

    iput-object p5, p0, Lo/RemotableViewMethod;->e:Ljava/lang/String;

    iput-object p6, p0, Lo/RemotableViewMethod;->g:Ljava/lang/Long;

    iput-boolean p7, p0, Lo/RemotableViewMethod;->j:Z

    iput-boolean p8, p0, Lo/RemotableViewMethod;->i:Z

    iput-object p9, p0, Lo/RemotableViewMethod;->h:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .line 106
    iget-boolean v0, p0, Lo/RemotableViewMethod;->b:Z

    return v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .line 108
    iget-object v0, p0, Lo/RemotableViewMethod;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Z
    .locals 1

    .line 109
    iget-boolean v0, p0, Lo/RemotableViewMethod;->a:Z

    return v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .line 107
    iget-object v0, p0, Lo/RemotableViewMethod;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .line 110
    iget-object v0, p0, Lo/RemotableViewMethod;->e:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lo/RemotableViewMethod;

    if-eqz v0, :cond_0

    check-cast p1, Lo/RemotableViewMethod;

    iget-boolean v0, p0, Lo/RemotableViewMethod;->b:Z

    iget-boolean v1, p1, Lo/RemotableViewMethod;->b:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lo/RemotableViewMethod;->c:Ljava/lang/String;

    iget-object v1, p1, Lo/RemotableViewMethod;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/RemotableViewMethod;->d:Ljava/lang/String;

    iget-object v1, p1, Lo/RemotableViewMethod;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lo/RemotableViewMethod;->a:Z

    iget-boolean v1, p1, Lo/RemotableViewMethod;->a:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lo/RemotableViewMethod;->e:Ljava/lang/String;

    iget-object v1, p1, Lo/RemotableViewMethod;->e:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/RemotableViewMethod;->g:Ljava/lang/Long;

    iget-object v1, p1, Lo/RemotableViewMethod;->g:Ljava/lang/Long;

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lo/RemotableViewMethod;->j:Z

    iget-boolean v1, p1, Lo/RemotableViewMethod;->j:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lo/RemotableViewMethod;->i:Z

    iget-boolean v1, p1, Lo/RemotableViewMethod;->i:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lo/RemotableViewMethod;->h:Ljava/lang/String;

    iget-object p1, p1, Lo/RemotableViewMethod;->h:Ljava/lang/String;

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

.method public final g()Z
    .locals 1

    .line 112
    iget-boolean v0, p0, Lo/RemotableViewMethod;->j:Z

    return v0
.end method

.method public final h()Ljava/lang/Long;
    .locals 1

    .line 111
    iget-object v0, p0, Lo/RemotableViewMethod;->g:Ljava/lang/Long;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    iget-boolean v0, p0, Lo/RemotableViewMethod;->b:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lo/RemotableViewMethod;->c:Ljava/lang/String;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lo/RemotableViewMethod;->d:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lo/RemotableViewMethod;->a:Z

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    :cond_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lo/RemotableViewMethod;->e:Ljava/lang/String;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lo/RemotableViewMethod;->g:Ljava/lang/Long;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_5
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lo/RemotableViewMethod;->j:Z

    if-eqz v2, :cond_6

    const/4 v2, 0x1

    :cond_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lo/RemotableViewMethod;->i:Z

    if-eqz v2, :cond_7

    goto :goto_4

    :cond_7
    move v1, v2

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lo/RemotableViewMethod;->h:Ljava/lang/String;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :cond_8
    add-int/2addr v0, v3

    return v0
.end method

.method public final i()Z
    .locals 1

    .line 113
    iget-boolean v0, p0, Lo/RemotableViewMethod;->i:Z

    return v0
.end method

.method public final j()Ljava/lang/String;
    .locals 1

    .line 114
    iget-object v0, p0, Lo/RemotableViewMethod;->h:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PlanCardParsedData(minimizedSet="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lo/RemotableViewMethod;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", localizedPlanName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/RemotableViewMethod;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", planPrice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/RemotableViewMethod;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", hasFreeTrial="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lo/RemotableViewMethod;->a:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", supportedDevices="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/RemotableViewMethod;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", planMaxScreenCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/RemotableViewMethod;->g:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", planHasUltraHd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lo/RemotableViewMethod;->j:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", planHasHd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lo/RemotableViewMethod;->i:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", offerId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/RemotableViewMethod;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
