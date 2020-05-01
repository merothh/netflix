.class public final Lo/LaunchActivityItem;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/FileBackupHelperBase;


# instance fields
.field private final a:Lo/FileBackupHelperBase;

.field private final c:Lo/FileBackupHelperBase;


# direct methods
.method public constructor <init>(Lo/FileBackupHelperBase;Lo/FileBackupHelperBase;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lo/LaunchActivityItem;->c:Lo/FileBackupHelperBase;

    .line 17
    iput-object p2, p0, Lo/LaunchActivityItem;->a:Lo/FileBackupHelperBase;

    return-void
.end method


# virtual methods
.method public c(Ljava/security/MessageDigest;)V
    .locals 1

    .line 50
    iget-object v0, p0, Lo/LaunchActivityItem;->c:Lo/FileBackupHelperBase;

    invoke-interface {v0, p1}, Lo/FileBackupHelperBase;->c(Ljava/security/MessageDigest;)V

    .line 51
    iget-object v0, p0, Lo/LaunchActivityItem;->a:Lo/FileBackupHelperBase;

    invoke-interface {v0, p1}, Lo/FileBackupHelperBase;->c(Ljava/security/MessageDigest;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 26
    instance-of v0, p1, Lo/LaunchActivityItem;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 27
    check-cast p1, Lo/LaunchActivityItem;

    .line 28
    iget-object v0, p0, Lo/LaunchActivityItem;->c:Lo/FileBackupHelperBase;

    iget-object v2, p1, Lo/LaunchActivityItem;->c:Lo/FileBackupHelperBase;

    invoke-interface {v0, v2}, Lo/FileBackupHelperBase;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/LaunchActivityItem;->a:Lo/FileBackupHelperBase;

    iget-object p1, p1, Lo/LaunchActivityItem;->a:Lo/FileBackupHelperBase;

    invoke-interface {v0, p1}, Lo/FileBackupHelperBase;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 35
    iget-object v0, p0, Lo/LaunchActivityItem;->c:Lo/FileBackupHelperBase;

    invoke-interface {v0}, Lo/FileBackupHelperBase;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 36
    iget-object v1, p0, Lo/LaunchActivityItem;->a:Lo/FileBackupHelperBase;

    invoke-interface {v1}, Lo/FileBackupHelperBase;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DataCacheKey{sourceKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/LaunchActivityItem;->c:Lo/FileBackupHelperBase;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", signature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/LaunchActivityItem;->a:Lo/FileBackupHelperBase;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
