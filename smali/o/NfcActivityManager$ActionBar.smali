.class public final Lo/NfcActivityManager$ActionBar;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/NfcActivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ActionBar"
.end annotation


# instance fields
.field private final a:Ljava/io/File;

.field private final b:Lcom/netflix/android/imageloader/api/ImageDataSource;


# direct methods
.method public constructor <init>(Ljava/io/File;Lcom/netflix/android/imageloader/api/ImageDataSource;)V
    .locals 1

    const-string v0, "file"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imageDataSource"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/NfcActivityManager$ActionBar;->a:Ljava/io/File;

    iput-object p2, p0, Lo/NfcActivityManager$ActionBar;->b:Lcom/netflix/android/imageloader/api/ImageDataSource;

    return-void
.end method


# virtual methods
.method public final b()Ljava/io/File;
    .locals 1

    .line 54
    iget-object v0, p0, Lo/NfcActivityManager$ActionBar;->a:Ljava/io/File;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lo/NfcActivityManager$ActionBar;

    if-eqz v0, :cond_0

    check-cast p1, Lo/NfcActivityManager$ActionBar;

    iget-object v0, p0, Lo/NfcActivityManager$ActionBar;->a:Ljava/io/File;

    iget-object v1, p1, Lo/NfcActivityManager$ActionBar;->a:Ljava/io/File;

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/NfcActivityManager$ActionBar;->b:Lcom/netflix/android/imageloader/api/ImageDataSource;

    iget-object p1, p1, Lo/NfcActivityManager$ActionBar;->b:Lcom/netflix/android/imageloader/api/ImageDataSource;

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

    iget-object v0, p0, Lo/NfcActivityManager$ActionBar;->a:Ljava/io/File;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lo/NfcActivityManager$ActionBar;->b:Lcom/netflix/android/imageloader/api/ImageDataSource;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Result(file="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/NfcActivityManager$ActionBar;->a:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", imageDataSource="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/NfcActivityManager$ActionBar;->b:Lcom/netflix/android/imageloader/api/ImageDataSource;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
