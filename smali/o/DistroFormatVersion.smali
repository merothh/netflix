.class public final Lo/DistroFormatVersion;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/FileBackupHelperBase;


# static fields
.field private static final c:Lo/FeatureGroupInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/FeatureGroupInfo<",
            "Ljava/lang/Class<",
            "*>;[B>;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Lo/RulesManager;

.field private final d:Lo/FileBackupHelperBase;

.field private final e:Lo/FileBackupHelperBase;

.field private final f:Lo/RestoreObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/RestoreObserver<",
            "*>;"
        }
    .end annotation
.end field

.field private final g:I

.field private final h:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final i:I

.field private final j:Lo/FullBackupAgent;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 17
    new-instance v0, Lo/FeatureGroupInfo;

    const-wide/16 v1, 0x32

    invoke-direct {v0, v1, v2}, Lo/FeatureGroupInfo;-><init>(J)V

    sput-object v0, Lo/DistroFormatVersion;->c:Lo/FeatureGroupInfo;

    return-void
.end method

.method public constructor <init>(Lo/RulesManager;Lo/FileBackupHelperBase;Lo/FileBackupHelperBase;IILo/RestoreObserver;Ljava/lang/Class;Lo/FullBackupAgent;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/RulesManager;",
            "Lo/FileBackupHelperBase;",
            "Lo/FileBackupHelperBase;",
            "II",
            "Lo/RestoreObserver<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;",
            "Lo/FullBackupAgent;",
            ")V"
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lo/DistroFormatVersion;->a:Lo/RulesManager;

    .line 37
    iput-object p2, p0, Lo/DistroFormatVersion;->d:Lo/FileBackupHelperBase;

    .line 38
    iput-object p3, p0, Lo/DistroFormatVersion;->e:Lo/FileBackupHelperBase;

    .line 39
    iput p4, p0, Lo/DistroFormatVersion;->i:I

    .line 40
    iput p5, p0, Lo/DistroFormatVersion;->g:I

    .line 41
    iput-object p6, p0, Lo/DistroFormatVersion;->f:Lo/RestoreObserver;

    .line 42
    iput-object p7, p0, Lo/DistroFormatVersion;->h:Ljava/lang/Class;

    .line 43
    iput-object p8, p0, Lo/DistroFormatVersion;->j:Lo/FullBackupAgent;

    return-void
.end method

.method private d()[B
    .locals 3

    .line 91
    sget-object v0, Lo/DistroFormatVersion;->c:Lo/FeatureGroupInfo;

    iget-object v1, p0, Lo/DistroFormatVersion;->h:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Lo/FeatureGroupInfo;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-nez v0, :cond_0

    .line 93
    iget-object v0, p0, Lo/DistroFormatVersion;->h:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lo/DistroFormatVersion;->b:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 94
    sget-object v1, Lo/DistroFormatVersion;->c:Lo/FeatureGroupInfo;

    iget-object v2, p0, Lo/DistroFormatVersion;->h:Ljava/lang/Class;

    invoke-virtual {v1, v2, v0}, Lo/FeatureGroupInfo;->e(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method


# virtual methods
.method public c(Ljava/security/MessageDigest;)V
    .locals 3

    .line 77
    iget-object v0, p0, Lo/DistroFormatVersion;->a:Lo/RulesManager;

    const-class v1, [B

    const/16 v2, 0x8

    invoke-interface {v0, v2, v1}, Lo/RulesManager;->e(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 78
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    iget v2, p0, Lo/DistroFormatVersion;->i:I

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iget v2, p0, Lo/DistroFormatVersion;->g:I

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    .line 79
    iget-object v1, p0, Lo/DistroFormatVersion;->e:Lo/FileBackupHelperBase;

    invoke-interface {v1, p1}, Lo/FileBackupHelperBase;->c(Ljava/security/MessageDigest;)V

    .line 80
    iget-object v1, p0, Lo/DistroFormatVersion;->d:Lo/FileBackupHelperBase;

    invoke-interface {v1, p1}, Lo/FileBackupHelperBase;->c(Ljava/security/MessageDigest;)V

    .line 81
    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 82
    iget-object v1, p0, Lo/DistroFormatVersion;->f:Lo/RestoreObserver;

    if-eqz v1, :cond_0

    .line 83
    invoke-interface {v1, p1}, Lo/RestoreObserver;->c(Ljava/security/MessageDigest;)V

    .line 85
    :cond_0
    iget-object v1, p0, Lo/DistroFormatVersion;->j:Lo/FullBackupAgent;

    invoke-virtual {v1, p1}, Lo/FullBackupAgent;->c(Ljava/security/MessageDigest;)V

    .line 86
    invoke-direct {p0}, Lo/DistroFormatVersion;->d()[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 87
    iget-object p1, p0, Lo/DistroFormatVersion;->a:Lo/RulesManager;

    invoke-interface {p1, v0}, Lo/RulesManager;->c(Ljava/lang/Object;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 48
    instance-of v0, p1, Lo/DistroFormatVersion;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 49
    check-cast p1, Lo/DistroFormatVersion;

    .line 50
    iget v0, p0, Lo/DistroFormatVersion;->g:I

    iget v2, p1, Lo/DistroFormatVersion;->g:I

    if-ne v0, v2, :cond_0

    iget v0, p0, Lo/DistroFormatVersion;->i:I

    iget v2, p1, Lo/DistroFormatVersion;->i:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lo/DistroFormatVersion;->f:Lo/RestoreObserver;

    iget-object v2, p1, Lo/DistroFormatVersion;->f:Lo/RestoreObserver;

    .line 51
    invoke-static {v0, v2}, Lo/FallbackCategoryProvider;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/DistroFormatVersion;->h:Ljava/lang/Class;

    iget-object v2, p1, Lo/DistroFormatVersion;->h:Ljava/lang/Class;

    .line 52
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/DistroFormatVersion;->d:Lo/FileBackupHelperBase;

    iget-object v2, p1, Lo/DistroFormatVersion;->d:Lo/FileBackupHelperBase;

    .line 53
    invoke-interface {v0, v2}, Lo/FileBackupHelperBase;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/DistroFormatVersion;->e:Lo/FileBackupHelperBase;

    iget-object v2, p1, Lo/DistroFormatVersion;->e:Lo/FileBackupHelperBase;

    .line 54
    invoke-interface {v0, v2}, Lo/FileBackupHelperBase;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/DistroFormatVersion;->j:Lo/FullBackupAgent;

    iget-object p1, p1, Lo/DistroFormatVersion;->j:Lo/FullBackupAgent;

    .line 55
    invoke-virtual {v0, p1}, Lo/FullBackupAgent;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 62
    iget-object v0, p0, Lo/DistroFormatVersion;->d:Lo/FileBackupHelperBase;

    invoke-interface {v0}, Lo/FileBackupHelperBase;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 63
    iget-object v1, p0, Lo/DistroFormatVersion;->e:Lo/FileBackupHelperBase;

    invoke-interface {v1}, Lo/FileBackupHelperBase;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 64
    iget v1, p0, Lo/DistroFormatVersion;->i:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 65
    iget v1, p0, Lo/DistroFormatVersion;->g:I

    add-int/2addr v0, v1

    .line 66
    iget-object v1, p0, Lo/DistroFormatVersion;->f:Lo/RestoreObserver;

    if-eqz v1, :cond_0

    mul-int/lit8 v0, v0, 0x1f

    .line 67
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    mul-int/lit8 v0, v0, 0x1f

    .line 69
    iget-object v1, p0, Lo/DistroFormatVersion;->h:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 70
    iget-object v1, p0, Lo/DistroFormatVersion;->j:Lo/FullBackupAgent;

    invoke-virtual {v1}, Lo/FullBackupAgent;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ResourceCacheKey{sourceKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/DistroFormatVersion;->d:Lo/FileBackupHelperBase;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", signature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/DistroFormatVersion;->e:Lo/FileBackupHelperBase;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo/DistroFormatVersion;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo/DistroFormatVersion;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", decodedResourceClass="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/DistroFormatVersion;->h:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", transformation=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/DistroFormatVersion;->f:Lo/RestoreObserver;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", options="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/DistroFormatVersion;->j:Lo/FullBackupAgent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
