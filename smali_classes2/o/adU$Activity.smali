.class public Lo/adU$Activity;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/adU;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Activity"
.end annotation


# instance fields
.field private a:Z

.field private b:Z

.field private c:Z

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 4

    .line 699
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 697
    iput-object v0, p0, Lo/adU$Activity;->d:Ljava/lang/String;

    .line 700
    invoke-direct {p0}, Lo/adU$Activity;->g()Z

    move-result v0

    iput-boolean v0, p0, Lo/adU$Activity;->a:Z

    .line 701
    invoke-static {}, Lo/adU;->j()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lo/adU$Activity;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "System capabilities: %s"

    invoke-static {v0, v2, v1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method

.method synthetic constructor <init>(Lo/adU$5;)V
    .locals 0

    .line 686
    invoke-direct {p0}, Lo/adU$Activity;-><init>()V

    return-void
.end method

.method static a()Z
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 835
    invoke-static {}, Lo/adk;->c()I

    move-result v0

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 836
    sget-object v0, Lo/adU;->b:Ljava/util/UUID;

    invoke-static {v0}, Landroid/media/MediaDrm;->isCryptoSchemeSupported(Ljava/util/UUID;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static b(Lcom/netflix/mediaclient/drm/NetflixMediaDrm;)Z
    .locals 2

    if-eqz p0, :cond_0

    .line 768
    :try_start_0
    invoke-interface {p0}, Lcom/netflix/mediaclient/drm/NetflixMediaDrm;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 771
    invoke-static {}, Lo/adU;->j()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Failed to close MediaDrm"

    invoke-static {v0, v1, p0}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 772
    invoke-static {}, Lo/adU;->j()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    invoke-interface {v0, p0}, Lo/SpinnerAdapter;->b(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method static synthetic b(Lo/adU$Activity;)Z
    .locals 0

    .line 686
    iget-boolean p0, p0, Lo/adU$Activity;->a:Z

    return p0
.end method

.method static synthetic c(Lo/adU$Activity;)Ljava/lang/String;
    .locals 0

    .line 686
    iget-object p0, p0, Lo/adU$Activity;->d:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic d(Lo/adU$Activity;)Ljava/lang/String;
    .locals 0

    .line 686
    iget-object p0, p0, Lo/adU$Activity;->e:Ljava/lang/String;

    return-object p0
.end method

.method private static d(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "L1"

    .line 830
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic e(Lo/adU$Activity;)Z
    .locals 0

    .line 686
    iget-boolean p0, p0, Lo/adU$Activity;->b:Z

    return p0
.end method

.method private g()Z
    .locals 5

    .line 716
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sput-wide v0, Lo/aeJ;->d:J

    .line 718
    invoke-static {}, Lo/adU$Activity;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 719
    invoke-static {v1}, Lo/aeJ;->c(Z)Z

    move-result v0

    return v0

    .line 724
    :cond_0
    :try_start_0
    sget-object v0, Lo/adU;->b:Ljava/util/UUID;

    invoke-static {v0}, Lcom/netflix/mediaclient/drm/NetflixMediaDrmFactory;->createPlatformMediaDrm(Ljava/util/UUID;)Lcom/netflix/mediaclient/drm/PlatformMediaDrm;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    const-string v2, "securityLevel"

    .line 732
    invoke-interface {v0, v2}, Lcom/netflix/mediaclient/drm/NetflixMediaDrm;->getPropertyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lo/adU$Activity;->e:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    const-string v2, "systemId"

    .line 742
    invoke-interface {v0, v2}, Lcom/netflix/mediaclient/drm/NetflixMediaDrm;->getPropertyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lo/adU$Activity;->d:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 751
    invoke-static {v0}, Lo/adU$Activity;->b(Lcom/netflix/mediaclient/drm/NetflixMediaDrm;)Z

    .line 752
    iget-object v0, p0, Lo/adU$Activity;->e:Ljava/lang/String;

    invoke-static {v0}, Lo/adU$Activity;->d(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lo/adU$Activity;->b:Z

    .line 753
    iget-boolean v0, p0, Lo/adU$Activity;->b:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lo/adU$Activity;->c:Z

    .line 755
    invoke-static {v1}, Lo/aeJ;->c(Z)Z

    move-result v0

    return v0

    :catchall_0
    move-exception v2

    .line 744
    invoke-static {}, Lo/adU;->j()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Failed to get system ID from MediaDrm"

    invoke-static {v3, v4, v2}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string v3, "SYSTEMID_GET_FAILURE"

    .line 745
    iput-object v3, p0, Lo/adU$Activity;->d:Ljava/lang/String;

    .line 746
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v3

    invoke-interface {v3, v2}, Lo/SpinnerAdapter;->b(Ljava/lang/Throwable;)V

    .line 747
    invoke-static {v0}, Lo/adU$Activity;->b(Lcom/netflix/mediaclient/drm/NetflixMediaDrm;)Z

    .line 748
    invoke-static {v1}, Lo/aeJ;->c(Z)Z

    move-result v0

    return v0

    :catchall_1
    move-exception v2

    .line 734
    invoke-static {}, Lo/adU;->j()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Failed to get property security level"

    invoke-static {v3, v4, v2}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string v3, "SECURITY_LEVEL_GET_FAILURE"

    .line 735
    iput-object v3, p0, Lo/adU$Activity;->e:Ljava/lang/String;

    .line 736
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v3

    invoke-interface {v3, v2}, Lo/SpinnerAdapter;->b(Ljava/lang/Throwable;)V

    .line 737
    invoke-static {v0}, Lo/adU$Activity;->b(Lcom/netflix/mediaclient/drm/NetflixMediaDrm;)Z

    .line 738
    invoke-static {v1}, Lo/aeJ;->c(Z)Z

    move-result v0

    return v0

    :catchall_2
    move-exception v0

    .line 726
    invoke-static {}, Lo/adU;->j()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Failed to create MediaDrm with Widevine scheme"

    invoke-static {v2, v3, v0}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 727
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v2

    invoke-interface {v2, v0}, Lo/SpinnerAdapter;->b(Ljava/lang/Throwable;)V

    .line 728
    invoke-static {v1}, Lo/aeJ;->c(Z)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public b()V
    .locals 1

    const/4 v0, 0x0

    .line 706
    iput-boolean v0, p0, Lo/adU$Activity;->b:Z

    const/4 v0, 0x1

    .line 707
    iput-boolean v0, p0, Lo/adU$Activity;->c:Z

    return-void
.end method

.method public c()Z
    .locals 1

    .line 781
    iget-boolean v0, p0, Lo/adU$Activity;->a:Z

    return v0
.end method

.method public d()Z
    .locals 1

    .line 789
    iget-boolean v0, p0, Lo/adU$Activity;->b:Z

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 815
    iget-object v0, p0, Lo/adU$Activity;->d:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 820
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WidevineSupport{, supported="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lo/adU$Activity;->a:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isL1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lo/adU$Activity;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isL3="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lo/adU$Activity;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", securityLevel=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/adU$Activity;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", systemId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lo/adU$Activity;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
