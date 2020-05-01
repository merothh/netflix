.class public final enum Lcom/netflix/mediaclient/service/install/InAppWidevineInstallationHelper;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netflix/mediaclient/service/install/InAppWidevineInstallationHelper;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/netflix/mediaclient/service/install/InAppWidevineInstallationHelper;

.field private static final synthetic j:[Lcom/netflix/mediaclient/service/install/InAppWidevineInstallationHelper;


# instance fields
.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/servicemgr/IPlayer$Dialog;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lo/if$StateListAnimator;

.field private d:Z

.field private e:Lo/if;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 17
    new-instance v0, Lcom/netflix/mediaclient/service/install/InAppWidevineInstallationHelper;

    const/4 v1, 0x0

    const-string v2, "INSTANCE"

    invoke-direct {v0, v2, v1}, Lcom/netflix/mediaclient/service/install/InAppWidevineInstallationHelper;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/install/InAppWidevineInstallationHelper;->a:Lcom/netflix/mediaclient/service/install/InAppWidevineInstallationHelper;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/netflix/mediaclient/service/install/InAppWidevineInstallationHelper;

    .line 16
    sget-object v2, Lcom/netflix/mediaclient/service/install/InAppWidevineInstallationHelper;->a:Lcom/netflix/mediaclient/service/install/InAppWidevineInstallationHelper;

    aput-object v2, v0, v1

    sput-object v0, Lcom/netflix/mediaclient/service/install/InAppWidevineInstallationHelper;->j:[Lcom/netflix/mediaclient/service/install/InAppWidevineInstallationHelper;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 21
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/install/InAppWidevineInstallationHelper;->a()Z

    move-result p1

    iput-boolean p1, p0, Lcom/netflix/mediaclient/service/install/InAppWidevineInstallationHelper;->d:Z

    .line 25
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/mediaclient/service/install/InAppWidevineInstallationHelper;->b:Ljava/util/List;

    .line 88
    new-instance p1, Lcom/netflix/mediaclient/service/install/InAppWidevineInstallationHelper$2;

    invoke-direct {p1, p0}, Lcom/netflix/mediaclient/service/install/InAppWidevineInstallationHelper$2;-><init>(Lcom/netflix/mediaclient/service/install/InAppWidevineInstallationHelper;)V

    iput-object p1, p0, Lcom/netflix/mediaclient/service/install/InAppWidevineInstallationHelper;->c:Lo/if$StateListAnimator;

    return-void
.end method

.method static synthetic b(Lcom/netflix/mediaclient/service/install/InAppWidevineInstallationHelper;Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackFallbackStatus;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/install/InAppWidevineInstallationHelper;->c(Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackFallbackStatus;)V

    return-void
.end method

.method private declared-synchronized c(Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackFallbackStatus;)V
    .locals 3

    monitor-enter p0

    const/4 v0, 0x0

    .line 80
    :try_start_0
    iput-object v0, p0, Lcom/netflix/mediaclient/service/install/InAppWidevineInstallationHelper;->e:Lo/if;

    .line 81
    iget-object v0, p0, Lcom/netflix/mediaclient/service/install/InAppWidevineInstallationHelper;->b:Ljava/util/List;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 82
    :try_start_1
    iget-object v1, p0, Lcom/netflix/mediaclient/service/install/InAppWidevineInstallationHelper;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netflix/mediaclient/servicemgr/IPlayer$Dialog;

    .line 83
    invoke-interface {v2, p1}, Lcom/netflix/mediaclient/servicemgr/IPlayer$Dialog;->d(Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackFallbackStatus;)V

    goto :goto_0

    .line 85
    :cond_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 86
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 85
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/service/install/InAppWidevineInstallationHelper;
    .locals 1

    .line 16
    const-class v0, Lcom/netflix/mediaclient/service/install/InAppWidevineInstallationHelper;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netflix/mediaclient/service/install/InAppWidevineInstallationHelper;

    return-object p0
.end method

.method public static values()[Lcom/netflix/mediaclient/service/install/InAppWidevineInstallationHelper;
    .locals 1

    .line 16
    sget-object v0, Lcom/netflix/mediaclient/service/install/InAppWidevineInstallationHelper;->j:[Lcom/netflix/mediaclient/service/install/InAppWidevineInstallationHelper;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/service/install/InAppWidevineInstallationHelper;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/service/install/InAppWidevineInstallationHelper;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized a()Z
    .locals 1

    monitor-enter p0

    .line 28
    :try_start_0
    invoke-static {}, Lo/adU;->h()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c()Z
    .locals 2

    monitor-enter p0

    .line 33
    :try_start_0
    invoke-static {}, Lo/adq;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "InAppWidevineInstallationHelper"

    const-string v1, "We do not have InApp Widevine for x86, do not attempt to restart playback."

    .line 34
    invoke-static {v0, v1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    .line 35
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x1

    .line 37
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public d()Lcom/netflix/mediaclient/servicemgr/IPlayer$InAppWidevineInstallationState;
    .locals 1

    .line 103
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/install/InAppWidevineInstallationHelper;->d:Z

    if-eqz v0, :cond_0

    .line 104
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IPlayer$InAppWidevineInstallationState;->b:Lcom/netflix/mediaclient/servicemgr/IPlayer$InAppWidevineInstallationState;

    return-object v0

    .line 107
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/install/InAppWidevineInstallationHelper;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 108
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IPlayer$InAppWidevineInstallationState;->c:Lcom/netflix/mediaclient/servicemgr/IPlayer$InAppWidevineInstallationState;

    return-object v0

    .line 111
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/install/InAppWidevineInstallationHelper;->c()Z

    move-result v0

    if-nez v0, :cond_2

    .line 112
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IPlayer$InAppWidevineInstallationState;->f:Lcom/netflix/mediaclient/servicemgr/IPlayer$InAppWidevineInstallationState;

    return-object v0

    .line 115
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/service/install/InAppWidevineInstallationHelper;->e:Lo/if;

    if-eqz v0, :cond_3

    .line 116
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IPlayer$InAppWidevineInstallationState;->d:Lcom/netflix/mediaclient/servicemgr/IPlayer$InAppWidevineInstallationState;

    return-object v0

    .line 119
    :cond_3
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IPlayer$InAppWidevineInstallationState;->j:Lcom/netflix/mediaclient/servicemgr/IPlayer$InAppWidevineInstallationState;

    return-object v0
.end method

.method public declared-synchronized d(Lcom/netflix/mediaclient/servicemgr/IPlayer$Dialog;)Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackFallbackStatus;
    .locals 2

    monitor-enter p0

    .line 47
    :try_start_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/install/InAppWidevineInstallationHelper;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "InAppWidevineInstallationHelper"

    const-string v0, "InApp Widevine module is already installed, no need to install it."

    .line 48
    invoke-static {p1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    sget-object p1, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackFallbackStatus;->d:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackFallbackStatus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit p0

    return-object p1

    .line 52
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/install/InAppWidevineInstallationHelper;->b:Ljava/util/List;

    monitor-enter v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 53
    :try_start_2
    iget-object v1, p0, Lcom/netflix/mediaclient/service/install/InAppWidevineInstallationHelper;->b:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 58
    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/service/install/InAppWidevineInstallationHelper;->b:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    :goto_0
    iget-object p1, p0, Lcom/netflix/mediaclient/service/install/InAppWidevineInstallationHelper;->e:Lo/if;

    if-eqz p1, :cond_2

    const-string p1, "InAppWidevineInstallationHelper"

    const-string v1, "InApp Widevine module installation is in progress!"

    .line 62
    invoke-static {p1, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    sget-object p1, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackFallbackStatus;->b:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackFallbackStatus;

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_2
    :try_start_3
    const-string p1, "InAppWidevineInstallationHelper"

    const-string v1, "InApp Widevine module is NOT installed, install it."

    .line 66
    invoke-static {p1, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    new-instance p1, Lo/if;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/install/InAppWidevineInstallationHelper;->c:Lo/if$StateListAnimator;

    invoke-direct {p1, v1}, Lo/if;-><init>(Lo/if$StateListAnimator;)V

    iput-object p1, p0, Lcom/netflix/mediaclient/service/install/InAppWidevineInstallationHelper;->e:Lo/if;

    .line 69
    iget-object p1, p0, Lcom/netflix/mediaclient/service/install/InAppWidevineInstallationHelper;->e:Lo/if;

    invoke-virtual {p1}, Lo/if;->c()V

    .line 70
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 71
    :try_start_4
    sget-object p1, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackFallbackStatus;->b:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackFallbackStatus;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 70
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized e(Lcom/netflix/mediaclient/servicemgr/IPlayer$Dialog;)V
    .locals 1

    monitor-enter p0

    .line 75
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/install/InAppWidevineInstallationHelper;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
