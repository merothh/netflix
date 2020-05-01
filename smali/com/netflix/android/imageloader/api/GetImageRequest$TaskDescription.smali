.class public final Lcom/netflix/android/imageloader/api/GetImageRequest$TaskDescription;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/android/imageloader/api/GetImageRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TaskDescription"
.end annotation


# instance fields
.field private final a:Lcom/netflix/android/imageloader/api/GetImageRequest$Reason;

.field private final b:Lo/Serializable;

.field private final c:I

.field private final d:Landroidx/fragment/app/Fragment;

.field private final e:Ljava/lang/String;

.field private final f:Z

.field private final g:Landroid/view/View;

.field private final h:I

.field private final i:Z

.field private final j:Z

.field private final o:Z


# direct methods
.method public constructor <init>(Lcom/netflix/android/imageloader/api/GetImageRequest$Reason;Ljava/lang/String;Lo/Serializable;Landroidx/fragment/app/Fragment;IIZZLandroid/view/View;ZZ)V
    .locals 1

    const-string v0, "reason"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netflix/android/imageloader/api/GetImageRequest$TaskDescription;->a:Lcom/netflix/android/imageloader/api/GetImageRequest$Reason;

    iput-object p2, p0, Lcom/netflix/android/imageloader/api/GetImageRequest$TaskDescription;->e:Ljava/lang/String;

    iput-object p3, p0, Lcom/netflix/android/imageloader/api/GetImageRequest$TaskDescription;->b:Lo/Serializable;

    iput-object p4, p0, Lcom/netflix/android/imageloader/api/GetImageRequest$TaskDescription;->d:Landroidx/fragment/app/Fragment;

    iput p5, p0, Lcom/netflix/android/imageloader/api/GetImageRequest$TaskDescription;->c:I

    iput p6, p0, Lcom/netflix/android/imageloader/api/GetImageRequest$TaskDescription;->h:I

    iput-boolean p7, p0, Lcom/netflix/android/imageloader/api/GetImageRequest$TaskDescription;->i:Z

    iput-boolean p8, p0, Lcom/netflix/android/imageloader/api/GetImageRequest$TaskDescription;->j:Z

    iput-object p9, p0, Lcom/netflix/android/imageloader/api/GetImageRequest$TaskDescription;->g:Landroid/view/View;

    iput-boolean p10, p0, Lcom/netflix/android/imageloader/api/GetImageRequest$TaskDescription;->f:Z

    iput-boolean p11, p0, Lcom/netflix/android/imageloader/api/GetImageRequest$TaskDescription;->o:Z

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 216
    iget v0, p0, Lcom/netflix/android/imageloader/api/GetImageRequest$TaskDescription;->c:I

    return v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/netflix/android/imageloader/api/GetImageRequest$TaskDescription;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Z
    .locals 1

    .line 219
    iget-boolean v0, p0, Lcom/netflix/android/imageloader/api/GetImageRequest$TaskDescription;->j:Z

    return v0
.end method

.method public final d()I
    .locals 1

    .line 217
    iget v0, p0, Lcom/netflix/android/imageloader/api/GetImageRequest$TaskDescription;->h:I

    return v0
.end method

