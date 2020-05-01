.class public final Lcom/netflix/android/imageloader/api/ShowImageRequest$Application;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/android/imageloader/api/ShowImageRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Application"
.end annotation


# instance fields
.field private final a:Z

.field private final b:Ljava/lang/String;

.field private final c:Z

.field private final d:Ljava/lang/Integer;

.field private final e:Ljava/lang/Integer;

.field private final g:Lcom/netflix/android/imageloader/api/ShowImageRequest$Priority;

.field private final h:Z

.field private final i:Z

.field private final j:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLjava/lang/Integer;ZLjava/lang/Integer;ZZLcom/netflix/android/imageloader/api/ShowImageRequest$Priority;Z)V
    .locals 1

    const-string v0, "priority"

    invoke-static {p8, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netflix/android/imageloader/api/ShowImageRequest$Application;->b:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/netflix/android/imageloader/api/ShowImageRequest$Application;->a:Z

    iput-object p3, p0, Lcom/netflix/android/imageloader/api/ShowImageRequest$Application;->e:Ljava/lang/Integer;

    iput-boolean p4, p0, Lcom/netflix/android/imageloader/api/ShowImageRequest$Application;->c:Z

    iput-object p5, p0, Lcom/netflix/android/imageloader/api/ShowImageRequest$Application;->d:Ljava/lang/Integer;

    iput-boolean p6, p0, Lcom/netflix/android/imageloader/api/ShowImageRequest$Application;->h:Z

    iput-boolean p7, p0, Lcom/netflix/android/imageloader/api/ShowImageRequest$Application;->j:Z

    iput-object p8, p0, Lcom/netflix/android/imageloader/api/ShowImageRequest$Application;->g:Lcom/netflix/android/imageloader/api/ShowImageRequest$Priority;

    iput-boolean p9, p0, Lcom/netflix/android/imageloader/api/ShowImageRequest$Application;->i:Z

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Integer;
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/netflix/android/imageloader/api/ShowImageRequest$Application;->d:Ljava/lang/Integer;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/netflix/android/imageloader/api/ShowImageRequest$Application;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/Integer;
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/netflix/android/imageloader/api/ShowImageRequest$Application;->e:Ljava/lang/Integer;

    return-object v0
.end method

.method public final d()Z
    .locals 1

    .line 165
    iget-boolean v0, p0, Lcom/netflix/android/imageloader/api/ShowImageRequest$Application;->c:Z

    return v0
.end method

.method public final e()Z
    .locals 1

    .line 163
    iget-boolean v0, p0, Lcom/netflix/android/imageloader/api/ShowImageRequest$Application;->a:Z

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/netflix/android/imageloader/api/ShowImageRequest$Application;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/netflix/android/imageloader/api/ShowImageRequest$Application;

    iget-object v0, p0, Lcom/netflix/android/imageloader/api/ShowImageRequest$Application;->b:Ljava/lang/String;

    iget-object v1, p1, Lcom/netflix/android/imageloader/api/ShowImageRequest$Application;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/netflix/android/imageloader/api/ShowImageRequest$Application;->a:Z

    iget-boolean v1, p1, Lcom/netflix/android/imageloader/api/ShowImageRequest$Application;->a:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/netflix/android/imageloader/api/ShowImageRequest$Application;->e:Ljava/lang/Integer;

    iget-object v1, p1, Lcom/netflix/android/imageloader/api/ShowImageRequest$Application;->e:Ljava/lang/Integer;

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/netflix/android/imageloader/api/ShowImageRequest$Application;->c:Z

    iget-boolean v1, p1, Lcom/netflix/android/imageloader/api/ShowImageRequest$Application;->c:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/netflix/android/imageloader/api/ShowImageRequest$Application;->d:Ljava/lang/Integer;

    iget-object v1, p1, Lcom/netflix/android/imageloader/api/ShowImageRequest$Application;->d:Ljava/lang/Integer;

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/netflix/android/imageloader/api/ShowImageRequest$Application;->h:Z

    iget-boolean v1, p1, Lcom/netflix/android/imageloader/api/ShowImageRequest$Application;->h:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/netflix/android/imageloader/api/ShowImageRequest$Application;->j:Z

    iget-boolean v1, p1, Lcom/netflix/android/imageloader/api/ShowImageRequest$Application;->j:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/netflix/android/imageloader/api/ShowImageRequest$Application;->g:Lcom/netflix/android/imageloader/api/ShowImageRequest$Priority;

    iget-object v1, p1, Lcom/netflix/android/imageloader/api/ShowImageRequest$Application;->g:Lcom/netflix/android/imageloader/api/ShowImageRequest$Priority;

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/netflix/android/imageloader/api/ShowImageRequest$Application;->i:Z

    iget-boolean p1, p1, Lcom/netflix/android/imageloader/api/ShowImageRequest$Application;->i:Z

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

.method public final f()Z
    .locals 1

    .line 167
    iget-boolean v0, p0, Lcom/netflix/android/imageloader/api/ShowImageRequest$Application;->h:Z

    return v0
.end method

.method public final g()Z
    .locals 1

    .line 170
    iget-boolean v0, p0, Lcom/netflix/android/imageloader/api/ShowImageRequest$Application;->i:Z

    return v0
.end method

.method public hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/netflix/android/imageloader/api/ShowImageRequest$Application;->b:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/netflix/android/imageloader/api/ShowImageRequest$Application;->a:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :cond_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/netflix/android/imageloader/api/ShowImageRequest$Application;->e:Ljava/lang/Integer;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/netflix/android/imageloader/api/ShowImageRequest$Application;->c:Z

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    :cond_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/netflix/android/imageloader/api/ShowImageRequest$Application;->d:Ljava/lang/Integer;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/netflix/android/imageloader/api/ShowImageRequest$Application;->h:Z

    if-eqz v2, :cond_5

    const/4 v2, 0x1

    :cond_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/netflix/android/imageloader/api/ShowImageRequest$Application;->j:Z

    if-eqz v2, :cond_6

    const/4 v2, 0x1

    :cond_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/netflix/android/imageloader/api/ShowImageRequest$Application;->g:Lcom/netflix/android/imageloader/api/ShowImageRequest$Priority;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_7
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/netflix/android/imageloader/api/ShowImageRequest$Application;->i:Z

    if-eqz v1, :cond_8

    const/4 v1, 0x1

    :cond_8
    add-int/2addr v0, v1

    return v0
.end method

.method public final i()Z
    .locals 1

    .line 168
    iget-boolean v0, p0, Lcom/netflix/android/imageloader/api/ShowImageRequest$Application;->j:Z

    return v0
.end method

.method public final j()Lcom/netflix/android/imageloader/api/ShowImageRequest$Priority;
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/netflix/android/imageloader/api/ShowImageRequest$Application;->g:Lcom/netflix/android/imageloader/api/ShowImageRequest$Priority;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RequestDetails(url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/android/imageloader/api/ShowImageRequest$Application;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", disablePlaceholderImage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/netflix/android/imageloader/api/ShowImageRequest$Application;->a:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", overridePlaceholderImageResId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/android/imageloader/api/ShowImageRequest$Application;->e:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", disableFailureImage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/netflix/android/imageloader/api/ShowImageRequest$Application;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", overrideFailureImageResId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/android/imageloader/api/ShowImageRequest$Application;->d:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", blurImage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/netflix/android/imageloader/api/ShowImageRequest$Application;->h:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", alphaChannelRequired="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/netflix/android/imageloader/api/ShowImageRequest$Application;->j:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", priority="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/android/imageloader/api/ShowImageRequest$Application;->g:Lcom/netflix/android/imageloader/api/ShowImageRequest$Priority;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", disableAnimations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/netflix/android/imageloader/api/ShowImageRequest$Application;->i:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
