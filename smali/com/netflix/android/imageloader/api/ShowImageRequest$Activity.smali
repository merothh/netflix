.class public final Lcom/netflix/android/imageloader/api/ShowImageRequest$Activity;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/android/imageloader/api/ShowImageRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Activity"
.end annotation


# instance fields
.field private final a:Z

.field private final c:Lcom/netflix/android/imageloader/api/ImageDataSource;


# direct methods
.method public constructor <init>(ZLcom/netflix/android/imageloader/api/ImageDataSource;)V
    .locals 0

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/netflix/android/imageloader/api/ShowImageRequest$Activity;->a:Z

    iput-object p2, p0, Lcom/netflix/android/imageloader/api/ShowImageRequest$Activity;->c:Lcom/netflix/android/imageloader/api/ImageDataSource;

    return-void
.end method


# virtual methods
.method public final e()Lcom/netflix/android/imageloader/api/ImageDataSource;
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/netflix/android/imageloader/api/ShowImageRequest$Activity;->c:Lcom/netflix/android/imageloader/api/ImageDataSource;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/netflix/android/imageloader/api/ShowImageRequest$Activity;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/netflix/android/imageloader/api/ShowImageRequest$Activity;

    iget-boolean v0, p0, Lcom/netflix/android/imageloader/api/ShowImageRequest$Activity;->a:Z

    iget-boolean v1, p1, Lcom/netflix/android/imageloader/api/ShowImageRequest$Activity;->a:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/netflix/android/imageloader/api/ShowImageRequest$Activity;->c:Lcom/netflix/android/imageloader/api/ImageDataSource;

    iget-object p1, p1, Lcom/netflix/android/imageloader/api/ShowImageRequest$Activity;->c:Lcom/netflix/android/imageloader/api/ImageDataSource;

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
    .locals 2

    iget-boolean v0, p0, Lcom/netflix/android/imageloader/api/ShowImageRequest$Activity;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/netflix/android/imageloader/api/ShowImageRequest$Activity;->c:Lcom/netflix/android/imageloader/api/ImageDataSource;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Result(wasRequestSkipped="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/netflix/android/imageloader/api/ShowImageRequest$Activity;->a:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", imageDataSource="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/android/imageloader/api/ShowImageRequest$Activity;->c:Lcom/netflix/android/imageloader/api/ImageDataSource;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
