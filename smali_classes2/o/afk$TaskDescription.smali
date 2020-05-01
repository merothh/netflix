.class final Lo/afk$TaskDescription;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/afk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TaskDescription"
.end annotation


# instance fields
.field private final a:Lcom/netflix/mediaclient/util/gfx/ImageLoader$Activity;

.field private final c:Ljava/lang/String;

.field private final d:Lcom/netflix/mediaclient/util/gfx/ImageLoader$AssetLocationType;

.field private final e:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;Ljava/lang/String;Lcom/netflix/mediaclient/util/gfx/ImageLoader$Activity;Lcom/netflix/mediaclient/util/gfx/ImageLoader$AssetLocationType;)V
    .locals 1

    const-string v0, "imageUrl"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imageListener"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "assetLocationType"

    invoke-static {p4, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 683
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/afk$TaskDescription;->e:Landroid/graphics/Bitmap;

    iput-object p2, p0, Lo/afk$TaskDescription;->c:Ljava/lang/String;

    iput-object p3, p0, Lo/afk$TaskDescription;->a:Lcom/netflix/mediaclient/util/gfx/ImageLoader$Activity;

    iput-object p4, p0, Lo/afk$TaskDescription;->d:Lcom/netflix/mediaclient/util/gfx/ImageLoader$AssetLocationType;

    return-void
.end method


# virtual methods
.method public final a()Lcom/netflix/mediaclient/util/gfx/ImageLoader$AssetLocationType;
    .locals 1

    .line 687
    iget-object v0, p0, Lo/afk$TaskDescription;->d:Lcom/netflix/mediaclient/util/gfx/ImageLoader$AssetLocationType;

    return-object v0
.end method

.method public final b()Landroid/graphics/Bitmap;
    .locals 1

    .line 684
    iget-object v0, p0, Lo/afk$TaskDescription;->e:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .line 685
    iget-object v0, p0, Lo/afk$TaskDescription;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Lcom/netflix/mediaclient/util/gfx/ImageLoader$Activity;
    .locals 1

    .line 686
    iget-object v0, p0, Lo/afk$TaskDescription;->a:Lcom/netflix/mediaclient/util/gfx/ImageLoader$Activity;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lo/afk$TaskDescription;

    if-eqz v0, :cond_0

    check-cast p1, Lo/afk$TaskDescription;

    iget-object v0, p0, Lo/afk$TaskDescription;->e:Landroid/graphics/Bitmap;

    iget-object v1, p1, Lo/afk$TaskDescription;->e:Landroid/graphics/Bitmap;

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/afk$TaskDescription;->c:Ljava/lang/String;

    iget-object v1, p1, Lo/afk$TaskDescription;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/afk$TaskDescription;->a:Lcom/netflix/mediaclient/util/gfx/ImageLoader$Activity;

    iget-object v1, p1, Lo/afk$TaskDescription;->a:Lcom/netflix/mediaclient/util/gfx/ImageLoader$Activity;

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/afk$TaskDescription;->d:Lcom/netflix/mediaclient/util/gfx/ImageLoader$AssetLocationType;

    iget-object p1, p1, Lo/afk$TaskDescription;->d:Lcom/netflix/mediaclient/util/gfx/ImageLoader$AssetLocationType;

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

    iget-object v0, p0, Lo/afk$TaskDescription;->e:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lo/afk$TaskDescription;->c:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lo/afk$TaskDescription;->a:Lcom/netflix/mediaclient/util/gfx/ImageLoader$Activity;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lo/afk$TaskDescription;->d:Lcom/netflix/mediaclient/util/gfx/ImageLoader$AssetLocationType;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_3
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BatchedSuccessResult(bitmap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/afk$TaskDescription;->e:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", imageUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/afk$TaskDescription;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", imageListener="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/afk$TaskDescription;->a:Lcom/netflix/mediaclient/util/gfx/ImageLoader$Activity;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", assetLocationType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/afk$TaskDescription;->d:Lcom/netflix/mediaclient/util/gfx/ImageLoader$AssetLocationType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