.method public final e()Z
    .locals 1

    .line 218
    iget-boolean v0, p0, Lcom/netflix/android/imageloader/api/GetImageRequest$TaskDescription;->i:Z

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/netflix/android/imageloader/api/GetImageRequest$TaskDescription;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/netflix/android/imageloader/api/GetImageRequest$TaskDescription;

    iget-object v0, p0, Lcom/netflix/android/imageloader/api/GetImageRequest$TaskDescription;->a:Lcom/netflix/android/imageloader/api/GetImageRequest$Reason;

    iget-object v1, p1, Lcom/netflix/android/imageloader/api/GetImageRequest$TaskDescription;->a:Lcom/netflix/android/imageloader/api/GetImageRequest$Reason;

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/android/imageloader/api/GetImageRequest$TaskDescription;->e:Ljava/lang/String;

    iget-object v1, p1, Lcom/netflix/android/imageloader/api/GetImageRequest$TaskDescription;->e:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/android/imageloader/api/GetImageRequest$TaskDescription;->b:Lo/Serializable;

    iget-object v1, p1, Lcom/netflix/android/imageloader/api/GetImageRequest$TaskDescription;->b:Lo/Serializable;

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/android/imageloader/api/GetImageRequest$TaskDescription;->d:Landroidx/fragment/app/Fragment;

    iget-object v1, p1, Lcom/netflix/android/imageloader/api/GetImageRequest$TaskDescription;->d:Landroidx/fragment/app/Fragment;

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/netflix/android/imageloader/api/GetImageRequest$TaskDescription;->c:I

    iget v1, p1, Lcom/netflix/android/imageloader/api/GetImageRequest$TaskDescription;->c:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/netflix/android/imageloader/api/GetImageRequest$TaskDescription;->h:I

    iget v1, p1, Lcom/netflix/android/imageloader/api/GetImageRequest$TaskDescription;->h:I

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/netflix/android/imageloader/api/GetImageRequest$TaskDescription;->i:Z

    iget-boolean v1, p1, Lcom/netflix/android/imageloader/api/GetImageRequest$TaskDescription;->i:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/netflix/android/imageloader/api/GetImageRequest$TaskDescription;->j:Z

    iget-boolean v1, p1, Lcom/netflix/android/imageloader/api/GetImageRequest$TaskDescription;->j:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/netflix/android/imageloader/api/GetImageRequest$TaskDescription;->g:Landroid/view/View;

    iget-object v1, p1, Lcom/netflix/android/imageloader/api/GetImageRequest$TaskDescription;->g:Landroid/view/View;

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/netflix/android/imageloader/api/GetImageRequest$TaskDescription;->f:Z

    iget-boolean v1, p1, Lcom/netflix/android/imageloader/api/GetImageRequest$TaskDescription;->f:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/netflix/android/imageloader/api/GetImageRequest$TaskDescription;->o:Z

    iget-boolean p1, p1, Lcom/netflix/android/imageloader/api/GetImageRequest$TaskDescription;->o:Z

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

.method public final h()Z
    .locals 1

    .line 221
    iget-boolean v0, p0, Lcom/netflix/android/imageloader/api/GetImageRequest$TaskDescription;->f:Z

    return v0
.end method

.method public hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/netflix/android/imageloader/api/GetImageRequest$TaskDescription;->a:Lcom/netflix/android/imageloader/api/GetImageRequest$Reason;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/netflix/android/imageloader/api/GetImageRequest$TaskDescription;->e:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/netflix/android/imageloader/api/GetImageRequest$TaskDescription;->b:Lo/Serializable;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/netflix/android/imageloader/api/GetImageRequest$TaskDescription;->d:Landroidx/fragment/app/Fragment;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/netflix/android/imageloader/api/GetImageRequest$TaskDescription;->c:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/netflix/android/imageloader/api/GetImageRequest$TaskDescription;->h:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/netflix/android/imageloader/api/GetImageRequest$TaskDescription;->i:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    :cond_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/netflix/android/imageloader/api/GetImageRequest$TaskDescription;->j:Z

    if-eqz v2, :cond_5

    const/4 v2, 0x1

    :cond_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/netflix/android/imageloader/api/GetImageRequest$TaskDescription;->g:Landroid/view/View;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_6
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/netflix/android/imageloader/api/GetImageRequest$TaskDescription;->f:Z

    if-eqz v1, :cond_7

    const/4 v1, 0x1

    :cond_7
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/netflix/android/imageloader/api/GetImageRequest$TaskDescription;->o:Z

    if-eqz v1, :cond_8

    const/4 v1, 0x1

    :cond_8
    add-int/2addr v0, v1

    return v0
.end method

.method public final i()Z
    .locals 1

    .line 222
    iget-boolean v0, p0, Lcom/netflix/android/imageloader/api/GetImageRequest$TaskDescription;->o:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Request(reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/android/imageloader/api/GetImageRequest$TaskDescription;->a:Lcom/netflix/android/imageloader/api/GetImageRequest$Reason;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/android/imageloader/api/GetImageRequest$TaskDescription;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", activity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/android/imageloader/api/GetImageRequest$TaskDescription;->b:Lo/Serializable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", fragment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/android/imageloader/api/GetImageRequest$TaskDescription;->d:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", maxWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netflix/android/imageloader/api/GetImageRequest$TaskDescription;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", maxHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netflix/android/imageloader/api/GetImageRequest$TaskDescription;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", blurImage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/netflix/android/imageloader/api/GetImageRequest$TaskDescription;->i:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", alphaChannelRequired="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/netflix/android/imageloader/api/GetImageRequest$TaskDescription;->j:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", destinationView="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/android/imageloader/api/GetImageRequest$TaskDescription;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", disableMemoryCache="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/netflix/android/imageloader/api/GetImageRequest$TaskDescription;->f:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", trackForTtr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/netflix/android/imageloader/api/GetImageRequest$TaskDescription;->o:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
