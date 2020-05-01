.class public abstract Lo/cY;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/dc;
.implements Lcom/netflix/mediaclient/drm/NetflixMediaDrm$OnEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/cY$StateListAnimator;
    }
.end annotation


# static fields
.field protected static final b:[B

.field public static j:I = 0x0

.field private static m:Ljava/lang/String; = "nf_msl_CryptoManager"


# instance fields
.field protected a:Lo/dc$StateListAnimator;

.field protected c:Lcom/netflix/mediaclient/drm/NetflixMediaDrm;

.field protected d:Landroid/content/Context;

.field protected e:Lcom/netflix/mediaclient/service/configuration/crypto/DrmStateManager;

.field protected f:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

.field protected h:Ljava/util/concurrent/atomic/AtomicInteger;

.field protected i:Lo/cz;

.field private k:Lo/mG;

.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/dc$TaskDescription;",
            ">;"
        }
    .end annotation
.end field

.field private final n:Lcom/netflix/mediaclient/ui/error/CryptoErrorManager;

.field private o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/dc$TaskDescription;",
            ">;"
        }
    .end annotation
.end field

.field private q:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "[B",
            "Lo/cY$StateListAnimator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 51
    sput-object v0, Lo/cY;->b:[B

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;Lo/cz;Lo/dc$StateListAnimator;Lcom/netflix/mediaclient/ui/error/CryptoErrorManager;)V
    .locals 1

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Lcom/netflix/mediaclient/service/configuration/crypto/DrmStateManager;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/configuration/crypto/DrmStateManager;-><init>()V

    iput-object v0, p0, Lo/cY;->e:Lcom/netflix/mediaclient/service/configuration/crypto/DrmStateManager;

    .line 85
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lo/cY;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/cY;->l:Ljava/util/List;

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/cY;->o:Ljava/util/List;

    .line 118
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lo/cY;->q:Ljava/util/Map;

    .line 127
    invoke-virtual {p0}, Lo/cY;->a()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lo/cY;->m:Ljava/lang/String;

    if-eqz p4, :cond_0

    .line 132
    iput-object p2, p0, Lo/cY;->f:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    .line 133
    iput-object p5, p0, Lo/cY;->n:Lcom/netflix/mediaclient/ui/error/CryptoErrorManager;

    .line 134
    iput-object p4, p0, Lo/cY;->a:Lo/dc$StateListAnimator;

    .line 135
    iput-object p3, p0, Lo/cY;->i:Lo/cz;

    .line 136
    iput-object p1, p0, Lo/cY;->d:Landroid/content/Context;

    .line 137
    invoke-direct {p0}, Lo/cY;->l()V

    .line 138
    invoke-direct {p0}, Lo/cY;->k()V

    .line 139
    invoke-direct {p0}, Lo/cY;->s()V

    .line 140
    invoke-virtual {p0}, Lo/cY;->b()V

    return-void

    .line 130
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Calllback is null!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a([B)V
    .locals 2

    .line 241
    :try_start_0
    iget-object v0, p0, Lo/cY;->c:Lcom/netflix/mediaclient/drm/NetflixMediaDrm;

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/drm/NetflixMediaDrm;->closeSession([B)V

    .line 242
    iget-object v0, p0, Lo/cY;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 243
    iget-object v0, p0, Lo/cY;->q:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 248
    sget-object v0, Lo/cY;->m:Ljava/lang/String;

    const-string v1, "closeCryptoSessions failed !"

    invoke-static {v0, p1, v1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private b(Lcom/netflix/mediaclient/StatusCode;Ljava/lang/Throwable;)V
    .locals 2

    .line 881
    iget-object v0, p0, Lo/cY;->n:Lcom/netflix/mediaclient/ui/error/CryptoErrorManager;

    sget-object v1, Lcom/netflix/mediaclient/service/error/crypto/ErrorSource;->e:Lcom/netflix/mediaclient/service/error/crypto/ErrorSource;

    invoke-interface {v0, v1, p1, p2}, Lcom/netflix/mediaclient/ui/error/CryptoErrorManager;->d(Lcom/netflix/mediaclient/service/error/crypto/ErrorSource;Lcom/netflix/mediaclient/StatusCode;Ljava/lang/Throwable;)V

    return-void
.end method

.method private b(Lo/dc$TaskDescription;Ljava/lang/Throwable;)V
    .locals 4

    .line 948
    sget-object v0, Lo/cY;->m:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "Failed to restore keys!"

    invoke-static {v0, p2, v3, v2}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 950
    iget-object v0, p0, Lo/cY;->e:Lcom/netflix/mediaclient/service/configuration/crypto/DrmStateManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/crypto/DrmStateManager;->b()Lcom/netflix/mediaclient/service/configuration/crypto/DrmStateManager$State;

    move-result-object v0

    sget-object v2, Lcom/netflix/mediaclient/service/configuration/crypto/DrmStateManager$State;->d:Lcom/netflix/mediaclient/service/configuration/crypto/DrmStateManager$State;

    if-ne v0, v2, :cond_0

    .line 951
    sget-object v0, Lcom/netflix/mediaclient/StatusCode;->aA:Lcom/netflix/mediaclient/StatusCode;

    goto :goto_0

    .line 952
    :cond_0
    iget-object v0, p0, Lo/cY;->e:Lcom/netflix/mediaclient/service/configuration/crypto/DrmStateManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/crypto/DrmStateManager;->b()Lcom/netflix/mediaclient/service/configuration/crypto/DrmStateManager$State;

    move-result-object v0

    sget-object v2, Lcom/netflix/mediaclient/service/configuration/crypto/DrmStateManager$State;->a:Lcom/netflix/mediaclient/service/configuration/crypto/DrmStateManager$State;

    if-ne v0, v2, :cond_1

    .line 953
    sget-object v0, Lcom/netflix/mediaclient/StatusCode;->af:Lcom/netflix/mediaclient/StatusCode;

    goto :goto_0

    .line 955
    :cond_1
    sget-object v0, Lcom/netflix/mediaclient/StatusCode;->ae:Lcom/netflix/mediaclient/StatusCode;

    .line 957
    :goto_0
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v2

    invoke-virtual {v0}, Lcom/netflix/mediaclient/StatusCode;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lo/SpinnerAdapter;->b(Ljava/lang/String;)V

    .line 960
    :try_start_0
    invoke-virtual {p0, p1}, Lo/cY;->b(Lo/dc$TaskDescription;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 962
    sget-object v2, Lo/cY;->m:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "Failed to close crypto session?"

    invoke-static {v2, p1, v3, v1}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 965
    :goto_1
    invoke-direct {p0, v0, p2}, Lo/cY;->b(Lcom/netflix/mediaclient/StatusCode;Ljava/lang/Throwable;)V

    return-void
.end method

.method private b([B)V
    .locals 1

    .line 1048
    iget-object v0, p0, Lo/cY;->l:Ljava/util/List;

    invoke-direct {p0, p1, v0}, Lo/cY;->c([BLjava/util/List;)Lo/dc$TaskDescription;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1049
    iget-object v0, p0, Lo/cY;->o:Ljava/util/List;

    invoke-direct {p0, p1, v0}, Lo/cY;->c([BLjava/util/List;)Lo/dc$TaskDescription;

    :cond_0
    return-void
.end method

.method private c([BLjava/util/List;)Lo/dc$TaskDescription;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/List<",
            "Lo/dc$TaskDescription;",
            ">;)",
            "Lo/dc$TaskDescription;"
        }
    .end annotation

    .line 1054
    monitor-enter p2

    .line 1055
    :try_start_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/dc$TaskDescription;

    .line 1056
    iget-object v2, v1, Lo/dc$TaskDescription;->c:[B

    invoke-static {p1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    .line 1062
    invoke-interface {p2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1064
    :cond_2
    monitor-exit p2

    return-object v1

    :catchall_0
    move-exception p1

    .line 1065
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private c(Lo/dc$TaskDescription;)V
    .locals 3

    .line 904
    iget-object v0, p0, Lo/cY;->c:Lcom/netflix/mediaclient/drm/NetflixMediaDrm;

    if-nez v0, :cond_0

    .line 905
    sget-object v0, Lo/cY;->m:Ljava/lang/String;

    const-string v1, "MediaDrm is null, app was in suspended state"

    invoke-static {v0, v1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    :try_start_0
    invoke-direct {p0}, Lo/cY;->l()V
    :try_end_0
    .catch Landroid/media/UnsupportedSchemeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 909
    sget-object v0, Lo/cY;->m:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Unable to restore MediaDrm"

    invoke-static {v0, p1, v2, v1}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 910
    sget-object v0, Lcom/netflix/mediaclient/StatusCode;->ag:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {p0, v0, p1}, Lo/cY;->b(Lcom/netflix/mediaclient/StatusCode;Ljava/lang/Throwable;)V

    return-void

    .line 919
    :cond_0
    :goto_0
    iget-object v0, p1, Lo/dc$TaskDescription;->c:[B

    if-nez v0, :cond_1

    iget-object v0, p1, Lo/dc$TaskDescription;->b:Lo/dc$ActionBar;

    if-eqz v0, :cond_1

    .line 921
    :try_start_1
    iget-object v0, p0, Lo/cY;->c:Lcom/netflix/mediaclient/drm/NetflixMediaDrm;

    sget-object v1, Lcom/netflix/mediaclient/drm/NetflixMediaDrm$SessionType;->OFFLINE:Lcom/netflix/mediaclient/drm/NetflixMediaDrm$SessionType;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/drm/NetflixMediaDrm;->openSession(Lcom/netflix/mediaclient/drm/NetflixMediaDrm$SessionType;)[B

    move-result-object v0

    iput-object v0, p1, Lo/dc$TaskDescription;->c:[B

    .line 922
    invoke-direct {p0}, Lo/cY;->n()V

    .line 927
    iget-object v0, p0, Lo/cY;->c:Lcom/netflix/mediaclient/drm/NetflixMediaDrm;

    iget-object v1, p1, Lo/dc$TaskDescription;->c:[B

    iget-object v2, p1, Lo/dc$TaskDescription;->b:Lo/dc$ActionBar;

    invoke-virtual {v2}, Lo/dc$ActionBar;->e()[B

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/netflix/mediaclient/drm/NetflixMediaDrm;->restoreKeys([B[B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 938
    iget-object v0, p0, Lo/cY;->e:Lcom/netflix/mediaclient/service/configuration/crypto/DrmStateManager;

    sget-object v1, Lcom/netflix/mediaclient/service/configuration/crypto/DrmStateManager$State;->d:Lcom/netflix/mediaclient/service/configuration/crypto/DrmStateManager$State;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/configuration/crypto/DrmStateManager;->d(Lcom/netflix/mediaclient/service/configuration/crypto/DrmStateManager$State;)V

    .line 942
    invoke-direct {p0, p1}, Lo/cY;->h(Lo/dc$TaskDescription;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 934
    invoke-direct {p0, p1, v0}, Lo/cY;->b(Lo/dc$TaskDescription;Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    return-void
.end method

.method private c(Lo/dc$TaskDescription;[B)V
    .locals 1

    if-nez p1, :cond_0

    .line 1011
    sget-object p1, Lo/cY;->m:Ljava/lang/String;

    const-string p2, "Session is null!"

    invoke-static {p1, p2}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1022
    :cond_0
    iget-object p2, p0, Lo/cY;->l:Ljava/util/List;

    monitor-enter p2

    .line 1023
    :try_start_0
    iget-object v0, p0, Lo/cY;->l:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1024
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1032
    iget-object v0, p0, Lo/cY;->o:Ljava/util/List;

    monitor-enter v0

    .line 1033
    :try_start_1
    iget-object p2, p0, Lo/cY;->o:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1034
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    .line 1024
    :try_start_2
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method private c(Lo/dc$TaskDescription;Lo/dc$ActionBar;[B)[B
    .locals 1

    .line 563
    invoke-virtual {p0, p1}, Lo/cY;->d(Lo/dc$TaskDescription;)Lcom/netflix/mediaclient/drm/NetflixMediaDrm$CryptoSession;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 565
    sget-object p1, Lo/cY;->m:Ljava/lang/String;

    const-string p2, "sign - session NOT found!"

    invoke-static {p1, p2}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    if-nez p2, :cond_1

    .line 570
    sget-object p1, Lo/cY;->m:Ljava/lang/String;

    const-string p2, "sign - kch is null!"

    invoke-static {p1, p2}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 574
    :cond_1
    invoke-virtual {p2}, Lo/dc$ActionBar;->e()[B

    move-result-object p2

    invoke-interface {p1, p2, p3}, Lcom/netflix/mediaclient/drm/NetflixMediaDrm$CryptoSession;->sign([B[B)[B

    move-result-object p1

    return-object p1
.end method

.method private d(Lo/ahD;)Lo/dc$TaskDescription;
    .locals 3

    .line 710
    instance-of v0, p1, Lo/mG;

    if-eqz v0, :cond_3

    .line 714
    move-object v0, p1

    check-cast v0, Lo/mG;

    .line 716
    iget-object v1, p0, Lo/cY;->k:Lo/mG;

    if-ne v1, v0, :cond_2

    const/4 p1, 0x0

    .line 719
    iput-object p1, p0, Lo/cY;->k:Lo/mG;

    .line 722
    invoke-virtual {v0}, Lo/mG;->e()Lo/dc$TaskDescription;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 728
    invoke-virtual {v0}, Lo/mG;->a()[B

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lo/mG;->a()[B

    move-result-object v1

    invoke-virtual {v0}, Lo/mG;->e()Lo/dc$TaskDescription;

    move-result-object v0

    invoke-virtual {v0}, Lo/dc$TaskDescription;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 737
    :cond_0
    sget-object v0, Lo/cY;->m:Ljava/lang/String;

    const-string v1, "Key request is as expected."

    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object p1

    .line 725
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "updateKeyResponse:: pending crypto session can NOT be null!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 717
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not original request! Instead of: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lo/cY;->k:Lo/mG;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", we got: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 711
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not original request! But: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private d(Lo/dc$TaskDescription;Ljava/util/List;ILjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/dc$TaskDescription;",
            "Ljava/util/List<",
            "Lo/dc$TaskDescription;",
            ">;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 979
    monitor-enter p2

    .line 980
    :try_start_0
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 981
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr p1, p3

    const/4 p3, 0x0

    const/4 p4, 0x0

    :goto_0
    if-ge p4, p1, :cond_1

    .line 988
    invoke-interface {p2, p3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/dc$TaskDescription;

    if-eqz v0, :cond_0

    .line 989
    iget-object v1, v0, Lo/dc$TaskDescription;->c:[B

    if-eqz v1, :cond_0

    .line 993
    iget-object v1, v0, Lo/dc$TaskDescription;->c:[B

    invoke-direct {p0, v1}, Lo/cY;->a([B)V

    const/4 v1, 0x0

    .line 994
    iput-object v1, v0, Lo/dc$TaskDescription;->c:[B

    :cond_0
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    .line 997
    :cond_1
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private d(Ljava/lang/Throwable;)Z
    .locals 1

    .line 446
    invoke-static {}, Lo/adk;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 447
    instance-of v0, p1, Landroid/media/MediaDrmResetException;

    if-eqz v0, :cond_0

    .line 448
    sget-object v0, Lcom/netflix/mediaclient/StatusCode;->ay:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {p0, v0, p1}, Lo/cY;->b(Lcom/netflix/mediaclient/StatusCode;Ljava/lang/Throwable;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private e(II)V
    .locals 2

    .line 522
    invoke-static {}, Lo/adk;->a()Z

    move-result v0

    if-nez v0, :cond_0

    if-lez p1, :cond_0

    if-ge p2, p1, :cond_0

    .line 523
    iget-object p1, p0, Lo/cY;->n:Lcom/netflix/mediaclient/ui/error/CryptoErrorManager;

    sget-object p2, Lcom/netflix/mediaclient/service/error/crypto/ErrorSource;->e:Lcom/netflix/mediaclient/service/error/crypto/ErrorSource;

    sget-object v0, Lcom/netflix/mediaclient/StatusCode;->ay:Lcom/netflix/mediaclient/StatusCode;

    const/4 v1, 0x0

    invoke-interface {p1, p2, v0, v1}, Lcom/netflix/mediaclient/ui/error/CryptoErrorManager;->d(Lcom/netflix/mediaclient/service/error/crypto/ErrorSource;Lcom/netflix/mediaclient/StatusCode;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method private e(Lo/dc$TaskDescription;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 254
    iget-object v0, p0, Lo/cY;->c:Lcom/netflix/mediaclient/drm/NetflixMediaDrm;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lo/dc$TaskDescription;->c:[B

    if-eqz v0, :cond_1

    .line 260
    iget-object v0, p1, Lo/dc$TaskDescription;->b:Lo/dc$ActionBar;

    if-nez v0, :cond_0

    .line 261
    sget-object p1, Lo/cY;->m:Ljava/lang/String;

    const-string v0, "removeSessionKeys:: Nothing to remove! Skip!"

    invoke-static {p1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 263
    :cond_0
    sget-object v0, Lo/cY;->m:Ljava/lang/String;

    const-string v1, "removeSessionKeys:: "

    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    :try_start_0
    iget-object v0, p0, Lo/cY;->c:Lcom/netflix/mediaclient/drm/NetflixMediaDrm;

    iget-object p1, p1, Lo/dc$TaskDescription;->c:[B

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/drm/NetflixMediaDrm;->removeKeys([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 267
    sget-object v0, Lo/cY;->m:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "removeSessionKeys failed"

    invoke-static {v0, p1, v2, v1}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    :cond_1
    :goto_0
    return-void
.end method

.method private f(Lo/dc$TaskDescription;Lo/dc$ActionBar;[B[B)Z
    .locals 1

    .line 612
    invoke-virtual {p0, p1}, Lo/cY;->d(Lo/dc$TaskDescription;)Lcom/netflix/mediaclient/drm/NetflixMediaDrm$CryptoSession;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 614
    sget-object p1, Lo/cY;->m:Ljava/lang/String;

    const-string p2, "verify - session NOT found!"

    invoke-static {p1, p2}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    if-nez p2, :cond_1

    .line 619
    sget-object p1, Lo/cY;->m:Ljava/lang/String;

    const-string p2, "verify - kch is null!"

    invoke-static {p1, p2}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 623
    :cond_1
    invoke-virtual {p2}, Lo/dc$ActionBar;->e()[B

    move-result-object p2

    invoke-interface {p1, p2, p3, p4}, Lcom/netflix/mediaclient/drm/NetflixMediaDrm$CryptoSession;->verify([B[B[B)Z

    move-result p1

    return p1
.end method

.method protected static h()Ljava/lang/String;
    .locals 1

    const-string v0, "AES/CBC/NoPadding"

    return-object v0
.end method

.method private h(Lo/dc$TaskDescription;)V
    .locals 3

    .line 975
    iget-object v0, p0, Lo/cY;->l:Ljava/util/List;

    const/4 v1, 0x2

    const-string v2, "OpenedPersistedSessions"

    invoke-direct {p0, p1, v0, v1, v2}, Lo/cY;->d(Lo/dc$TaskDescription;Ljava/util/List;ILjava/lang/String;)V

    return-void
.end method

.method protected static i()Ljava/lang/String;
    .locals 1

    const-string v0, "HmacSHA256"

    return-object v0
.end method

.method private j(Lo/dc$TaskDescription;)V
    .locals 3

    .line 1073
    iget-object v0, p0, Lo/cY;->o:Ljava/util/List;

    const/4 v1, 0x2

    const-string v2, "KeyAquiredSessions"

    invoke-direct {p0, p1, v0, v1, v2}, Lo/cY;->d(Lo/dc$TaskDescription;Ljava/util/List;ILjava/lang/String;)V

    return-void
.end method

.method private k()V
    .locals 0

    return-void
.end method

.method private l()V
    .locals 1

    .line 145
    invoke-virtual {p0}, Lo/cY;->e()Lcom/netflix/mediaclient/drm/NetflixMediaDrm;

    move-result-object v0

    iput-object v0, p0, Lo/cY;->c:Lcom/netflix/mediaclient/drm/NetflixMediaDrm;

    .line 146
    iget-object v0, p0, Lo/cY;->c:Lcom/netflix/mediaclient/drm/NetflixMediaDrm;

    invoke-interface {v0, p0}, Lcom/netflix/mediaclient/drm/NetflixMediaDrm;->setOnEventListener(Lcom/netflix/mediaclient/drm/NetflixMediaDrm$OnEventListener;)V

    .line 147
    invoke-virtual {p0}, Lo/cY;->c()V

    return-void
.end method

.method private n()V
    .locals 1

    .line 885
    iget-object v0, p0, Lo/cY;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    return-void
.end method

.method private o()Lo/dc$TaskDescription;
    .locals 13

    const-string v0, "keyRequestData is null or empty, doCloseCryptoSession to avoid session leaks"

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 804
    :try_start_0
    sget-object v4, Lo/cY;->m:Ljava/lang/String;

    const-string v5, "createCryptoSession:: before open session"

    invoke-static {v4, v5}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    new-instance v4, Lo/dc$TaskDescription;

    invoke-direct {v4}, Lo/dc$TaskDescription;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 806
    :try_start_1
    iget-object v3, p0, Lo/cY;->c:Lcom/netflix/mediaclient/drm/NetflixMediaDrm;

    sget-object v5, Lcom/netflix/mediaclient/drm/NetflixMediaDrm$SessionType;->OFFLINE:Lcom/netflix/mediaclient/drm/NetflixMediaDrm$SessionType;

    invoke-interface {v3, v5}, Lcom/netflix/mediaclient/drm/NetflixMediaDrm;->openSession(Lcom/netflix/mediaclient/drm/NetflixMediaDrm$SessionType;)[B

    move-result-object v3

    iput-object v3, v4, Lo/dc$TaskDescription;->c:[B

    .line 807
    invoke-direct {p0}, Lo/cY;->n()V

    .line 808
    sget-object v3, Lo/cY;->m:Ljava/lang/String;

    const-string v5, "createCryptoSession:: after open session"

    invoke-static {v3, v5}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    iget-object v6, p0, Lo/cY;->c:Lcom/netflix/mediaclient/drm/NetflixMediaDrm;

    iget-object v7, v4, Lo/dc$TaskDescription;->c:[B

    sget-object v8, Lo/cY;->g:[B

    const-string v9, "application/xml"

    const/4 v10, 0x2

    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    invoke-interface/range {v6 .. v11}, Lcom/netflix/mediaclient/drm/NetflixMediaDrm;->getKeyRequest([B[BLjava/lang/String;ILjava/util/HashMap;)Lcom/netflix/mediaclient/drm/NetflixMediaDrm$KeyRequest;

    move-result-object v3

    .line 811
    invoke-interface {v3}, Lcom/netflix/mediaclient/drm/NetflixMediaDrm$KeyRequest;->getData()[B

    move-result-object v3

    iput-object v3, v4, Lo/dc$TaskDescription;->d:[B

    .line 812
    invoke-virtual {v4}, Lo/dc$TaskDescription;->c()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 813
    sget-object v3, Lo/cY;->m:Ljava/lang/String;

    invoke-static {v3, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    invoke-virtual {p0, v4}, Lo/cY;->b(Lo/dc$TaskDescription;)V

    .line 825
    :cond_0
    sget-object v3, Lo/cY;->m:Ljava/lang/String;

    const-string v5, "Number of all opened crypto sessions: %d"

    new-array v6, v1, [Ljava/lang/Object;

    iget-object v7, p0, Lo/cY;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {v3, v5, v6}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v3

    goto :goto_0

    :catchall_1
    move-exception v4

    move-object v12, v4

    move-object v4, v3

    move-object v3, v12

    .line 828
    :goto_0
    sget-object v5, Lo/cY;->m:Ljava/lang/String;

    new-array v6, v2, [Ljava/lang/Object;

    const-string v7, "createCryptoSession failed !"

    invoke-static {v5, v3, v7, v6}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 831
    invoke-virtual {p0, v3}, Lo/cY;->a(Ljava/lang/Throwable;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 835
    :try_start_2
    iget-object v5, p0, Lo/cY;->c:Lcom/netflix/mediaclient/drm/NetflixMediaDrm;

    sget-object v6, Lcom/netflix/mediaclient/drm/NetflixMediaDrm$SessionType;->OFFLINE:Lcom/netflix/mediaclient/drm/NetflixMediaDrm$SessionType;

    invoke-interface {v5, v6}, Lcom/netflix/mediaclient/drm/NetflixMediaDrm;->openSession(Lcom/netflix/mediaclient/drm/NetflixMediaDrm$SessionType;)[B

    move-result-object v5

    iput-object v5, v4, Lo/dc$TaskDescription;->c:[B

    .line 836
    invoke-direct {p0}, Lo/cY;->n()V

    .line 837
    iget-object v6, p0, Lo/cY;->c:Lcom/netflix/mediaclient/drm/NetflixMediaDrm;

    iget-object v7, v4, Lo/dc$TaskDescription;->c:[B

    sget-object v8, Lo/cY;->g:[B

    const-string v9, "application/xml"

    const/4 v10, 0x2

    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    invoke-interface/range {v6 .. v11}, Lcom/netflix/mediaclient/drm/NetflixMediaDrm;->getKeyRequest([B[BLjava/lang/String;ILjava/util/HashMap;)Lcom/netflix/mediaclient/drm/NetflixMediaDrm$KeyRequest;

    move-result-object v5

    .line 838
    invoke-interface {v5}, Lcom/netflix/mediaclient/drm/NetflixMediaDrm$KeyRequest;->getData()[B

    move-result-object v5

    iput-object v5, v4, Lo/dc$TaskDescription;->d:[B

    .line 839
    invoke-virtual {v4}, Lo/dc$TaskDescription;->c()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 840
    sget-object v5, Lo/cY;->m:Ljava/lang/String;

    invoke-static {v5, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    invoke-virtual {p0, v4}, Lo/cY;->b(Lo/dc$TaskDescription;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :catchall_2
    move-exception v0

    .line 846
    sget-object v5, Lo/cY;->m:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    const-string v6, "Failed to get key request on retry, report an error"

    invoke-static {v5, v0, v6, v2}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    .line 851
    invoke-virtual {p0, v4}, Lo/cY;->b(Lo/dc$TaskDescription;)V

    .line 852
    iget-object v0, p0, Lo/cY;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    sput v0, Lo/cY;->j:I

    .line 853
    iget-object v0, p0, Lo/cY;->n:Lcom/netflix/mediaclient/ui/error/CryptoErrorManager;

    sget-object v1, Lcom/netflix/mediaclient/service/error/crypto/ErrorSource;->e:Lcom/netflix/mediaclient/service/error/crypto/ErrorSource;

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->aB:Lcom/netflix/mediaclient/StatusCode;

    invoke-interface {v0, v1, v2, v3}, Lcom/netflix/mediaclient/ui/error/CryptoErrorManager;->d(Lcom/netflix/mediaclient/service/error/crypto/ErrorSource;Lcom/netflix/mediaclient/StatusCode;Ljava/lang/Throwable;)V

    :cond_3
    :goto_2
    return-object v4
.end method

.method private s()V
    .locals 2

    .line 890
    sget-object v0, Lo/cY;->m:Ljava/lang/String;

    const-string v1, "resetOpenedSessionCount::"

    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    iget-object v0, p0, Lo/cY;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 892
    iget-object v0, p0, Lo/cY;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 893
    iget-object v0, p0, Lo/cY;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method


# virtual methods
.method protected abstract a()Ljava/lang/String;
.end method

.method public a(Lo/dc$TaskDescription;)V
    .locals 0

    .line 221
    invoke-direct {p0, p1}, Lo/cY;->e(Lo/dc$TaskDescription;)V

    .line 222
    invoke-virtual {p0, p1}, Lo/cY;->b(Lo/dc$TaskDescription;)V

    return-void
.end method

.method protected a(Ljava/lang/Throwable;)Z
    .locals 4

    .line 414
    invoke-static {}, Lo/adk;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 418
    :cond_0
    instance-of p1, p1, Landroid/media/MediaDrmResetException;

    if-nez p1, :cond_1

    return v1

    .line 422
    :cond_1
    sget-object p1, Lo/cY;->m:Ljava/lang/String;

    const-string v0, "MediaDrm instance is not usable anymore, recreate!"

    invoke-static {p1, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    :try_start_0
    iget-object p1, p0, Lo/cY;->c:Lcom/netflix/mediaclient/drm/NetflixMediaDrm;

    invoke-interface {p1}, Lcom/netflix/mediaclient/drm/NetflixMediaDrm;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 431
    :catchall_0
    :try_start_1
    invoke-direct {p0}, Lo/cY;->l()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 436
    invoke-direct {p0}, Lo/cY;->s()V

    .line 437
    invoke-virtual {p0}, Lo/cY;->b()V

    const/4 p1, 0x1

    return p1

    :catchall_1
    move-exception p1

    .line 433
    sget-object v0, Lo/cY;->m:Ljava/lang/String;

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "Failed to recreate MediaDrm, abort"

    invoke-static {v0, p1, v3, v2}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    return v1
.end method

.method public a(Lo/dc$TaskDescription;Lo/dc$ActionBar;[B[B)[B
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .line 378
    sget-object v0, Lo/cY;->m:Ljava/lang/String;

    const-string v1, "BaseCryptoManager::encrypt..."

    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 382
    :try_start_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lo/cY;->b(Lo/dc$TaskDescription;Lo/dc$ActionBar;[B[B)[B

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 385
    invoke-virtual {p0, v1}, Lo/cY;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 388
    iput-object v0, p1, Lo/dc$TaskDescription;->c:[B

    .line 390
    :try_start_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lo/cY;->b(Lo/dc$TaskDescription;Lo/dc$ActionBar;[B[B)[B

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    .line 392
    invoke-direct {p0, p1}, Lo/cY;->d(Ljava/lang/Throwable;)Z

    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    return-object v0

    .line 401
    :cond_1
    sget-object p1, Lo/cY;->b:[B

    return-object p1
.end method

.method public b(Lo/dc$ActionBar;)Lo/dc$TaskDescription;
    .locals 1

    .line 862
    new-instance v0, Lo/dc$TaskDescription;

    invoke-direct {v0}, Lo/dc$TaskDescription;-><init>()V

    .line 863
    iput-object p1, v0, Lo/dc$TaskDescription;->b:Lo/dc$ActionBar;

    return-object v0
.end method

.method protected abstract b()V
.end method

.method public b(Lo/dc$TaskDescription;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 227
    iget-object v0, p0, Lo/cY;->c:Lcom/netflix/mediaclient/drm/NetflixMediaDrm;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lo/dc$TaskDescription;->c:[B

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p1, Lo/dc$TaskDescription;->c:[B

    invoke-direct {p0, v0}, Lo/cY;->a([B)V

    .line 232
    iget-object v0, p1, Lo/dc$TaskDescription;->c:[B

    const/4 v1, 0x0

    .line 233
    iput-object v1, p1, Lo/dc$TaskDescription;->c:[B

    .line 234
    iput-object v1, p1, Lo/dc$TaskDescription;->b:Lo/dc$ActionBar;

    .line 235
    invoke-direct {p0, p1, v0}, Lo/cY;->c(Lo/dc$TaskDescription;[B)V

    :cond_0
    return-void
.end method

.method protected b(Lo/dc$TaskDescription;Lo/dc$ActionBar;[B[B)[B
    .locals 10

    .line 458
    invoke-virtual {p0, p1}, Lo/cY;->d(Lo/dc$TaskDescription;)Lcom/netflix/mediaclient/drm/NetflixMediaDrm$CryptoSession;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 460
    sget-object p1, Lo/cY;->m:Ljava/lang/String;

    const-string p2, "encrypt - session NOT found!"

    invoke-static {p1, p2}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    if-nez p2, :cond_1

    .line 464
    sget-object p1, Lo/cY;->m:Ljava/lang/String;

    const-string p2, "encrypt - kce is null!"

    invoke-static {p1, p2}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_1
    const/4 v1, 0x0

    .line 470
    :try_start_0
    array-length v2, p3

    const/16 v3, 0x10

    const/16 v4, 0x4000

    if-gt v2, v4, :cond_2

    .line 473
    invoke-static {p3, v3}, Lo/ads;->c([BI)[B

    move-result-object p3

    .line 474
    invoke-virtual {p2}, Lo/dc$ActionBar;->e()[B

    move-result-object p2

    invoke-interface {p1, p2, p3, p4}, Lcom/netflix/mediaclient/drm/NetflixMediaDrm$CryptoSession;->encrypt([B[B[B)[B

    move-result-object p1

    goto :goto_1

    .line 477
    :cond_2
    sget-object v5, Lo/cY;->m:Ljava/lang/String;

    const-string v6, "encrypt piecewise"

    invoke-static {v5, v6}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    rem-int/lit8 v5, v2, 0x10

    rsub-int/lit8 v5, v5, 0x10

    add-int/2addr v5, v2

    .line 480
    new-array v5, v5, [B

    move-object v6, p4

    const/4 p4, 0x0

    :goto_0
    add-int/lit16 v7, p4, 0x4000

    .line 484
    invoke-static {p3, p4, v7}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v8

    .line 485
    invoke-virtual {p2}, Lo/dc$ActionBar;->e()[B

    move-result-object v9

    invoke-interface {p1, v9, v8, v6}, Lcom/netflix/mediaclient/drm/NetflixMediaDrm$CryptoSession;->encrypt([B[B[B)[B

    move-result-object v6

    const/16 v8, 0x3ff0

    .line 486
    invoke-static {v6, v8, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v8

    .line 489
    invoke-static {v6, v1, v5, p4, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int p4, v2, v7

    if-gt p4, v4, :cond_4

    if-lez p4, :cond_3

    .line 498
    invoke-static {p3, v7, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p3

    .line 499
    invoke-static {p3, v3}, Lo/ads;->c([BI)[B

    move-result-object p3

    .line 500
    invoke-virtual {p2}, Lo/dc$ActionBar;->e()[B

    move-result-object p2

    invoke-interface {p1, p2, p3, v8}, Lcom/netflix/mediaclient/drm/NetflixMediaDrm$CryptoSession;->encrypt([B[B[B)[B

    move-result-object p1

    .line 501
    array-length p2, p1

    invoke-static {p1, v1, v5, v7, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    move-object p1, v5

    .line 506
    :goto_1
    array-length p2, p1

    invoke-direct {p0, v2, p2}, Lo/cY;->e(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :cond_4
    move p4, v7

    move-object v6, v8

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 509
    sget-object p2, Lo/cY;->m:Ljava/lang/String;

    new-array p3, v1, [Ljava/lang/Object;

    const-string p4, "Failed to encrypt "

    invoke-static {p2, p1, p4, p3}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 510
    sget-object p2, Lcom/netflix/mediaclient/StatusCode;->ax:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {p0, p2, p1}, Lo/cY;->b(Lcom/netflix/mediaclient/StatusCode;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public declared-synchronized c(Lo/ahD;[BLo/dc$ActionBar;Lo/dc$ActionBar;)Lo/dc$TaskDescription;
    .locals 3

    monitor-enter p0

    .line 667
    :try_start_0
    sget-object p3, Lo/cY;->m:Ljava/lang/String;

    const-string p4, "Provide key response..."

    invoke-static {p3, p4}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    invoke-direct {p0, p1}, Lo/cY;->d(Lo/ahD;)Lo/dc$TaskDescription;

    move-result-object p1

    .line 670
    iget-object p3, p0, Lo/cY;->e:Lcom/netflix/mediaclient/service/configuration/crypto/DrmStateManager;

    invoke-virtual {p3}, Lcom/netflix/mediaclient/service/configuration/crypto/DrmStateManager;->b()Lcom/netflix/mediaclient/service/configuration/crypto/DrmStateManager$State;

    move-result-object p3

    sget-object p4, Lcom/netflix/mediaclient/service/configuration/crypto/DrmStateManager$State;->e:Lcom/netflix/mediaclient/service/configuration/crypto/DrmStateManager$State;

    if-ne p3, p4, :cond_0

    .line 671
    sget-object p3, Lo/cY;->m:Ljava/lang/String;

    const-string p4, "DRM in suspended state, update key response called, need to restore state"

    invoke-static {p3, p4}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    invoke-virtual {p0}, Lo/cY;->g()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :cond_0
    const/4 p3, 0x0

    .line 680
    :try_start_1
    iget-object p4, p0, Lo/cY;->c:Lcom/netflix/mediaclient/drm/NetflixMediaDrm;

    iget-object v0, p1, Lo/dc$TaskDescription;->c:[B

    invoke-interface {p4, v0, p2}, Lcom/netflix/mediaclient/drm/NetflixMediaDrm;->provideKeyResponse([B[B)[B

    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 681
    :try_start_2
    invoke-direct {p0, p1}, Lo/cY;->j(Lo/dc$TaskDescription;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p4

    goto :goto_0

    :catchall_1
    move-exception p4

    move-object p2, p3

    .line 684
    :goto_0
    :try_start_3
    invoke-virtual {p0, p1}, Lo/cY;->b(Lo/dc$TaskDescription;)V

    .line 685
    sget-object v0, Lo/cY;->m:Ljava/lang/String;

    const-string v1, "Failed to provide key response"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, p4, v1, v2}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 686
    iget-object v0, p0, Lo/cY;->n:Lcom/netflix/mediaclient/ui/error/CryptoErrorManager;

    sget-object v1, Lcom/netflix/mediaclient/service/error/crypto/ErrorSource;->e:Lcom/netflix/mediaclient/service/error/crypto/ErrorSource;

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->az:Lcom/netflix/mediaclient/StatusCode;

    invoke-interface {v0, v1, v2, p4}, Lcom/netflix/mediaclient/ui/error/CryptoErrorManager;->d(Lcom/netflix/mediaclient/service/error/crypto/ErrorSource;Lcom/netflix/mediaclient/StatusCode;Ljava/lang/Throwable;)V

    .line 689
    :goto_1
    sget-object p4, Lo/cY;->m:Ljava/lang/String;

    const-string v0, "Save keys..."

    invoke-static {p4, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_1

    .line 692
    sget-object p1, Lo/cY;->m:Ljava/lang/String;

    const-string p2, "Something is wrong, this should not happen! KeySetId is null!"

    invoke-static {p1, p2}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 693
    monitor-exit p0

    return-object p3

    .line 695
    :cond_1
    :try_start_4
    new-instance p3, Lo/dc$ActionBar;

    invoke-direct {p3, p2}, Lo/dc$ActionBar;-><init>([B)V

    iput-object p3, p1, Lo/dc$TaskDescription;->b:Lo/dc$ActionBar;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 698
    monitor-exit p0

    return-object p1

    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected abstract c()V
.end method

.method public c(Lo/dc$TaskDescription;Lo/dc$ActionBar;[B[B)[B
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    const/4 v0, 0x0

    .line 327
    :try_start_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lo/cY;->d(Lo/dc$TaskDescription;Lo/dc$ActionBar;[B[B)[B

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 330
    invoke-virtual {p0, v1}, Lo/cY;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 333
    iput-object v0, p1, Lo/dc$TaskDescription;->c:[B

    .line 335
    :try_start_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lo/cY;->d(Lo/dc$TaskDescription;Lo/dc$ActionBar;[B[B)[B

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    .line 337
    invoke-direct {p0, p1}, Lo/cY;->d(Ljava/lang/Throwable;)Z

    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    return-object v0

    .line 346
    :cond_1
    sget-object p1, Lo/cY;->b:[B

    return-object p1
.end method

.method protected declared-synchronized d(Lo/dc$TaskDescription;)Lcom/netflix/mediaclient/drm/NetflixMediaDrm$CryptoSession;
    .locals 5

    monitor-enter p0

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 281
    monitor-exit p0

    return-object v0

    .line 284
    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lo/cY;->c(Lo/dc$TaskDescription;)V

    .line 286
    iget-object v1, p1, Lo/dc$TaskDescription;->c:[B

    if-nez v1, :cond_1

    .line 288
    sget-object v1, Lo/cY;->m:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "findMediaDrmCryptoSession:: session found but without session ID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 289
    monitor-exit p0

    return-object v0

    .line 294
    :cond_1
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 296
    iget-object v0, p0, Lo/cY;->q:Ljava/util/Map;

    monitor-enter v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 297
    :try_start_2
    iget-object v2, p0, Lo/cY;->q:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/cY$StateListAnimator;

    if-eqz v2, :cond_2

    .line 298
    iget-object v3, v2, Lo/cY$StateListAnimator;->e:Lcom/netflix/mediaclient/drm/NetflixMediaDrm$CryptoSession;

    if-nez v3, :cond_3

    .line 300
    :cond_2
    iget-object v2, p0, Lo/cY;->c:Lcom/netflix/mediaclient/drm/NetflixMediaDrm;

    invoke-static {}, Lo/cY;->h()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lo/cY;->i()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v1, v3, v4}, Lcom/netflix/mediaclient/drm/NetflixMediaDrm;->getCryptoSession([BLjava/lang/String;Ljava/lang/String;)Lcom/netflix/mediaclient/drm/NetflixMediaDrm$CryptoSession;

    move-result-object v2

    .line 301
    new-instance v3, Lo/cY$StateListAnimator;

    invoke-direct {v3, p0, v2, p1}, Lo/cY$StateListAnimator;-><init>(Lo/cY;Lcom/netflix/mediaclient/drm/NetflixMediaDrm$CryptoSession;Lo/dc$TaskDescription;)V

    .line 305
    iget-object p1, p0, Lo/cY;->q:Ljava/util/Map;

    invoke-interface {p1, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v3

    .line 307
    :cond_3
    iget-object p1, v2, Lo/cY$StateListAnimator;->e:Lcom/netflix/mediaclient/drm/NetflixMediaDrm$CryptoSession;

    .line 308
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 309
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 316
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 309
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected abstract d()Ljava/util/UUID;
.end method

.method public d(Lo/dc$TaskDescription;Lo/dc$ActionBar;[B)[B
    .locals 2

    const/4 v0, 0x0

    .line 533
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lo/cY;->c(Lo/dc$TaskDescription;Lo/dc$ActionBar;[B)[B

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 536
    invoke-virtual {p0, v1}, Lo/cY;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 539
    iput-object v0, p1, Lo/dc$TaskDescription;->c:[B

    .line 541
    :try_start_1
    invoke-direct {p0, p1, p2, p3}, Lo/cY;->c(Lo/dc$TaskDescription;Lo/dc$ActionBar;[B)[B

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    .line 543
    invoke-direct {p0, p1}, Lo/cY;->d(Ljava/lang/Throwable;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 545
    sget-object p1, Lo/cY;->b:[B

    return-object p1

    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    return-object v0

    .line 558
    :cond_1
    sget-object p1, Lo/cY;->b:[B

    return-object p1

    .line 550
    :cond_2
    sget-object p1, Lo/cY;->b:[B

    return-object p1
.end method

.method protected d(Lo/dc$TaskDescription;Lo/dc$ActionBar;[B[B)[B
    .locals 1

    .line 351
    invoke-virtual {p0, p1}, Lo/cY;->d(Lo/dc$TaskDescription;)Lcom/netflix/mediaclient/drm/NetflixMediaDrm$CryptoSession;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 353
    sget-object p1, Lo/cY;->m:Ljava/lang/String;

    const-string p2, "decrypt - session NOT found!"

    invoke-static {p1, p2}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    if-nez p2, :cond_1

    .line 357
    sget-object p1, Lo/cY;->m:Ljava/lang/String;

    const-string p2, "decrypt - kce is null!"

    invoke-static {p1, p2}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 363
    :cond_1
    :try_start_0
    invoke-virtual {p2}, Lo/dc$ActionBar;->e()[B

    move-result-object p2

    invoke-interface {p1, p2, p3, p4}, Lcom/netflix/mediaclient/drm/NetflixMediaDrm$CryptoSession;->decrypt([B[B[B)[B

    move-result-object p1

    const/16 p2, 0x10

    .line 364
    invoke-static {p1, p2}, Lo/ads;->a([BI)[B

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 366
    sget-object p2, Lo/cY;->m:Ljava/lang/String;

    const/4 p3, 0x0

    new-array p3, p3, [Ljava/lang/Object;

    const-string p4, "Failed to decrypt "

    invoke-static {p2, p1, p4, p3}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 367
    sget-object p2, Lcom/netflix/mediaclient/StatusCode;->av:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {p0, p2, p1}, Lo/cY;->b(Lcom/netflix/mediaclient/StatusCode;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method protected e()Lcom/netflix/mediaclient/drm/NetflixMediaDrm;
    .locals 3

    .line 152
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/MediaDrmTypeProvider;->c:Lcom/netflix/mediaclient/service/configuration/MediaDrmTypeProvider;

    sget-object v1, Lcom/netflix/mediaclient/service/configuration/MediaDrmConsumer;->e:Lcom/netflix/mediaclient/service/configuration/MediaDrmConsumer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/netflix/mediaclient/service/configuration/MediaDrmTypeProvider;->b(Lcom/netflix/mediaclient/service/configuration/MediaDrmConsumer;Ljava/lang/Long;Lcom/netflix/mediaclient/service/player/StreamProfileType;)I

    move-result v0

    .line 153
    invoke-virtual {p0}, Lo/cY;->d()Ljava/util/UUID;

    move-result-object v1

    iget-object v2, p0, Lo/cY;->i:Lo/cz;

    invoke-interface {v2}, Lo/cz;->e()Lo/ds;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/drm/NetflixMediaDrmFactory;->createInstance(ILjava/util/UUID;Lo/ds;)Lcom/netflix/mediaclient/drm/NetflixMediaDrm;

    move-result-object v0

    return-object v0
.end method

.method public e(Lo/dc$TaskDescription;Lo/dc$ActionBar;[B[B)Z
    .locals 2

    const/4 v0, 0x0

    .line 583
    :try_start_0
    invoke-direct {p0, p1, p2, p3, p4}, Lo/cY;->f(Lo/dc$TaskDescription;Lo/dc$ActionBar;[B[B)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 586
    invoke-virtual {p0, v1}, Lo/cY;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 589
    iput-object v1, p1, Lo/dc$TaskDescription;->c:[B

    .line 591
    :try_start_1
    invoke-direct {p0, p1, p2, p3, p4}, Lo/cY;->f(Lo/dc$TaskDescription;Lo/dc$ActionBar;[B[B)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    .line 593
    invoke-direct {p0, p1}, Lo/cY;->d(Ljava/lang/Throwable;)Z

    move-result p1

    if-nez p1, :cond_0

    :cond_0
    :goto_0
    return v0
.end method

.method public declared-synchronized f()Lo/ahD;
    .locals 2

    monitor-enter p0

    .line 780
    :try_start_0
    iget-object v0, p0, Lo/cY;->k:Lo/mG;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/cY;->k:Lo/mG;

    invoke-virtual {v0}, Lo/mG;->e()Lo/dc$TaskDescription;

    move-result-object v0

    invoke-virtual {v0}, Lo/dc$TaskDescription;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 790
    :cond_0
    sget-object v0, Lo/cY;->m:Ljava/lang/String;

    const-string v1, "Key request is already pending, return it"

    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 781
    :cond_1
    :goto_0
    sget-object v0, Lo/cY;->m:Ljava/lang/String;

    const-string v1, "valid keyRequestData does not exist, create it!"

    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    invoke-direct {p0}, Lo/cY;->o()Lo/dc$TaskDescription;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 787
    new-instance v1, Lo/mG;

    invoke-direct {v1, v0}, Lo/mG;-><init>(Lo/dc$TaskDescription;)V

    iput-object v1, p0, Lo/cY;->k:Lo/mG;

    .line 793
    :goto_1
    iget-object v0, p0, Lo/cY;->k:Lo/mG;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 784
    :cond_2
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Crypto session can not be null after "

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized g()V
    .locals 6

    monitor-enter p0

    .line 1108
    :try_start_0
    sget-object v0, Lo/cY;->m:Ljava/lang/String;

    const-string v1, "Restore requested and enabled..."

    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1109
    iget-object v0, p0, Lo/cY;->e:Lcom/netflix/mediaclient/service/configuration/crypto/DrmStateManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/crypto/DrmStateManager;->b()Lcom/netflix/mediaclient/service/configuration/crypto/DrmStateManager$State;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/service/configuration/crypto/DrmStateManager$State;->d:Lcom/netflix/mediaclient/service/configuration/crypto/DrmStateManager$State;

    if-ne v0, v1, :cond_0

    .line 1110
    sget-object v0, Lo/cY;->m:Ljava/lang/String;

    const-string v1, "It was already restored, do nothing..."

    invoke-static {v0, v1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1111
    monitor-exit p0

    return-void

    .line 1113
    :cond_0
    :try_start_1
    iget-object v0, p0, Lo/cY;->e:Lcom/netflix/mediaclient/service/configuration/crypto/DrmStateManager;

    sget-object v1, Lcom/netflix/mediaclient/service/configuration/crypto/DrmStateManager$State;->a:Lcom/netflix/mediaclient/service/configuration/crypto/DrmStateManager$State;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/configuration/crypto/DrmStateManager;->d(Lcom/netflix/mediaclient/service/configuration/crypto/DrmStateManager$State;)V

    .line 1116
    iget-object v0, p0, Lo/cY;->e:Lcom/netflix/mediaclient/service/configuration/crypto/DrmStateManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/crypto/DrmStateManager;->e()Ljava/util/List;

    move-result-object v0

    .line 1117
    sget-object v1, Lo/cY;->m:Ljava/lang/String;

    const-string v2, "Restoring crypto sessions: %d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1118
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/dc$TaskDescription;

    .line 1122
    invoke-virtual {p0, v1}, Lo/cY;->d(Lo/dc$TaskDescription;)Lcom/netflix/mediaclient/drm/NetflixMediaDrm$CryptoSession;

    goto :goto_0

    .line 1125
    :cond_1
    iget-object v0, p0, Lo/cY;->e:Lcom/netflix/mediaclient/service/configuration/crypto/DrmStateManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/crypto/DrmStateManager;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1126
    iget-object v0, p0, Lo/cY;->e:Lcom/netflix/mediaclient/service/configuration/crypto/DrmStateManager;

    sget-object v1, Lcom/netflix/mediaclient/service/configuration/crypto/DrmStateManager$State;->d:Lcom/netflix/mediaclient/service/configuration/crypto/DrmStateManager$State;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/configuration/crypto/DrmStateManager;->d(Lcom/netflix/mediaclient/service/configuration/crypto/DrmStateManager$State;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1127
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized j()V
    .locals 6

    monitor-enter p0

    .line 1079
    :try_start_0
    sget-object v0, Lo/cY;->m:Ljava/lang/String;

    const-string v1, "Suspend requested and enabled..."

    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1081
    iget-object v0, p0, Lo/cY;->e:Lcom/netflix/mediaclient/service/configuration/crypto/DrmStateManager;

    sget-object v1, Lcom/netflix/mediaclient/service/configuration/crypto/DrmStateManager$State;->e:Lcom/netflix/mediaclient/service/configuration/crypto/DrmStateManager$State;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/configuration/crypto/DrmStateManager;->d(Lcom/netflix/mediaclient/service/configuration/crypto/DrmStateManager$State;)V

    .line 1083
    sget-object v0, Lo/cY;->m:Ljava/lang/String;

    const-string v1, "OpenedPersistedSessions: %d"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lo/cY;->l:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v0, v1, v3}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1084
    sget-object v0, Lo/cY;->m:Ljava/lang/String;

    const-string v1, "Crypto sessions: %d"

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lo/cY;->q:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v0, v1, v3}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1086
    iget-object v0, p0, Lo/cY;->q:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/cY$StateListAnimator;

    .line 1087
    iget-object v3, p0, Lo/cY;->e:Lcom/netflix/mediaclient/service/configuration/crypto/DrmStateManager;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/service/configuration/crypto/DrmStateManager;->e()Ljava/util/List;

    move-result-object v3

    iget-object v1, v1, Lo/cY$StateListAnimator;->b:Lo/dc$TaskDescription;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1090
    :cond_0
    iget-object v0, p0, Lo/cY;->e:Lcom/netflix/mediaclient/service/configuration/crypto/DrmStateManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/crypto/DrmStateManager;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/dc$TaskDescription;

    .line 1091
    iget-object v4, v1, Lo/dc$TaskDescription;->c:[B

    .line 1092
    iput-object v3, v1, Lo/dc$TaskDescription;->c:[B

    .line 1093
    invoke-direct {p0, v4}, Lo/cY;->a([B)V

    .line 1094
    invoke-direct {p0, v1, v4}, Lo/cY;->c(Lo/dc$TaskDescription;[B)V

    goto :goto_1

    .line 1097
    :cond_1
    sget-object v0, Lo/cY;->m:Ljava/lang/String;

    const-string v1, "Suspend:: Still opened crypto sessions: %d"

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lo/cY;->q:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v5

    invoke-static {v0, v1, v2}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1099
    iget-object v0, p0, Lo/cY;->c:Lcom/netflix/mediaclient/drm/NetflixMediaDrm;

    if-eqz v0, :cond_2

    .line 1100
    iget-object v0, p0, Lo/cY;->c:Lcom/netflix/mediaclient/drm/NetflixMediaDrm;

    invoke-interface {v0}, Lcom/netflix/mediaclient/drm/NetflixMediaDrm;->close()V

    .line 1101
    iput-object v3, p0, Lo/cY;->c:Lcom/netflix/mediaclient/drm/NetflixMediaDrm;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1103
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public m()Z
    .locals 2

    .line 1131
    iget-object v0, p0, Lo/cY;->e:Lcom/netflix/mediaclient/service/configuration/crypto/DrmStateManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/crypto/DrmStateManager;->b()Lcom/netflix/mediaclient/service/configuration/crypto/DrmStateManager$State;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/service/configuration/crypto/DrmStateManager$State;->d:Lcom/netflix/mediaclient/service/configuration/crypto/DrmStateManager$State;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onEvent(Lcom/netflix/mediaclient/drm/NetflixMediaDrm;[BII[B)V
    .locals 0

    const/4 p1, 0x1

    if-ne p3, p1, :cond_0

    .line 631
    sget-object p1, Lo/cY;->m:Ljava/lang/String;

    const-string p2, "Provisioning is required"

    invoke-static {p1, p2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    if-ne p3, p1, :cond_1

    .line 633
    sget-object p1, Lo/cY;->m:Ljava/lang/String;

    const-string p2, "MediaDrm event: Key required"

    invoke-static {p1, p2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const/4 p1, 0x3

    if-ne p3, p1, :cond_2

    .line 635
    sget-object p1, Lo/cY;->m:Ljava/lang/String;

    const-string p2, "MediaDrm event: Key expired"

    invoke-static {p1, p2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const/4 p1, 0x4

    if-ne p3, p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 p1, 0x5

    if-ne p3, p1, :cond_4

    .line 644
    invoke-direct {p0, p2}, Lo/cY;->a([B)V

    .line 645
    invoke-direct {p0, p2}, Lo/cY;->b([B)V

    .line 646
    iget-object p1, p0, Lo/cY;->a:Lo/dc$StateListAnimator;

    invoke-interface {p1}, Lo/dc$StateListAnimator;->a()V

    :cond_4
    :goto_0
    return-void
.end method
