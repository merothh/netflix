.class final Lo/yV;
.super Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;
.source ""

# interfaces
.implements Lorg/linphone/core/LinphoneCoreListener;
.implements Lo/yW$ActionBar;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/yV$TaskDescription;,
        Lo/yV$Activity;
    }
.end annotation


# static fields
.field private static D:Landroid/os/Handler;

.field private static F:Ljava/util/concurrent/atomic/AtomicBoolean;


# instance fields
.field private final A:Lo/zF;

.field private B:Lorg/linphone/core/LinphoneAddress;

.field private C:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final E:Ljava/lang/String;

.field private G:Lorg/linphone/core/LinphoneCore;

.field private final H:Ljava/lang/String;

.field private final I:Ljava/lang/String;

.field private z:Ljava/util/Timer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 84
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lo/yV;->D:Landroid/os/Handler;

    .line 93
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lo/yV;->F:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lo/za;Lo/Ac;Lcom/netflix/mediaclient/service/user/UserAgent;Lo/cz;Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallConfigData;Lo/zF;)V
    .locals 0

    .line 107
    invoke-direct/range {p0 .. p6}, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;-><init>(Landroid/content/Context;Lo/hF;Lo/Ac;Lcom/netflix/mediaclient/service/user/UserAgent;Lo/cz;Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallConfigData;)V

    const/4 p2, 0x0

    .line 88
    iput-object p2, p0, Lo/yV;->B:Lorg/linphone/core/LinphoneAddress;

    .line 89
    new-instance p3, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p4, 0x0

    invoke-direct {p3, p4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p3, p0, Lo/yV;->C:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 99
    iput-object p2, p0, Lo/yV;->G:Lorg/linphone/core/LinphoneCore;

    .line 109
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p3

    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "/.linphonerc"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lo/yV;->E:Ljava/lang/String;

    .line 110
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p3

    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "/linphonerc"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lo/yV;->H:Ljava/lang/String;

    .line 111
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/rootca.pem"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lo/yV;->I:Ljava/lang/String;

    .line 112
    iput-object p7, p0, Lo/yV;->A:Lo/zF;

    .line 113
    new-instance p1, Lo/yV$4;

    invoke-direct {p1, p0}, Lo/yV$4;-><init>(Lo/yV;)V

    iput-object p1, p0, Lo/yV;->i:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic C()Landroid/os/Handler;
    .locals 1

    .line 79
    sget-object v0, Lo/yV;->D:Landroid/os/Handler;

    return-object v0
.end method

.method private E()V
    .locals 4

    const-string v0, "nf_voip_linphone"

    const-string v1, "--- Calling CALL CLEANUP"

    .line 789
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    invoke-virtual {p0}, Lo/yV;->m()V

    .line 793
    iget-object v1, p0, Lo/yV;->k:Lo/zb;

    invoke-virtual {v1}, Lo/zb;->c()V

    .line 796
    iget-object v1, p0, Lo/yV;->p:Lo/yW;

    if-eqz v1, :cond_0

    .line 797
    iget-object v1, p0, Lo/yV;->p:Lo/yW;

    invoke-virtual {v1}, Lo/yW;->c()V

    .line 801
    :cond_0
    iget-object v1, p0, Lo/yV;->d:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 802
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_3

    .line 803
    iget-object v1, p0, Lo/yV;->t:Landroid/media/AudioManager;

    if-eqz v1, :cond_1

    .line 804
    iget-object v1, p0, Lo/yV;->t:Landroid/media/AudioManager;

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setMode(I)V

    .line 806
    :cond_1
    iget-object v1, p0, Lo/yV;->G:Lorg/linphone/core/LinphoneCore;

    if-eqz v1, :cond_2

    .line 807
    invoke-interface {v1, v2}, Lorg/linphone/core/LinphoneCore;->enableSpeaker(Z)V

    .line 809
    :cond_2
    iget-object v1, p0, Lo/yV;->k:Lo/zb;

    invoke-virtual {v1, v2}, Lo/zb;->a(Z)V

    const-string v1, "All call terminated, AudioManager: back to MODE_NORMAL and routing back to earpiece"

    .line 810
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    :cond_3
    iget-object v0, p0, Lo/yV;->h:Lo/yY;

    if-eqz v0, :cond_4

    .line 815
    iget-object v0, p0, Lo/yV;->h:Lo/yY;

    iget-object v1, p0, Lo/yV;->b:Lo/Ac;

    sget-object v3, Lo/yV;->D:Landroid/os/Handler;

    invoke-interface {v0, v1, v3}, Lo/yY;->c(Lo/Ac;Landroid/os/Handler;)V

    :cond_4
    const-wide/16 v0, 0x0

    .line 817
    iput-wide v0, p0, Lo/yV;->m:J

    .line 818
    iget-object v0, p0, Lo/yV;->u:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 v0, 0x0

    .line 819
    iput-object v0, p0, Lo/yV;->n:Lcom/netflix/mediaclient/servicemgr/IVoip$ActionBar;

    return-void
.end method

.method private F()V
    .locals 2

    .line 737
    iget-object v0, p0, Lo/yV;->u:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const-string v1, "nf_voip_linphone"

    if-nez v0, :cond_0

    const-string v0, "No dial request, no need to start engine"

    .line 738
    invoke-static {v1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 742
    :cond_0
    iget-object v0, p0, Lo/yV;->v:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "VOIP is not ready"

    .line 743
    invoke-static {v1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 747
    :cond_1
    invoke-direct {p0}, Lo/yV;->L()V

    return-void
.end method

.method private declared-synchronized G()V
    .locals 7

    monitor-enter p0

    .line 751
    :try_start_0
    sget-object v0, Lo/yV;->F:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 753
    iget-object v0, p0, Lo/yV;->G:Lorg/linphone/core/LinphoneCore;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/yV;->v:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 754
    iget-object v0, p0, Lo/yV;->v:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const-string v0, "nf_voip_linphone"

    const-string v3, "--- STOPPING VOIP engine"

    .line 755
    invoke-static {v0, v3}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, 0x0

    .line 758
    :try_start_1
    iget-object v3, p0, Lo/yV;->p:Lo/yW;

    if-eqz v3, :cond_0

    .line 759
    iget-object v3, p0, Lo/yV;->p:Lo/yW;

    invoke-virtual {v3}, Lo/yW;->i()V

    .line 761
    :cond_0
    iget-object v3, p0, Lo/yV;->z:Ljava/util/Timer;

    invoke-virtual {v3}, Ljava/util/Timer;->cancel()V

    .line 762
    iget-object v3, p0, Lo/yV;->G:Lorg/linphone/core/LinphoneCore;

    invoke-interface {v3}, Lorg/linphone/core/LinphoneCore;->destroy()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 766
    :try_start_2
    iput-object v0, p0, Lo/yV;->G:Lorg/linphone/core/LinphoneCore;

    .line 767
    :goto_0
    iput-object v0, p0, Lo/yV;->p:Lo/yW;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v3

    :try_start_3
    const-string v4, "nf_voip_linphone"

    const-string v5, "stopEngine exception %s"

    new-array v6, v1, [Ljava/lang/Object;

    .line 764
    invoke-virtual {v3}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    invoke-static {v4, v5, v6}, Lo/ChooserTargetService;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 766
    :try_start_4
    iput-object v0, p0, Lo/yV;->G:Lorg/linphone/core/LinphoneCore;

    goto :goto_0

    :goto_1
    iput-object v0, p0, Lo/yV;->G:Lorg/linphone/core/LinphoneCore;

    .line 767
    iput-object v0, p0, Lo/yV;->p:Lo/yW;

    .line 768
    throw v1

    :cond_1
    const-string v0, "nf_voip_linphone"

    const-string v3, "  --> Engine already stopped!"

    .line 770
    invoke-static {v0, v3}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    const-string v0, "nf_voip_linphone"

    const-string v3, "--- STOP COMPLETE, voip engine is now ready for new call"

    .line 774
    invoke-static {v0, v3}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    iget-object v0, p0, Lo/yV;->f:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 776
    iget-object v0, p0, Lo/yV;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/netflix/mediaclient/servicemgr/IVoip$TaskDescription;

    .line 777
    invoke-interface {v3, v1}, Lcom/netflix/mediaclient/servicemgr/IVoip$TaskDescription;->b(Z)V

    goto :goto_3

    .line 780
    :cond_2
    sget-object v0, Lo/yV;->F:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 781
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized H()Z
    .locals 10

    monitor-enter p0

    :try_start_0
    const-string v0, "nf_voip_linphone"

    const-string v1, "startLinphoneCore"

    .line 580
    invoke-static {v0, v1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    invoke-direct {p0}, Lo/yV;->I()V

    .line 582
    iget-object v0, p0, Lo/yV;->G:Lorg/linphone/core/LinphoneCore;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/yV;->l:Lcom/netflix/mediaclient/service/voip/BaseVoipEngine$ServiceState;

    sget-object v2, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine$ServiceState;->a:Lcom/netflix/mediaclient/service/voip/BaseVoipEngine$ServiceState;

    if-ne v0, v2, :cond_0

    const-string v0, "nf_voip_linphone"

    const-string v2, "Linphone engine already started"

    .line 583
    invoke-static {v0, v2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 584
    monitor-exit p0

    return v1

    .line 587
    :cond_0
    :try_start_1
    iget-object v0, p0, Lo/yV;->p:Lo/yW;

    if-nez v0, :cond_1

    .line 588
    new-instance v0, Lo/yW;

    iget-object v2, p0, Lo/yV;->d:Landroid/content/Context;

    invoke-direct {v0, v2, p0}, Lo/yW;-><init>(Landroid/content/Context;Lo/yW$ActionBar;)V

    iput-object v0, p0, Lo/yV;->p:Lo/yW;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 592
    :cond_1
    :try_start_2
    sget v0, Lo/ax$Application;->c:I

    iget-object v2, p0, Lo/yV;->E:Ljava/lang/String;

    invoke-direct {p0, v0, v2}, Lo/yV;->a(ILjava/lang/String;)V

    .line 593
    sget v0, Lo/ax$Application;->d:I

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lo/yV;->H:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lo/yV;->d(ILjava/lang/String;)V

    .line 594
    sget v0, Lo/ax$Application;->a:I

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lo/yV;->I:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lo/yV;->d(ILjava/lang/String;)V

    .line 602
    invoke-static {}, Lorg/linphone/core/LinphoneCoreFactory;->instance()Lorg/linphone/core/LinphoneCoreFactory;

    move-result-object v3

    iget-object v5, p0, Lo/yV;->E:Ljava/lang/String;

    iget-object v6, p0, Lo/yV;->H:Ljava/lang/String;

    const/4 v7, 0x0

    iget-object v8, p0, Lo/yV;->d:Landroid/content/Context;

    move-object v4, p0

    invoke-virtual/range {v3 .. v8}, Lorg/linphone/core/LinphoneCoreFactory;->createLinphoneCore(Lorg/linphone/core/LinphoneCoreListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lorg/linphone/core/LinphoneCore;

    move-result-object v0

    iput-object v0, p0, Lo/yV;->G:Lorg/linphone/core/LinphoneCore;

    .line 605
    new-instance v0, Lo/yV$Activity;

    iget-object v2, p0, Lo/yV;->G:Lorg/linphone/core/LinphoneCore;

    iget-object v3, p0, Lo/yV;->l:Lcom/netflix/mediaclient/service/voip/BaseVoipEngine$ServiceState;

    invoke-direct {v0, v2, v3}, Lo/yV$Activity;-><init>(Lorg/linphone/core/LinphoneCore;Lcom/netflix/mediaclient/service/voip/BaseVoipEngine$ServiceState;)V

    .line 606
    new-instance v5, Lo/yV$2;

    invoke-direct {v5, p0, v0}, Lo/yV$2;-><init>(Lo/yV;Lo/yV$Activity;)V

    .line 614
    new-instance v0, Ljava/util/Timer;

    const-string v2, "LinphoneVoipEngine scheduler"

    invoke-direct {v0, v2}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lo/yV;->z:Ljava/util/Timer;

    .line 615
    iget-object v4, p0, Lo/yV;->z:Ljava/util/Timer;

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x64

    invoke-virtual/range {v4 .. v9}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 617
    sget-object v0, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine$ServiceState;->d:Lcom/netflix/mediaclient/service/voip/BaseVoipEngine$ServiceState;

    iput-object v0, p0, Lo/yV;->l:Lcom/netflix/mediaclient/service/voip/BaseVoipEngine$ServiceState;
    :try_end_2
    .catch Lorg/linphone/core/LinphoneCoreException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 623
    monitor-exit p0

    return v1

    :catch_0
    move-exception v0

    :try_start_3
    const-string v2, "nf_voip_linphone"

    const-string v3, "Could not create LinphoneCore instance, %s"

    new-array v1, v1, [Ljava/lang/Object;

    .line 620
    invoke-virtual {v0}, Lorg/linphone/core/LinphoneCoreException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    aput-object v0, v1, v4

    invoke-static {v2, v3, v1}, Lo/ChooserTargetService;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 621
    monitor-exit p0

    return v4

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private I()V
    .locals 2

    const-string v0, "nf_voip_linphone"

    const-string v1, "loadLinphoneLibs"

    .line 627
    invoke-static {v0, v1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    iget-object v0, p0, Lo/yV;->d:Landroid/content/Context;

    invoke-static {v0}, Lo/adk;->n(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "c++_shared"

    .line 630
    invoke-static {v0, v1}, Lcom/google/android/play/core/splitinstall/SplitInstallHelper;->loadLibrary(Landroid/content/Context;Ljava/lang/String;)V

    const-string v1, "bctoolbox"

    .line 631
    invoke-static {v0, v1}, Lcom/google/android/play/core/splitinstall/SplitInstallHelper;->loadLibrary(Landroid/content/Context;Ljava/lang/String;)V

    const-string v1, "ortp"

    .line 632
    invoke-static {v0, v1}, Lcom/google/android/play/core/splitinstall/SplitInstallHelper;->loadLibrary(Landroid/content/Context;Ljava/lang/String;)V

    const-string v1, "mediastreamer_base"

    .line 633
    invoke-static {v0, v1}, Lcom/google/android/play/core/splitinstall/SplitInstallHelper;->loadLibrary(Landroid/content/Context;Ljava/lang/String;)V

    const-string v1, "mediastreamer_voip"

    .line 634
    invoke-static {v0, v1}, Lcom/google/android/play/core/splitinstall/SplitInstallHelper;->loadLibrary(Landroid/content/Context;Ljava/lang/String;)V

    const-string v1, "linphone"

    .line 635
    invoke-static {v0, v1}, Lcom/google/android/play/core/splitinstall/SplitInstallHelper;->loadLibrary(Landroid/content/Context;Ljava/lang/String;)V

    .line 636
    invoke-static {}, Lorg/linphone/mediastream/Version;->dumpCapabilities()V

    :cond_0
    return-void
.end method

.method private synthetic K()V
    .locals 2

    .line 215
    iget-object v0, p0, Lo/yV;->v:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "nf_voip_linphone"

    const-string v1, "Wait to start dial when callback that VOIP service is started returns!"

    .line 216
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    iget-object v0, p0, Lo/yV;->C:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0

    .line 219
    :cond_0
    invoke-direct {p0}, Lo/yV;->F()V

    :goto_0
    return-void
.end method

.method private declared-synchronized L()V
    .locals 5

    monitor-enter p0

    .line 824
    :try_start_0
    invoke-static {}, Lo/yV;->q()V

    .line 826
    iget-object v0, p0, Lo/yV;->G:Lorg/linphone/core/LinphoneCore;

    if-nez v0, :cond_0

    const-string v0, "nf_voip_linphone"

    const-string v1, "engine is null!"

    .line 827
    invoke-static {v0, v1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 828
    monitor-exit p0

    return-void

    .line 831
    :cond_0
    :try_start_1
    iget-object v0, p0, Lo/yV;->B:Lorg/linphone/core/LinphoneAddress;

    if-nez v0, :cond_1

    const-string v0, "nf_voip_linphone"

    const-string v1, "invite address is null!"

    .line 832
    invoke-static {v0, v1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 833
    monitor-exit p0

    return-void

    .line 836
    :cond_1
    :try_start_2
    iget-object v0, p0, Lo/yV;->u:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "nf_voip_linphone"

    const-string v1, "No dial request, no need to dial"

    .line 837
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 838
    monitor-exit p0

    return-void

    .line 841
    :cond_2
    :try_start_3
    iget-object v0, p0, Lo/yV;->n:Lcom/netflix/mediaclient/servicemgr/IVoip$ActionBar;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 842
    iget-object v0, p0, Lo/yV;->u:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const-string v0, "nf_voip_linphone"

    const-string v1, "Call is already in progress! Terminate it first!"

    .line 843
    invoke-static {v0, v1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 844
    monitor-exit p0

    return-void

    .line 849
    :cond_3
    :try_start_4
    iget-object v0, p0, Lo/yV;->G:Lorg/linphone/core/LinphoneCore;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lorg/linphone/core/LinphoneCore;->createCallParams(Lorg/linphone/core/LinphoneCall;)Lorg/linphone/core/LinphoneCallParams;

    move-result-object v0

    .line 850
    invoke-interface {v0, v1}, Lorg/linphone/core/LinphoneCallParams;->setVideoEnabled(Z)V

    .line 853
    iget-object v2, p0, Lo/yV;->d:Landroid/content/Context;

    invoke-static {v2}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->b(Landroid/content/Context;)Lcom/netflix/mediaclient/service/net/LogMobileType;

    move-result-object v2

    sget-object v3, Lcom/netflix/mediaclient/service/net/LogMobileType;->a:Lcom/netflix/mediaclient/service/net/LogMobileType;

    const/4 v4, 0x1

    if-ne v2, v3, :cond_4

    .line 854
    invoke-interface {v0, v4}, Lorg/linphone/core/LinphoneCallParams;->enableLowBandwidth(Z)V

    .line 857
    :cond_4
    invoke-virtual {p0}, Lo/yV;->j()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 858
    invoke-direct {p0}, Lo/yV;->N()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/linphone/core/LinphoneCallParams;->setRecordFile(Ljava/lang/String;)V

    .line 861
    :cond_5
    iget-object v2, p0, Lo/yV;->G:Lorg/linphone/core/LinphoneCore;

    iget-object v3, p0, Lo/yV;->B:Lorg/linphone/core/LinphoneAddress;

    invoke-interface {v2, v3, v0}, Lorg/linphone/core/LinphoneCore;->inviteAddressWithParams(Lorg/linphone/core/LinphoneAddress;Lorg/linphone/core/LinphoneCallParams;)Lorg/linphone/core/LinphoneCall;

    move-result-object v0

    if-nez v0, :cond_6

    const-string v0, "nf_voip_linphone"

    const-string v2, "Could not place call to %s"

    new-array v3, v4, [Ljava/lang/Object;

    .line 864
    invoke-virtual {p0}, Lo/yV;->f()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v0, v2, v3}, Lo/ChooserTargetService;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_4
    .catch Lorg/linphone/core/LinphoneCoreException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 865
    monitor-exit p0

    return-void

    .line 867
    :cond_6
    :try_start_5
    invoke-interface {v0, v4}, Lorg/linphone/core/LinphoneCall;->enableEchoCancellation(Z)V

    .line 868
    new-instance v1, Lo/yV$TaskDescription;

    iget-object v2, p0, Lo/yV;->j:Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallConfigData;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallConfigData;->getCallAttributes()Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallAttributes;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallAttributes;->getCallId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lo/yV$TaskDescription;-><init>(Ljava/lang/String;Lorg/linphone/core/LinphoneCall;)V

    iput-object v1, p0, Lo/yV;->n:Lcom/netflix/mediaclient/servicemgr/IVoip$ActionBar;
    :try_end_5
    .catch Lorg/linphone/core/LinphoneCoreException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 871
    :try_start_6
    invoke-virtual {v0}, Lorg/linphone/core/LinphoneCoreException;->printStackTrace()V

    .line 874
    :goto_0
    iget-object v0, p0, Lo/yV;->k:Lo/zb;

    invoke-virtual {v0}, Lo/zb;->b()V

    .line 875
    iget-object v0, p0, Lo/yV;->d:Landroid/content/Context;

    invoke-static {v0}, Lo/IllegalMonitorStateException;->b(Landroid/content/Context;)Lo/IllegalMonitorStateException;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.netflix.mediaclient.ui.cs.ACTION_CALL_STARTED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lo/IllegalMonitorStateException;->a(Landroid/content/Intent;)Z

    .line 876
    iget-object v0, p0, Lo/yV;->h:Lo/yY;

    iget-object v1, p0, Lo/yV;->b:Lo/Ac;

    sget-object v2, Lo/yV;->D:Landroid/os/Handler;

    invoke-interface {v0, v1, v2}, Lo/yY;->b(Lo/Ac;Landroid/os/Handler;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 877
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private M()V
    .locals 2

    const-string v0, "nf_voip_linphone"

    const-string v1, "Call released, stopping engine"

    .line 1018
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1019
    new-instance v0, Lo/yV$3;

    invoke-direct {v0, p0}, Lo/yV$3;-><init>(Lo/yV;)V

    .line 1025
    iget-object v1, p0, Lo/yV;->w:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private N()Ljava/lang/String;
    .locals 3

    .line 1035
    invoke-virtual {p0}, Lo/yV;->j()Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    .line 1037
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 1038
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/record.wav"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1039
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1042
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 1043
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "nf_voip_linphone"

    .line 1045
    invoke-static {v2, v0}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    :goto_0
    return-object v1
.end method

.method static synthetic a(Lo/yV;)Lorg/linphone/core/LinphoneCore;
    .locals 0

    .line 79
    iget-object p0, p0, Lo/yV;->G:Lorg/linphone/core/LinphoneCore;

    return-object p0
.end method

.method private a(ILjava/lang/String;)V
    .locals 1

    .line 556
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 557
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p2

    if-nez p2, :cond_0

    .line 558
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lo/yV;->d(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method private a(Lorg/linphone/core/LinphoneCall;)V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 954
    invoke-interface {p1}, Lorg/linphone/core/LinphoneCall;->getCallLog()Lorg/linphone/core/LinphoneCallLog;

    move-result-object v1

    invoke-interface {v1}, Lorg/linphone/core/LinphoneCallLog;->getCallId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "nf_voip_linphone"

    const-string v3, "Outbound call disconnected on line %s"

    invoke-static {v1, v3, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 956
    invoke-virtual {p0}, Lo/yV;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 957
    invoke-interface {p1}, Lorg/linphone/core/LinphoneCall;->stopRecording()V

    .line 961
    :cond_0
    iget-object v0, p0, Lo/yV;->n:Lcom/netflix/mediaclient/servicemgr/IVoip$ActionBar;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lo/yV;->n:Lcom/netflix/mediaclient/servicemgr/IVoip$ActionBar;

    check-cast v0, Lo/yV$TaskDescription;

    invoke-virtual {v0}, Lo/yV$TaskDescription;->d()Z

    move-result v0

    if-nez v0, :cond_2

    .line 962
    iget-object v0, p0, Lo/yV;->n:Lcom/netflix/mediaclient/servicemgr/IVoip$ActionBar;

    check-cast v0, Lo/yV$TaskDescription;

    invoke-virtual {v0}, Lo/yV$TaskDescription;->b()V

    .line 964
    iget-object v0, p0, Lo/yV;->g:Lo/zc;

    if-nez v0, :cond_1

    .line 965
    invoke-static {}, Lo/zc;->y()Lo/zc$Activity;

    move-result-object v0

    const-string v3, "linphone"

    .line 966
    invoke-virtual {v0, v3}, Lo/zc$Activity;->b(Ljava/lang/String;)Lo/zc$Activity;

    move-result-object v0

    iget-object v3, p0, Lo/yV;->n:Lcom/netflix/mediaclient/servicemgr/IVoip$ActionBar;

    check-cast v3, Lo/yV$TaskDescription;

    .line 967
    invoke-virtual {v3}, Lo/yV$TaskDescription;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lo/zc$Activity;->c(Ljava/lang/String;)Lo/zc$Activity;

    move-result-object v0

    iget-object v3, p0, Lo/yV;->n:Lcom/netflix/mediaclient/servicemgr/IVoip$ActionBar;

    check-cast v3, Lo/yV$TaskDescription;

    .line 968
    invoke-virtual {v3}, Lo/yV$TaskDescription;->e()I

    move-result v3

    invoke-virtual {v0, v3}, Lo/zc$Activity;->e(I)Lo/zc$Activity;

    move-result-object v0

    .line 969
    invoke-interface {p1}, Lorg/linphone/core/LinphoneCall;->getAudioStats()Lorg/linphone/core/LinphoneCallStats;

    move-result-object v3

    invoke-interface {v3}, Lorg/linphone/core/LinphoneCallStats;->getDownloadBandwidth()F

    move-result v3

    float-to-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Lo/zc$Activity;->a(F)Lo/zc$Activity;

    move-result-object v0

    .line 970
    invoke-interface {p1}, Lorg/linphone/core/LinphoneCall;->getAudioStats()Lorg/linphone/core/LinphoneCallStats;

    move-result-object v3

    invoke-interface {v3}, Lorg/linphone/core/LinphoneCallStats;->getUploadBandwidth()F

    move-result v3

    float-to-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Lo/zc$Activity;->c(F)Lo/zc$Activity;

    move-result-object v0

    .line 971
    invoke-interface {p1}, Lorg/linphone/core/LinphoneCall;->getAudioStats()Lorg/linphone/core/LinphoneCallStats;

    move-result-object v3

    invoke-interface {v3}, Lorg/linphone/core/LinphoneCallStats;->getNumberPacketsSent()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lo/zc$Activity;->a(J)Lo/zc$Activity;

    move-result-object v0

    .line 972
    invoke-interface {p1}, Lorg/linphone/core/LinphoneCall;->getAudioStats()Lorg/linphone/core/LinphoneCallStats;

    move-result-object v3

    invoke-interface {v3}, Lorg/linphone/core/LinphoneCallStats;->getNumberPacketsReceived()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lo/zc$Activity;->e(J)Lo/zc$Activity;

    move-result-object v0

    .line 973
    invoke-interface {p1}, Lorg/linphone/core/LinphoneCall;->getAudioStats()Lorg/linphone/core/LinphoneCallStats;

    move-result-object v3

    invoke-interface {v3}, Lorg/linphone/core/LinphoneCallStats;->getNumberBytesSent()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lo/zc$Activity;->d(J)Lo/zc$Activity;

    move-result-object v0

    .line 974
    invoke-interface {p1}, Lorg/linphone/core/LinphoneCall;->getAudioStats()Lorg/linphone/core/LinphoneCallStats;

    move-result-object v3

    invoke-interface {v3}, Lorg/linphone/core/LinphoneCallStats;->getNumberBytesReceived()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lo/zc$Activity;->c(J)Lo/zc$Activity;

    move-result-object v0

    .line 975
    invoke-interface {p1}, Lorg/linphone/core/LinphoneCall;->getAudioStats()Lorg/linphone/core/LinphoneCallStats;

    move-result-object v3

    invoke-interface {v3}, Lorg/linphone/core/LinphoneCallStats;->getLatePacketsCumulativeNumber()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lo/zc$Activity;->b(J)Lo/zc$Activity;

    move-result-object v0

    .line 976
    invoke-interface {p1}, Lorg/linphone/core/LinphoneCall;->getAudioStats()Lorg/linphone/core/LinphoneCallStats;

    move-result-object v3

    invoke-interface {v3}, Lorg/linphone/core/LinphoneCallStats;->getCumulativePacketsLost()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lo/zc$Activity;->h(J)Lo/zc$Activity;

    move-result-object v0

    .line 977
    invoke-interface {p1}, Lorg/linphone/core/LinphoneCall;->getAudioStats()Lorg/linphone/core/LinphoneCallStats;

    move-result-object v3

    invoke-interface {v3}, Lorg/linphone/core/LinphoneCallStats;->getReceiverLossRate()F

    move-result v3

    invoke-virtual {v0, v3}, Lo/zc$Activity;->e(F)Lo/zc$Activity;

    move-result-object v0

    .line 978
    invoke-interface {p1}, Lorg/linphone/core/LinphoneCall;->getAudioStats()Lorg/linphone/core/LinphoneCallStats;

    move-result-object v3

    invoke-interface {v3}, Lorg/linphone/core/LinphoneCallStats;->getSenderLossRate()F

    move-result v3

    invoke-virtual {v0, v3}, Lo/zc$Activity;->b(F)Lo/zc$Activity;

    move-result-object v0

    .line 979
    invoke-interface {p1}, Lorg/linphone/core/LinphoneCall;->getAudioStats()Lorg/linphone/core/LinphoneCallStats;

    move-result-object v3

    invoke-interface {v3}, Lorg/linphone/core/LinphoneCallStats;->getSenderInterarrivalJitter()F

    move-result v3

    invoke-virtual {v0, v3}, Lo/zc$Activity;->j(F)Lo/zc$Activity;

    move-result-object v0

    .line 980
    invoke-interface {p1}, Lorg/linphone/core/LinphoneCall;->getAudioStats()Lorg/linphone/core/LinphoneCallStats;

    move-result-object v3

    invoke-interface {v3}, Lorg/linphone/core/LinphoneCallStats;->getSenderInterarrivalJitter()F

    move-result v3

    invoke-virtual {v0, v3}, Lo/zc$Activity;->g(F)Lo/zc$Activity;

    move-result-object v0

    .line 981
    invoke-interface {p1}, Lorg/linphone/core/LinphoneCall;->getAudioStats()Lorg/linphone/core/LinphoneCallStats;

    move-result-object v3

    invoke-interface {v3}, Lorg/linphone/core/LinphoneCallStats;->getSenderInterarrivalJitter()F

    move-result v3

    invoke-virtual {v0, v3}, Lo/zc$Activity;->h(F)Lo/zc$Activity;

    move-result-object v0

    .line 982
    invoke-interface {p1}, Lorg/linphone/core/LinphoneCall;->getAudioStats()Lorg/linphone/core/LinphoneCallStats;

    move-result-object v3

    invoke-interface {v3}, Lorg/linphone/core/LinphoneCallStats;->getReceiverInterarrivalJitter()F

    move-result v3

    invoke-virtual {v0, v3}, Lo/zc$Activity;->i(F)Lo/zc$Activity;

    move-result-object v0

    .line 983
    invoke-interface {p1}, Lorg/linphone/core/LinphoneCall;->getAudioStats()Lorg/linphone/core/LinphoneCallStats;

    move-result-object v3

    invoke-interface {v3}, Lorg/linphone/core/LinphoneCallStats;->getReceiverInterarrivalJitter()F

    move-result v3

    invoke-virtual {v0, v3}, Lo/zc$Activity;->f(F)Lo/zc$Activity;

    move-result-object v0

    .line 984
    invoke-interface {p1}, Lorg/linphone/core/LinphoneCall;->getAudioStats()Lorg/linphone/core/LinphoneCallStats;

    move-result-object v3

    invoke-interface {v3}, Lorg/linphone/core/LinphoneCallStats;->getReceiverInterarrivalJitter()F

    move-result v3

    invoke-virtual {v0, v3}, Lo/zc$Activity;->d(F)Lo/zc$Activity;

    move-result-object v0

    .line 985
    invoke-interface {p1}, Lorg/linphone/core/LinphoneCall;->getAudioStats()Lorg/linphone/core/LinphoneCallStats;

    move-result-object v3

    invoke-interface {v3}, Lorg/linphone/core/LinphoneCallStats;->getRoundTripDelay()F

    move-result v3

    invoke-virtual {v0, v3}, Lo/zc$Activity;->n(F)Lo/zc$Activity;

    move-result-object v0

    .line 986
    invoke-interface {p1}, Lorg/linphone/core/LinphoneCall;->getAudioStats()Lorg/linphone/core/LinphoneCallStats;

    move-result-object v3

    invoke-interface {v3}, Lorg/linphone/core/LinphoneCallStats;->getRoundTripDelay()F

    move-result v3

    invoke-virtual {v0, v3}, Lo/zc$Activity;->m(F)Lo/zc$Activity;

    move-result-object v0

    .line 987
    invoke-interface {p1}, Lorg/linphone/core/LinphoneCall;->getAudioStats()Lorg/linphone/core/LinphoneCallStats;

    move-result-object p1

    invoke-interface {p1}, Lorg/linphone/core/LinphoneCallStats;->getRoundTripDelay()F

    move-result p1

    invoke-virtual {v0, p1}, Lo/zc$Activity;->k(F)Lo/zc$Activity;

    move-result-object p1

    .line 988
    invoke-virtual {p1}, Lo/zc$Activity;->b()Lo/zc;

    move-result-object p1

    iput-object p1, p0, Lo/yV;->g:Lo/zc;

    .line 990
    :cond_1
    invoke-virtual {p0}, Lo/yV;->s()V

    .line 993
    :cond_2
    invoke-direct {p0}, Lo/yV;->E()V

    .line 995
    iget-object p1, p0, Lo/yV;->G:Lorg/linphone/core/LinphoneCore;

    if-eqz p1, :cond_3

    .line 996
    iget-object p1, p0, Lo/yV;->f:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/IVoip$TaskDescription;

    .line 997
    iget-object v1, p0, Lo/yV;->n:Lcom/netflix/mediaclient/servicemgr/IVoip$ActionBar;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/servicemgr/IVoip$TaskDescription;->a(Lcom/netflix/mediaclient/servicemgr/IVoip$ActionBar;)V

    .line 999
    invoke-interface {v0, v2}, Lcom/netflix/mediaclient/servicemgr/IVoip$TaskDescription;->b(Z)V

    goto :goto_0

    :cond_3
    const-string p1, "Engine is null and we received call disconnect! Should not happen!"

    .line 1002
    invoke-static {v1, p1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1005
    :cond_4
    sget-object p1, Lcom/netflix/cl/ExtLogger;->INSTANCE:Lcom/netflix/cl/ExtLogger;

    const-string v0, "cs.CallCommand"

    invoke-virtual {p1, v0}, Lcom/netflix/cl/ExtLogger;->endCommand(Ljava/lang/String;)Z

    .line 1007
    sget-object p1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    iget-object v0, p0, Lo/yV;->q:Ljava/lang/Long;

    invoke-virtual {p1, v0}, Lcom/netflix/cl/Logger;->getSession(Ljava/lang/Long;)Lcom/netflix/cl/model/event/session/Session;

    move-result-object p1

    .line 1008
    instance-of v0, p1, Lcom/netflix/cl/model/event/session/action/cs/Call;

    if-eqz v0, :cond_5

    .line 1009
    new-instance v0, Lcom/netflix/cl/model/event/session/cs/CallEnded;

    check-cast p1, Lcom/netflix/cl/model/event/session/action/cs/Call;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/netflix/cl/model/event/session/cs/CallEnded;-><init>(Lcom/netflix/cl/model/event/session/action/cs/Call;Lorg/json/JSONObject;)V

    .line 1011
    sget-object p1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    invoke-virtual {p1, v0}, Lcom/netflix/cl/Logger;->endSession(Lcom/netflix/cl/model/event/session/SessionEnded;)Z

    .line 1014
    :cond_5
    iget-object p1, p0, Lo/yV;->d:Landroid/content/Context;

    invoke-static {p1}, Lo/IllegalMonitorStateException;->b(Landroid/content/Context;)Lo/IllegalMonitorStateException;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.netflix.mediaclient.ui.cs.ACTION_CALL_ENDED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lo/IllegalMonitorStateException;->a(Landroid/content/Intent;)Z

    return-void
.end method

.method private a(Lorg/linphone/core/LinphoneCall;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 941
    invoke-interface {p1}, Lorg/linphone/core/LinphoneCall;->getCallLog()Lorg/linphone/core/LinphoneCallLog;

    move-result-object p1

    invoke-interface {p1}, Lorg/linphone/core/LinphoneCallLog;->getCallId()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const-string p1, "nf_voip_linphone"

    const-string p2, "Call failure for line %s with message %s"

    invoke-static {p1, p2, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 943
    invoke-direct {p0}, Lo/yV;->E()V

    .line 945
    iget-object p1, p0, Lo/yV;->A:Lo/zF;

    invoke-static {}, Lo/bU;->a()Lo/bO;

    move-result-object p2

    invoke-interface {p2}, Lo/bO;->e()Lo/hT;

    move-result-object p2

    iget-object v0, p0, Lo/yV;->d:Landroid/content/Context;

    iget-object v1, p0, Lo/yV;->x:Ljava/lang/Runnable;

    invoke-interface {p2, v0, v1}, Lo/hT;->c(Landroid/content/Context;Ljava/lang/Runnable;)Lo/hR;

    move-result-object p2

    invoke-interface {p1, p2}, Lo/zF;->d(Lo/hR;)Z

    .line 946
    invoke-virtual {p0}, Lo/yV;->r()V

    .line 948
    iget-object p1, p0, Lo/yV;->f:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/netflix/mediaclient/servicemgr/IVoip$TaskDescription;

    const/4 v0, 0x0

    .line 949
    invoke-interface {p2, v0}, Lcom/netflix/mediaclient/servicemgr/IVoip$TaskDescription;->e(Lcom/netflix/mediaclient/servicemgr/IVoip$ActionBar;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic b(Lo/yV;)V
    .locals 0

    .line 79
    invoke-direct {p0}, Lo/yV;->G()V

    return-void
.end method

.method private b(Lorg/linphone/core/LinphoneCall;)V
    .locals 1

    const-string p1, "nf_voip_linphone"

    const-string v0, "Outbound call invite outgoing"

    .line 880
    invoke-static {p1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 882
    invoke-virtual {p0}, Lo/yV;->l()V

    .line 883
    invoke-virtual {p0}, Lo/yV;->o()V

    return-void
.end method

.method static synthetic c(Lo/yV;)V
    .locals 0

    invoke-direct {p0}, Lo/yV;->K()V

    return-void
.end method

.method private c(Lorg/linphone/core/LinphoneCall;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 930
    invoke-virtual {p0}, Lo/yV;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 931
    invoke-interface {p1}, Lorg/linphone/core/LinphoneCall;->startRecording()V

    .line 934
    :cond_0
    iget-object v0, p0, Lo/yV;->n:Lcom/netflix/mediaclient/servicemgr/IVoip$ActionBar;

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lorg/linphone/core/LinphoneCall;->getCurrentParamsCopy()Lorg/linphone/core/LinphoneCallParams;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lorg/linphone/core/LinphoneCall;->getCurrentParamsCopy()Lorg/linphone/core/LinphoneCallParams;

    move-result-object v0

    invoke-interface {v0}, Lorg/linphone/core/LinphoneCallParams;->getUsedAudioCodec()Lorg/linphone/core/PayloadType;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 935
    iget-object v0, p0, Lo/yV;->n:Lcom/netflix/mediaclient/servicemgr/IVoip$ActionBar;

    check-cast v0, Lo/yV$TaskDescription;

    invoke-interface {p1}, Lorg/linphone/core/LinphoneCall;->getCurrentParamsCopy()Lorg/linphone/core/LinphoneCallParams;

    move-result-object v1

    invoke-interface {v1}, Lorg/linphone/core/LinphoneCallParams;->getUsedAudioCodec()Lorg/linphone/core/PayloadType;

    move-result-object v1

    invoke-interface {v1}, Lorg/linphone/core/PayloadType;->getMime()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lorg/linphone/core/LinphoneCall;->getCurrentParamsCopy()Lorg/linphone/core/LinphoneCallParams;

    move-result-object p1

    invoke-interface {p1}, Lorg/linphone/core/LinphoneCallParams;->getUsedAudioCodec()Lorg/linphone/core/PayloadType;

    move-result-object p1

    invoke-interface {p1}, Lorg/linphone/core/PayloadType;->getRate()I

    move-result p1

    invoke-virtual {v0, v1, p1}, Lo/yV$TaskDescription;->d(Ljava/lang/String;I)V

    :cond_1
    return-void
.end method

.method private c(Ljava/util/List;Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 663
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 664
    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private d(ILjava/lang/String;)V
    .locals 6

    const/4 v0, 0x0

    .line 564
    :try_start_0
    iget-object v1, p0, Lo/yV;->d:Landroid/content/Context;

    invoke-virtual {v1, p2, v0}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    .line 565
    iget-object v2, p0, Lo/yV;->d:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    const/16 v3, 0x1f70

    new-array v3, v3, [B

    .line 568
    :goto_0
    invoke-virtual {v2, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 569
    invoke-virtual {v1, v3, v0, v4}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    .line 571
    :cond_0
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 572
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 573
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    .line 575
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v0

    const/4 p1, 0x1

    aput-object p2, v2, p1

    const/4 p1, 0x2

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v2, p1

    const-string p1, "nf_voip_linphone"

    const-string p2, "Cannot copy config from package with id %d to file %s, message:%s"

    invoke-static {p1, p2, v2}, Lo/ChooserTargetService;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :goto_1
    return-void
.end method

.method private synthetic d(Ljava/lang/Runnable;)V
    .locals 2

    const-string v0, "nf_voip_linphone"

    const-string v1, "start"

    .line 223
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    invoke-virtual {p0}, Lo/yV;->v()Z

    .line 227
    invoke-static {p1}, Lo/adX;->d(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private d(Lorg/linphone/core/LinphoneCall;)V
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    .line 887
    invoke-interface {p1}, Lorg/linphone/core/LinphoneCall;->getCallLog()Lorg/linphone/core/LinphoneCallLog;

    move-result-object v2

    invoke-interface {v2}, Lorg/linphone/core/LinphoneCallLog;->getCallId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "nf_voip_linphone"

    const-string v4, "Outbound call ringing on line %s"

    invoke-static {v2, v4, v1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 889
    iget-object v1, p0, Lo/yV;->G:Lorg/linphone/core/LinphoneCore;

    if-eqz v1, :cond_1

    .line 890
    iget-object v1, p0, Lo/yV;->n:Lcom/netflix/mediaclient/servicemgr/IVoip$ActionBar;

    if-nez v1, :cond_0

    new-array v0, v0, [Ljava/lang/Object;

    .line 891
    invoke-interface {p1}, Lorg/linphone/core/LinphoneCall;->getCallLog()Lorg/linphone/core/LinphoneCallLog;

    move-result-object p1

    invoke-interface {p1}, Lorg/linphone/core/LinphoneCallLog;->getCallId()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v3

    const-string p1, "Call was NOT in progress and we received call ringing on line %s"

    invoke-static {v2, p1, v0}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1

    .line 893
    :cond_0
    iget-object p1, p0, Lo/yV;->f:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/IVoip$TaskDescription;

    .line 894
    iget-object v1, p0, Lo/yV;->n:Lcom/netflix/mediaclient/servicemgr/IVoip$ActionBar;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/servicemgr/IVoip$TaskDescription;->b(Lcom/netflix/mediaclient/servicemgr/IVoip$ActionBar;)V

    goto :goto_0

    :cond_1
    const-string p1, "Engine is null and we received call ringing! Should not happen!"

    .line 898
    invoke-static {v2, p1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    return-void
.end method

.method private declared-synchronized d(Lorg/linphone/core/LinphoneCore;)V
    .locals 8

    monitor-enter p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    const-string v2, "nf_voip_linphone"

    const-string v3, "--- INIT VOIP engine"

    .line 673
    invoke-static {v2, v3}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    sget-object v2, Lo/yV;->F:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string p1, "nf_voip_linphone"

    const-string v2, "Currently Stopping, cannot init!"

    .line 676
    invoke-static {p1, v2}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/linphone/core/LinphoneCoreException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 677
    monitor-exit p0

    return-void

    .line 680
    :cond_0
    :try_start_1
    iput-object p1, p0, Lo/yV;->G:Lorg/linphone/core/LinphoneCore;

    .line 683
    iget-object p1, p0, Lo/yV;->G:Lorg/linphone/core/LinphoneCore;

    iget-object v2, p0, Lo/yV;->I:Ljava/lang/String;

    invoke-interface {p1, v2}, Lorg/linphone/core/LinphoneCore;->setRootCA(Ljava/lang/String;)V

    .line 684
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Runtime;->availableProcessors()I

    move-result p1

    .line 685
    iget-object v2, p0, Lo/yV;->G:Lorg/linphone/core/LinphoneCore;

    invoke-interface {v2, p1}, Lorg/linphone/core/LinphoneCore;->setCpuCount(I)V

    .line 686
    iget-object p1, p0, Lo/yV;->G:Lorg/linphone/core/LinphoneCore;

    invoke-interface {p1, v0, v0}, Lorg/linphone/core/LinphoneCore;->enableVideo(ZZ)V

    .line 687
    iget-object p1, p0, Lo/yV;->G:Lorg/linphone/core/LinphoneCore;

    invoke-interface {p1, v1}, Lorg/linphone/core/LinphoneCore;->setNetworkReachable(Z)V

    .line 688
    iget-object p1, p0, Lo/yV;->G:Lorg/linphone/core/LinphoneCore;

    sget-object v2, Lorg/linphone/core/LinphoneCore$MediaEncryption;->SRTP:Lorg/linphone/core/LinphoneCore$MediaEncryption;

    invoke-interface {p1, v2}, Lorg/linphone/core/LinphoneCore;->setMediaEncryption(Lorg/linphone/core/LinphoneCore$MediaEncryption;)V

    .line 689
    iget-object p1, p0, Lo/yV;->G:Lorg/linphone/core/LinphoneCore;

    invoke-interface {p1, v1}, Lorg/linphone/core/LinphoneCore;->enableEchoCancellation(Z)V

    .line 690
    iget-object p1, p0, Lo/yV;->G:Lorg/linphone/core/LinphoneCore;

    invoke-interface {p1, v1}, Lorg/linphone/core/LinphoneCore;->enableAdaptiveRateControl(Z)V

    .line 691
    iget-object p1, p0, Lo/yV;->G:Lorg/linphone/core/LinphoneCore;

    invoke-interface {p1, v1}, Lorg/linphone/core/LinphoneCore;->setUseRfc2833ForDtmfs(Z)V

    .line 694
    iget-object p1, p0, Lo/yV;->j:Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallConfigData;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallConfigData;->getCallAttributes()Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallAttributes;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallAttributes;->getCodecs()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lo/yV;->j:Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallConfigData;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallConfigData;->getCallAttributes()Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallAttributes;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallAttributes;->getCodecs()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    .line 695
    iget-object p1, p0, Lo/yV;->G:Lorg/linphone/core/LinphoneCore;

    invoke-interface {p1}, Lorg/linphone/core/LinphoneCore;->getAudioCodecs()[Lorg/linphone/core/PayloadType;

    move-result-object p1

    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, p1, v3
    :try_end_1
    .catch Lorg/linphone/core/LinphoneCoreException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 697
    :try_start_2
    iget-object v5, p0, Lo/yV;->j:Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallConfigData;

    invoke-virtual {v5}, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallConfigData;->getCallAttributes()Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallAttributes;

    move-result-object v5

    invoke-virtual {v5}, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallAttributes;->getCodecs()Ljava/util/List;

    move-result-object v5

    invoke-interface {v4}, Lorg/linphone/core/PayloadType;->getMime()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lo/yV;->c(Ljava/util/List;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-interface {v4}, Lorg/linphone/core/PayloadType;->getMime()Ljava/lang/String;

    move-result-object v5

    const-string v6, "G722"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    .line 700
    :cond_1
    iget-object v5, p0, Lo/yV;->G:Lorg/linphone/core/LinphoneCore;

    invoke-interface {v5, v4, v0}, Lorg/linphone/core/LinphoneCore;->enablePayloadType(Lorg/linphone/core/PayloadType;Z)V

    goto :goto_2

    .line 698
    :cond_2
    :goto_1
    iget-object v5, p0, Lo/yV;->G:Lorg/linphone/core/LinphoneCore;

    invoke-interface {v5, v4, v1}, Lorg/linphone/core/LinphoneCore;->enablePayloadType(Lorg/linphone/core/PayloadType;Z)V
    :try_end_2
    .catch Lorg/linphone/core/LinphoneCoreException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v4

    :try_start_3
    const-string v5, "nf_voip_linphone"

    const-string v6, "ERROR while configuring audio codecs, %s"

    new-array v7, v1, [Ljava/lang/Object;

    .line 703
    invoke-virtual {v4}, Lorg/linphone/core/LinphoneCoreException;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v7, v0

    invoke-static {v5, v6, v7}, Lo/ChooserTargetService;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 709
    :cond_3
    iget-object p1, p0, Lo/yV;->d:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iget-object v2, p0, Lo/yV;->d:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-nez p1, :cond_4

    .line 711
    iget-object p1, p0, Lo/yV;->d:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iget-object v2, p0, Lo/yV;->d:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    iget p1, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    .line 713
    :cond_4
    iget-object v2, p0, Lo/yV;->G:Lorg/linphone/core/LinphoneCore;

    const-string v3, "LinphoneAndroid"

    invoke-interface {v2, v3, p1}, Lorg/linphone/core/LinphoneCore;->setUserAgent(Ljava/lang/String;Ljava/lang/String;)V

    .line 716
    invoke-static {}, Lorg/linphone/core/LinphoneCoreFactory;->instance()Lorg/linphone/core/LinphoneCoreFactory;

    move-result-object p1

    invoke-virtual {p0}, Lo/yV;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/linphone/core/LinphoneCoreFactory;->createLinphoneAddress(Ljava/lang/String;)Lorg/linphone/core/LinphoneAddress;

    move-result-object p1

    iput-object p1, p0, Lo/yV;->B:Lorg/linphone/core/LinphoneAddress;

    .line 717
    iget-object p1, p0, Lo/yV;->B:Lorg/linphone/core/LinphoneAddress;

    sget-object v2, Lorg/linphone/core/LinphoneAddress$TransportType;->LinphoneTransportTls:Lorg/linphone/core/LinphoneAddress$TransportType;

    invoke-interface {p1, v2}, Lorg/linphone/core/LinphoneAddress;->setTransport(Lorg/linphone/core/LinphoneAddress$TransportType;)V

    .line 720
    iget-object p1, p0, Lo/yV;->p:Lo/yW;

    if-eqz p1, :cond_5

    .line 721
    iget-object p1, p0, Lo/yV;->p:Lo/yW;

    invoke-virtual {p1}, Lo/yW;->a()V

    .line 724
    :cond_5
    iget-object p1, p0, Lo/yV;->v:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const-string p1, "nf_voip_linphone"

    const-string v2, "VOIP engine is now ready"

    .line 726
    invoke-static {p1, v2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Lorg/linphone/core/LinphoneCoreException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_1
    move-exception p1

    :try_start_4
    const-string v2, "nf_voip_linphone"

    const-string v3, "Cannot get version name, %s"

    new-array v1, v1, [Ljava/lang/Object;

    .line 731
    invoke-virtual {p1}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v0

    invoke-static {v2, v3, v1}, Lo/ChooserTargetService;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_3

    :catch_2
    move-exception p1

    const-string v2, "nf_voip_linphone"

    const-string v3, "Could not create LinphoneCore instance, %s"

    new-array v1, v1, [Ljava/lang/Object;

    .line 729
    invoke-virtual {p1}, Lorg/linphone/core/LinphoneCoreException;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v0

    invoke-static {v2, v3, v1}, Lo/ChooserTargetService;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 733
    :goto_3
    monitor-exit p0

    return-void

    :goto_4
    monitor-exit p0

    throw p1
.end method

.method static synthetic e(Lo/yV;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1}, Lo/yV;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method private e(Lorg/linphone/core/LinphoneCall;)V
    .locals 5

    .line 903
    invoke-interface {p1}, Lorg/linphone/core/LinphoneCall;->getCurrentParamsCopy()Lorg/linphone/core/LinphoneCallParams;

    move-result-object v0

    .line 904
    iget-object v1, p0, Lo/yV;->n:Lcom/netflix/mediaclient/servicemgr/IVoip$ActionBar;

    check-cast v1, Lo/yV$TaskDescription;

    invoke-virtual {v1, v0}, Lo/yV$TaskDescription;->d(Lorg/linphone/core/LinphoneCallParams;)V

    .line 906
    invoke-virtual {p0}, Lo/yV;->t()Z

    move-result v0

    const-string v1, "nf_voip_linphone"

    if-eqz v0, :cond_0

    const-string v0, "Audio is routed through Bluetooth Sco"

    .line 907
    invoke-static {v1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/Object;

    .line 910
    invoke-interface {p1}, Lorg/linphone/core/LinphoneCall;->getCallLog()Lorg/linphone/core/LinphoneCallLog;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Lorg/linphone/core/LinphoneCall;->getCallLog()Lorg/linphone/core/LinphoneCallLog;

    move-result-object v3

    invoke-interface {v3}, Lorg/linphone/core/LinphoneCallLog;->getCallId()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    const-string v3, ""

    :goto_0
    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "Call connected on line %s"

    invoke-static {v1, v3, v2}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 912
    iget-object v2, p0, Lo/yV;->G:Lorg/linphone/core/LinphoneCore;

    if-eqz v2, :cond_3

    .line 913
    iget-object v2, p0, Lo/yV;->n:Lcom/netflix/mediaclient/servicemgr/IVoip$ActionBar;

    if-nez v2, :cond_2

    new-array v0, v0, [Ljava/lang/Object;

    .line 914
    invoke-interface {p1}, Lorg/linphone/core/LinphoneCall;->getCallLog()Lorg/linphone/core/LinphoneCallLog;

    move-result-object p1

    invoke-interface {p1}, Lorg/linphone/core/LinphoneCallLog;->getCallId()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v4

    const-string p1, "Call was NOT in progress and we received connected on line %s"

    invoke-static {v1, p1, v0}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_2

    .line 916
    :cond_2
    iget-object p1, p0, Lo/yV;->f:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/IVoip$TaskDescription;

    .line 917
    iget-object v1, p0, Lo/yV;->n:Lcom/netflix/mediaclient/servicemgr/IVoip$ActionBar;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/servicemgr/IVoip$TaskDescription;->d(Lcom/netflix/mediaclient/servicemgr/IVoip$ActionBar;)V

    goto :goto_1

    :cond_3
    const-string p1, "SDK is null and we received call connected! Should not happen!"

    .line 921
    invoke-static {v1, p1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 924
    :cond_4
    :goto_2
    invoke-virtual {p0}, Lo/yV;->k()V

    .line 925
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lo/yV;->m:J

    return-void
.end method

.method static synthetic z()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .line 79
    sget-object v0, Lo/yV;->F:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method


# virtual methods
.method public A()V
    .locals 1

    .line 333
    iget-object v0, p0, Lo/yV;->G:Lorg/linphone/core/LinphoneCore;

    if-eqz v0, :cond_0

    .line 334
    invoke-interface {v0}, Lorg/linphone/core/LinphoneCore;->stopDtmf()V

    :cond_0
    return-void
.end method

.method public B()Z
    .locals 1

    .line 306
    iget-object v0, p0, Lo/yV;->G:Lorg/linphone/core/LinphoneCore;

    if-eqz v0, :cond_1

    .line 307
    iget-object v0, p0, Lo/yV;->p:Lo/yW;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/yV;->p:Lo/yW;

    invoke-virtual {v0}, Lo/yW;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 308
    iget-object v0, p0, Lo/yV;->p:Lo/yW;

    invoke-virtual {v0}, Lo/yW;->e()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0

    .line 311
    :cond_0
    iget-object v0, p0, Lo/yV;->G:Lorg/linphone/core/LinphoneCore;

    invoke-interface {v0}, Lorg/linphone/core/LinphoneCore;->isSpeakerEnabled()Z

    move-result v0

    return v0

    .line 314
    :cond_1
    iget-object v0, p0, Lo/yV;->t:Landroid/media/AudioManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lo/yV;->t:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public D()Z
    .locals 1

    .line 297
    iget-object v0, p0, Lo/yV;->G:Lorg/linphone/core/LinphoneCore;

    if-eqz v0, :cond_0

    .line 298
    invoke-interface {v0}, Lorg/linphone/core/LinphoneCore;->isMicMuted()Z

    move-result v0

    return v0

    .line 300
    :cond_0
    iget-object v0, p0, Lo/yV;->t:Landroid/media/AudioManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/yV;->t:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isMicrophoneMute()Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public P_()V
    .locals 2

    const-string v0, "nf_voip_linphone"

    const-string v1, "Routing audio to earpiece, disabling bluetooth audio route"

    .line 151
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget-object v0, p0, Lo/yV;->p:Lo/yW;

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lo/yV;->p:Lo/yW;

    invoke-virtual {v0}, Lo/yW;->c()V

    .line 156
    :cond_0
    iget-object v0, p0, Lo/yV;->G:Lorg/linphone/core/LinphoneCore;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 157
    invoke-interface {v0, v1}, Lorg/linphone/core/LinphoneCore;->enableSpeaker(Z)V

    :cond_1
    return-void
.end method

.method public authInfoRequested(Lorg/linphone/core/LinphoneCore;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public authenticationRequested(Lorg/linphone/core/LinphoneCore;Lorg/linphone/core/LinphoneAuthInfo;Lorg/linphone/core/LinphoneCore$AuthMethod;)V
    .locals 0

    return-void
.end method

.method public b(Z)V
    .locals 1

    .line 255
    iget-object v0, p0, Lo/yV;->G:Lorg/linphone/core/LinphoneCore;

    if-eqz v0, :cond_1

    .line 256
    invoke-interface {v0, p1}, Lorg/linphone/core/LinphoneCore;->muteMic(Z)V

    if-eqz p1, :cond_0

    .line 259
    sget-object p1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance v0, Lcom/netflix/cl/model/event/session/command/MuteCommand;

    invoke-direct {v0}, Lcom/netflix/cl/model/event/session/command/MuteCommand;-><init>()V

    invoke-virtual {p1, v0}, Lcom/netflix/cl/Logger;->startSession(Lcom/netflix/cl/model/event/session/Session;)Ljava/lang/Long;

    .line 260
    sget-object p1, Lcom/netflix/cl/ExtLogger;->INSTANCE:Lcom/netflix/cl/ExtLogger;

    const-string v0, "MuteCommand"

    invoke-virtual {p1, v0}, Lcom/netflix/cl/ExtLogger;->endCommand(Ljava/lang/String;)Z

    goto :goto_0

    .line 262
    :cond_0
    sget-object p1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance v0, Lcom/netflix/cl/model/event/session/command/UnmuteCommand;

    invoke-direct {v0}, Lcom/netflix/cl/model/event/session/command/UnmuteCommand;-><init>()V

    invoke-virtual {p1, v0}, Lcom/netflix/cl/Logger;->startSession(Lcom/netflix/cl/model/event/session/Session;)Ljava/lang/Long;

    .line 263
    sget-object p1, Lcom/netflix/cl/ExtLogger;->INSTANCE:Lcom/netflix/cl/ExtLogger;

    const-string v0, "UnmuteCommand"

    invoke-virtual {p1, v0}, Lcom/netflix/cl/ExtLogger;->endCommand(Ljava/lang/String;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public callEncryptionChanged(Lorg/linphone/core/LinphoneCore;Lorg/linphone/core/LinphoneCall;ZLjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public callState(Lorg/linphone/core/LinphoneCore;Lorg/linphone/core/LinphoneCall;Lorg/linphone/core/LinphoneCall$State;Ljava/lang/String;)V
    .locals 2

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p3, p1, v0

    const/4 v0, 0x1

    aput-object p4, p1, v0

    const-string v0, "nf_voip_linphone"

    const-string v1, "Call state: %s (%s)"

    .line 374
    invoke-static {v0, v1, p1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 376
    sget-object p1, Lorg/linphone/core/LinphoneCall$State;->OutgoingInit:Lorg/linphone/core/LinphoneCall$State;

    if-ne p3, p1, :cond_0

    .line 377
    invoke-direct {p0, p2}, Lo/yV;->b(Lorg/linphone/core/LinphoneCall;)V

    goto :goto_0

    .line 378
    :cond_0
    sget-object p1, Lorg/linphone/core/LinphoneCall$State;->OutgoingRinging:Lorg/linphone/core/LinphoneCall$State;

    if-ne p3, p1, :cond_1

    iget-object p1, p0, Lo/yV;->n:Lcom/netflix/mediaclient/servicemgr/IVoip$ActionBar;

    if-eqz p1, :cond_1

    .line 379
    invoke-direct {p0, p2}, Lo/yV;->d(Lorg/linphone/core/LinphoneCall;)V

    goto :goto_0

    .line 380
    :cond_1
    sget-object p1, Lorg/linphone/core/LinphoneCall$State;->Connected:Lorg/linphone/core/LinphoneCall$State;

    if-ne p3, p1, :cond_2

    .line 381
    invoke-direct {p0, p2}, Lo/yV;->e(Lorg/linphone/core/LinphoneCall;)V

    goto :goto_0

    .line 382
    :cond_2
    sget-object p1, Lorg/linphone/core/LinphoneCall$State;->StreamsRunning:Lorg/linphone/core/LinphoneCall$State;

    if-ne p3, p1, :cond_3

    .line 383
    invoke-direct {p0, p2}, Lo/yV;->c(Lorg/linphone/core/LinphoneCall;)V

    goto :goto_0

    .line 384
    :cond_3
    sget-object p1, Lorg/linphone/core/LinphoneCall$State;->CallEnd:Lorg/linphone/core/LinphoneCall$State;

    if-ne p3, p1, :cond_4

    .line 385
    invoke-direct {p0, p2}, Lo/yV;->a(Lorg/linphone/core/LinphoneCall;)V

    goto :goto_0

    .line 386
    :cond_4
    sget-object p1, Lorg/linphone/core/LinphoneCall$State;->CallReleased:Lorg/linphone/core/LinphoneCall$State;

    if-ne p3, p1, :cond_5

    .line 387
    invoke-direct {p0}, Lo/yV;->M()V

    goto :goto_0

    .line 388
    :cond_5
    sget-object p1, Lorg/linphone/core/LinphoneCall$State;->Error:Lorg/linphone/core/LinphoneCall$State;

    if-ne p3, p1, :cond_6

    .line 389
    invoke-direct {p0, p2, p4}, Lo/yV;->a(Lorg/linphone/core/LinphoneCall;Ljava/lang/String;)V

    :cond_6
    :goto_0
    return-void
.end method

.method public callStatsUpdated(Lorg/linphone/core/LinphoneCore;Lorg/linphone/core/LinphoneCall;Lorg/linphone/core/LinphoneCallStats;)V
    .locals 22

    move-object/from16 v0, p0

    if-eqz p2, :cond_1

    .line 401
    invoke-interface/range {p2 .. p2}, Lorg/linphone/core/LinphoneCall;->getAudioStats()Lorg/linphone/core/LinphoneCallStats;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 403
    iget-object v1, v0, Lo/yV;->g:Lo/zc;

    if-nez v1, :cond_0

    .line 404
    invoke-static {}, Lo/zc;->y()Lo/zc$Activity;

    move-result-object v1

    const-string v2, "linphone"

    .line 405
    invoke-virtual {v1, v2}, Lo/zc$Activity;->b(Ljava/lang/String;)Lo/zc$Activity;

    move-result-object v1

    iget-object v2, v0, Lo/yV;->n:Lcom/netflix/mediaclient/servicemgr/IVoip$ActionBar;

    check-cast v2, Lo/yV$TaskDescription;

    .line 406
    invoke-virtual {v2}, Lo/yV$TaskDescription;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lo/zc$Activity;->c(Ljava/lang/String;)Lo/zc$Activity;

    move-result-object v1

    iget-object v2, v0, Lo/yV;->n:Lcom/netflix/mediaclient/servicemgr/IVoip$ActionBar;

    check-cast v2, Lo/yV$TaskDescription;

    .line 407
    invoke-virtual {v2}, Lo/yV$TaskDescription;->e()I

    move-result v2

    invoke-virtual {v1, v2}, Lo/zc$Activity;->e(I)Lo/zc$Activity;

    move-result-object v1

    .line 408
    invoke-interface/range {p2 .. p2}, Lorg/linphone/core/LinphoneCall;->getAudioStats()Lorg/linphone/core/LinphoneCallStats;

    move-result-object v2

    invoke-interface {v2}, Lorg/linphone/core/LinphoneCallStats;->getDownloadBandwidth()F

    move-result v2

    invoke-virtual {v1, v2}, Lo/zc$Activity;->a(F)Lo/zc$Activity;

    move-result-object v1

    .line 409
    invoke-interface/range {p2 .. p2}, Lorg/linphone/core/LinphoneCall;->getAudioStats()Lorg/linphone/core/LinphoneCallStats;

    move-result-object v2

    invoke-interface {v2}, Lorg/linphone/core/LinphoneCallStats;->getUploadBandwidth()F

    move-result v2

    invoke-virtual {v1, v2}, Lo/zc$Activity;->c(F)Lo/zc$Activity;

    move-result-object v1

    .line 410
    invoke-interface/range {p2 .. p2}, Lorg/linphone/core/LinphoneCall;->getAudioStats()Lorg/linphone/core/LinphoneCallStats;

    move-result-object v2

    invoke-interface {v2}, Lorg/linphone/core/LinphoneCallStats;->getNumberPacketsSent()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lo/zc$Activity;->a(J)Lo/zc$Activity;

    move-result-object v1

    .line 411
    invoke-interface/range {p2 .. p2}, Lorg/linphone/core/LinphoneCall;->getAudioStats()Lorg/linphone/core/LinphoneCallStats;

    move-result-object v2

    invoke-interface {v2}, Lorg/linphone/core/LinphoneCallStats;->getNumberPacketsReceived()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lo/zc$Activity;->e(J)Lo/zc$Activity;

    move-result-object v1

    .line 412
    invoke-interface/range {p2 .. p2}, Lorg/linphone/core/LinphoneCall;->getAudioStats()Lorg/linphone/core/LinphoneCallStats;

    move-result-object v2

    invoke-interface {v2}, Lorg/linphone/core/LinphoneCallStats;->getLatePacketsCumulativeNumber()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lo/zc$Activity;->b(J)Lo/zc$Activity;

    move-result-object v1

    .line 413
    invoke-interface/range {p2 .. p2}, Lorg/linphone/core/LinphoneCall;->getAudioStats()Lorg/linphone/core/LinphoneCallStats;

    move-result-object v2

    invoke-interface {v2}, Lorg/linphone/core/LinphoneCallStats;->getCumulativePacketsLost()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lo/zc$Activity;->h(J)Lo/zc$Activity;

    move-result-object v1

    .line 414
    invoke-interface/range {p2 .. p2}, Lorg/linphone/core/LinphoneCall;->getAudioStats()Lorg/linphone/core/LinphoneCallStats;

    move-result-object v2

    invoke-interface {v2}, Lorg/linphone/core/LinphoneCallStats;->getNumberBytesSent()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lo/zc$Activity;->d(J)Lo/zc$Activity;

    move-result-object v1

    .line 415
    invoke-interface/range {p2 .. p2}, Lorg/linphone/core/LinphoneCall;->getAudioStats()Lorg/linphone/core/LinphoneCallStats;

    move-result-object v2

    invoke-interface {v2}, Lorg/linphone/core/LinphoneCallStats;->getNumberBytesReceived()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lo/zc$Activity;->c(J)Lo/zc$Activity;

    move-result-object v1

    .line 416
    invoke-interface/range {p2 .. p2}, Lorg/linphone/core/LinphoneCall;->getAudioStats()Lorg/linphone/core/LinphoneCallStats;

    move-result-object v2

    invoke-interface {v2}, Lorg/linphone/core/LinphoneCallStats;->getReceiverLossRate()F

    move-result v2

    invoke-virtual {v1, v2}, Lo/zc$Activity;->e(F)Lo/zc$Activity;

    move-result-object v1

    .line 417
    invoke-interface/range {p2 .. p2}, Lorg/linphone/core/LinphoneCall;->getAudioStats()Lorg/linphone/core/LinphoneCallStats;

    move-result-object v2

    invoke-interface {v2}, Lorg/linphone/core/LinphoneCallStats;->getSenderLossRate()F

    move-result v2

    invoke-virtual {v1, v2}, Lo/zc$Activity;->b(F)Lo/zc$Activity;

    move-result-object v1

    .line 418
    invoke-interface/range {p2 .. p2}, Lorg/linphone/core/LinphoneCall;->getAudioStats()Lorg/linphone/core/LinphoneCallStats;

    move-result-object v2

    invoke-interface {v2}, Lorg/linphone/core/LinphoneCallStats;->getSenderInterarrivalJitter()F

    move-result v2

    invoke-virtual {v1, v2}, Lo/zc$Activity;->j(F)Lo/zc$Activity;

    move-result-object v1

    .line 419
    invoke-interface/range {p2 .. p2}, Lorg/linphone/core/LinphoneCall;->getAudioStats()Lorg/linphone/core/LinphoneCallStats;

    move-result-object v2

    invoke-interface {v2}, Lorg/linphone/core/LinphoneCallStats;->getSenderInterarrivalJitter()F

    move-result v2

    invoke-virtual {v1, v2}, Lo/zc$Activity;->g(F)Lo/zc$Activity;

    move-result-object v1

    .line 420
    invoke-interface/range {p2 .. p2}, Lorg/linphone/core/LinphoneCall;->getAudioStats()Lorg/linphone/core/LinphoneCallStats;

    move-result-object v2

    invoke-interface {v2}, Lorg/linphone/core/LinphoneCallStats;->getSenderInterarrivalJitter()F

    move-result v2

    invoke-virtual {v1, v2}, Lo/zc$Activity;->h(F)Lo/zc$Activity;

    move-result-object v1

    .line 421
    invoke-interface/range {p2 .. p2}, Lorg/linphone/core/LinphoneCall;->getAudioStats()Lorg/linphone/core/LinphoneCallStats;

    move-result-object v2

    invoke-interface {v2}, Lorg/linphone/core/LinphoneCallStats;->getReceiverInterarrivalJitter()F

    move-result v2

    invoke-virtual {v1, v2}, Lo/zc$Activity;->i(F)Lo/zc$Activity;

    move-result-object v1

    .line 422
    invoke-interface/range {p2 .. p2}, Lorg/linphone/core/LinphoneCall;->getAudioStats()Lorg/linphone/core/LinphoneCallStats;

    move-result-object v2

    invoke-interface {v2}, Lorg/linphone/core/LinphoneCallStats;->getReceiverInterarrivalJitter()F

    move-result v2

    invoke-virtual {v1, v2}, Lo/zc$Activity;->f(F)Lo/zc$Activity;

    move-result-object v1

    .line 423
    invoke-interface/range {p2 .. p2}, Lorg/linphone/core/LinphoneCall;->getAudioStats()Lorg/linphone/core/LinphoneCallStats;

    move-result-object v2

    invoke-interface {v2}, Lorg/linphone/core/LinphoneCallStats;->getReceiverInterarrivalJitter()F

    move-result v2

    invoke-virtual {v1, v2}, Lo/zc$Activity;->d(F)Lo/zc$Activity;

    move-result-object v1

    .line 424
    invoke-interface/range {p2 .. p2}, Lorg/linphone/core/LinphoneCall;->getAudioStats()Lorg/linphone/core/LinphoneCallStats;

    move-result-object v2

    invoke-interface {v2}, Lorg/linphone/core/LinphoneCallStats;->getRoundTripDelay()F

    move-result v2

    invoke-virtual {v1, v2}, Lo/zc$Activity;->n(F)Lo/zc$Activity;

    move-result-object v1

    .line 425
    invoke-interface/range {p2 .. p2}, Lorg/linphone/core/LinphoneCall;->getAudioStats()Lorg/linphone/core/LinphoneCallStats;

    move-result-object v2

    invoke-interface {v2}, Lorg/linphone/core/LinphoneCallStats;->getRoundTripDelay()F

    move-result v2

    invoke-virtual {v1, v2}, Lo/zc$Activity;->m(F)Lo/zc$Activity;

    move-result-object v1

    .line 426
    invoke-interface/range {p2 .. p2}, Lorg/linphone/core/LinphoneCall;->getAudioStats()Lorg/linphone/core/LinphoneCallStats;

    move-result-object v2

    invoke-interface {v2}, Lorg/linphone/core/LinphoneCallStats;->getRoundTripDelay()F

    move-result v2

    invoke-virtual {v1, v2}, Lo/zc$Activity;->k(F)Lo/zc$Activity;

    move-result-object v1

    .line 427
    invoke-virtual {v1}, Lo/zc$Activity;->b()Lo/zc;

    move-result-object v1

    iput-object v1, v0, Lo/yV;->g:Lo/zc;

    goto :goto_0

    .line 431
    :cond_0
    iget-object v2, v0, Lo/yV;->g:Lo/zc;

    invoke-interface/range {p2 .. p2}, Lorg/linphone/core/LinphoneCall;->getAudioStats()Lorg/linphone/core/LinphoneCallStats;

    move-result-object v1

    invoke-interface {v1}, Lorg/linphone/core/LinphoneCallStats;->getDownloadBandwidth()F

    move-result v3

    .line 432
    invoke-interface/range {p2 .. p2}, Lorg/linphone/core/LinphoneCall;->getAudioStats()Lorg/linphone/core/LinphoneCallStats;

    move-result-object v1

    invoke-interface {v1}, Lorg/linphone/core/LinphoneCallStats;->getUploadBandwidth()F

    move-result v4

    .line 433
    invoke-interface/range {p2 .. p2}, Lorg/linphone/core/LinphoneCall;->getAudioStats()Lorg/linphone/core/LinphoneCallStats;

    move-result-object v1

    invoke-interface {v1}, Lorg/linphone/core/LinphoneCallStats;->getNumberBytesSent()J

    move-result-wide v5

    .line 434
    invoke-interface/range {p2 .. p2}, Lorg/linphone/core/LinphoneCall;->getAudioStats()Lorg/linphone/core/LinphoneCallStats;

    move-result-object v1

    invoke-interface {v1}, Lorg/linphone/core/LinphoneCallStats;->getNumberBytesReceived()J

    move-result-wide v7

    .line 435
    invoke-interface/range {p2 .. p2}, Lorg/linphone/core/LinphoneCall;->getAudioStats()Lorg/linphone/core/LinphoneCallStats;

    move-result-object v1

    invoke-interface {v1}, Lorg/linphone/core/LinphoneCallStats;->getNumberPacketsSent()J

    move-result-wide v9

    .line 436
    invoke-interface/range {p2 .. p2}, Lorg/linphone/core/LinphoneCall;->getAudioStats()Lorg/linphone/core/LinphoneCallStats;

    move-result-object v1

    invoke-interface {v1}, Lorg/linphone/core/LinphoneCallStats;->getNumberPacketsReceived()J

    move-result-wide v11

    .line 437
    invoke-interface/range {p2 .. p2}, Lorg/linphone/core/LinphoneCall;->getAudioStats()Lorg/linphone/core/LinphoneCallStats;

    move-result-object v1

    invoke-interface {v1}, Lorg/linphone/core/LinphoneCallStats;->getLatePacketsCumulativeNumber()J

    move-result-wide v13

    .line 438
    invoke-interface/range {p2 .. p2}, Lorg/linphone/core/LinphoneCall;->getAudioStats()Lorg/linphone/core/LinphoneCallStats;

    move-result-object v1

    invoke-interface {v1}, Lorg/linphone/core/LinphoneCallStats;->getCumulativePacketsLost()J

    move-result-wide v15

    .line 439
    invoke-interface/range {p2 .. p2}, Lorg/linphone/core/LinphoneCall;->getAudioStats()Lorg/linphone/core/LinphoneCallStats;

    move-result-object v1

    invoke-interface {v1}, Lorg/linphone/core/LinphoneCallStats;->getSenderLossRate()F

    move-result v17

    .line 440
    invoke-interface/range {p2 .. p2}, Lorg/linphone/core/LinphoneCall;->getAudioStats()Lorg/linphone/core/LinphoneCallStats;

    move-result-object v1

    invoke-interface {v1}, Lorg/linphone/core/LinphoneCallStats;->getReceiverLossRate()F

    move-result v18

    .line 441
    invoke-interface/range {p2 .. p2}, Lorg/linphone/core/LinphoneCall;->getAudioStats()Lorg/linphone/core/LinphoneCallStats;

    move-result-object v1

    invoke-interface {v1}, Lorg/linphone/core/LinphoneCallStats;->getSenderInterarrivalJitter()F

    move-result v1

    const/high16 v20, 0x447a0000    # 1000.0f

    mul-float v19, v1, v20

    .line 442
    invoke-interface/range {p2 .. p2}, Lorg/linphone/core/LinphoneCall;->getAudioStats()Lorg/linphone/core/LinphoneCallStats;

    move-result-object v1

    invoke-interface {v1}, Lorg/linphone/core/LinphoneCallStats;->getReceiverInterarrivalJitter()F

    move-result v1

    mul-float v20, v20, v1

    .line 443
    invoke-interface/range {p2 .. p2}, Lorg/linphone/core/LinphoneCall;->getAudioStats()Lorg/linphone/core/LinphoneCallStats;

    move-result-object v1

    invoke-interface {v1}, Lorg/linphone/core/LinphoneCallStats;->getRoundTripDelay()F

    move-result v21

    .line 431
    invoke-virtual/range {v2 .. v21}, Lo/zc;->b(FFJJJJJJFFFFF)Lo/zc;

    move-result-object v1

    iput-object v1, v0, Lo/yV;->g:Lo/zc;

    :goto_0
    const-string v1, "nf_voip_linphone"

    const-string v2, "================== CALL STATISTICS ========================"

    .line 446
    invoke-static {v1, v2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    .line 447
    iget-object v4, v0, Lo/yV;->g:Lo/zc;

    invoke-virtual {v4}, Lo/zc;->b()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    iget-object v4, v0, Lo/yV;->g:Lo/zc;

    invoke-virtual {v4}, Lo/zc;->e()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v3, v6

    const-string v4, "        CODEC:                  %s/%s"

    invoke-static {v1, v4, v3}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    new-array v3, v6, [Ljava/lang/Object;

    .line 448
    iget-object v4, v0, Lo/yV;->g:Lo/zc;

    invoke-virtual {v4}, Lo/zc;->c()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v5

    const-string v4, "        Download bandwidth:     %.2f kbits/sec"

    invoke-static {v1, v4, v3}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    new-array v3, v6, [Ljava/lang/Object;

    .line 449
    iget-object v4, v0, Lo/yV;->g:Lo/zc;

    invoke-virtual {v4}, Lo/zc;->d()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v5

    const-string v4, "        Upload bandwidth:       %.2f kbits/sec"

    invoke-static {v1, v4, v3}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    new-array v3, v6, [Ljava/lang/Object;

    .line 450
    iget-object v4, v0, Lo/yV;->g:Lo/zc;

    invoke-virtual {v4}, Lo/zc;->j()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v5

    const-string v4, "        Sender loss rate:       %.2f"

    invoke-static {v1, v4, v3}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    new-array v3, v6, [Ljava/lang/Object;

    .line 451
    iget-object v4, v0, Lo/yV;->g:Lo/zc;

    invoke-virtual {v4}, Lo/zc;->o()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v5

    const-string v4, "        Receiver loss rate:     %.2f"

    invoke-static {v1, v4, v3}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    new-array v3, v2, [Ljava/lang/Object;

    .line 452
    iget-object v4, v0, Lo/yV;->g:Lo/zc;

    invoke-virtual {v4}, Lo/zc;->i()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v5

    iget-object v4, v0, Lo/yV;->g:Lo/zc;

    invoke-virtual {v4}, Lo/zc;->g()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v6

    const-string v4, "        Packets/Bytes sent:     %d packets / %d bytes"

    invoke-static {v1, v4, v3}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    new-array v3, v2, [Ljava/lang/Object;

    .line 453
    iget-object v4, v0, Lo/yV;->g:Lo/zc;

    invoke-virtual {v4}, Lo/zc;->h()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v5

    iget-object v4, v0, Lo/yV;->g:Lo/zc;

    invoke-virtual {v4}, Lo/zc;->f()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v6

    const-string v4, "        Packets/Bytes received: %d packets / %d bytes"

    invoke-static {v1, v4, v3}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    new-array v3, v6, [Ljava/lang/Object;

    .line 454
    iget-object v4, v0, Lo/yV;->g:Lo/zc;

    invoke-virtual {v4}, Lo/zc;->m()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v5

    const-string v4, "        Lost cumlative packets: %d"

    invoke-static {v1, v4, v3}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    new-array v3, v6, [Ljava/lang/Object;

    .line 455
    iget-object v4, v0, Lo/yV;->g:Lo/zc;

    invoke-virtual {v4}, Lo/zc;->l()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v5

    const-string v4, "        Late cumlative packets: %d"

    invoke-static {v1, v4, v3}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    const/4 v3, 0x3

    new-array v4, v3, [Ljava/lang/Object;

    .line 456
    iget-object v7, v0, Lo/yV;->g:Lo/zc;

    invoke-virtual {v7}, Lo/zc;->k()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v4, v5

    iget-object v7, v0, Lo/yV;->g:Lo/zc;

    invoke-virtual {v7}, Lo/zc;->n()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v4, v6

    iget-object v7, v0, Lo/yV;->g:Lo/zc;

    invoke-virtual {v7}, Lo/zc;->q()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v4, v2

    const-string v7, "        Remote RX Jitter :      %.2f ms average, MIN: %.2f ms, MAX: %.2f ms"

    invoke-static {v1, v7, v4}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    new-array v4, v3, [Ljava/lang/Object;

    .line 457
    iget-object v7, v0, Lo/yV;->g:Lo/zc;

    invoke-virtual {v7}, Lo/zc;->s()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v4, v5

    iget-object v7, v0, Lo/yV;->g:Lo/zc;

    invoke-virtual {v7}, Lo/zc;->t()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v4, v6

    iget-object v7, v0, Lo/yV;->g:Lo/zc;

    invoke-virtual {v7}, Lo/zc;->p()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v4, v2

    const-string v7, "        Local TX  Jitter :      %.2f ms average, MIN: %.2f ms, MAX: %.2f ms"

    invoke-static {v1, v7, v4}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    new-array v4, v6, [Ljava/lang/Object;

    .line 458
    invoke-interface/range {p2 .. p2}, Lorg/linphone/core/LinphoneCall;->getAudioStats()Lorg/linphone/core/LinphoneCallStats;

    move-result-object v7

    invoke-interface {v7}, Lorg/linphone/core/LinphoneCallStats;->getJitterBufferSize()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v4, v5

    const-string v7, "        Jitter buffer size:     %.2f ms"

    invoke-static {v1, v7, v4}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    new-array v3, v3, [Ljava/lang/Object;

    .line 459
    iget-object v4, v0, Lo/yV;->g:Lo/zc;

    invoke-virtual {v4}, Lo/zc;->r()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v5

    iget-object v4, v0, Lo/yV;->g:Lo/zc;

    invoke-virtual {v4}, Lo/zc;->u()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v6

    iget-object v4, v0, Lo/yV;->g:Lo/zc;

    invoke-virtual {v4}, Lo/zc;->v()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v2

    const-string v2, "        Roundtrip delay:        %.2f ms average, MIN: %.2f ms, MAX: %.2f ms"

    invoke-static {v1, v2, v3}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    const-string v2, "==========================================================="

    .line 460
    invoke-static {v1, v2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public configuringStatus(Lorg/linphone/core/LinphoneCore;Lorg/linphone/core/LinphoneCore$RemoteProvisioningState;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public d(C)V
    .locals 3

    .line 325
    iget-object v0, p0, Lo/yV;->G:Lorg/linphone/core/LinphoneCore;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 326
    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "nf_voip_linphone"

    const-string v2, "Sending DTMF code %s"

    invoke-static {v1, v2, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 327
    iget-object v0, p0, Lo/yV;->G:Lorg/linphone/core/LinphoneCore;

    invoke-interface {v0, p1}, Lorg/linphone/core/LinphoneCore;->sendDtmf(C)V

    :cond_0
    return-void
.end method

.method public displayMessage(Lorg/linphone/core/LinphoneCore;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public displayStatus(Lorg/linphone/core/LinphoneCore;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public displayWarning(Lorg/linphone/core/LinphoneCore;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public dtmfReceived(Lorg/linphone/core/LinphoneCore;Lorg/linphone/core/LinphoneCall;I)V
    .locals 0

    return-void
.end method

.method public e()Landroid/content/BroadcastReceiver;
    .locals 1

    .line 140
    iget-object v0, p0, Lo/yV;->i:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method public e(F)V
    .locals 0

    return-void
.end method

.method public e(Z)V
    .locals 2

    .line 275
    iget-object v0, p0, Lo/yV;->G:Lorg/linphone/core/LinphoneCore;

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    if-nez p1, :cond_1

    .line 277
    invoke-virtual {p0}, Lo/yV;->t()Z

    move-result v0

    if-nez v0, :cond_1

    .line 278
    :cond_0
    iget-object v0, p0, Lo/yV;->G:Lorg/linphone/core/LinphoneCore;

    invoke-interface {v0, p1}, Lorg/linphone/core/LinphoneCore;->enableSpeaker(Z)V

    .line 280
    :cond_1
    iget-object v0, p0, Lo/yV;->k:Lo/zb;

    invoke-virtual {v0, p1}, Lo/zb;->a(Z)V

    .line 285
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "speakerOnEvent"

    .line 286
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 287
    new-instance p1, Lcom/netflix/cl/model/event/discrete/DebugEvent;

    invoke-direct {p1, v0}, Lcom/netflix/cl/model/event/discrete/DebugEvent;-><init>(Lorg/json/JSONObject;)V

    .line 288
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    invoke-virtual {v0, p1}, Lcom/netflix/cl/Logger;->logEvent(Lcom/netflix/cl/model/event/discrete/DiscreteEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    return-void
.end method

.method public ecCalibrationStatus(Lorg/linphone/core/LinphoneCore;Lorg/linphone/core/LinphoneCore$EcCalibratorStatus;ILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public fileTransferProgressIndication(Lorg/linphone/core/LinphoneCore;Lorg/linphone/core/LinphoneChatMessage;Lorg/linphone/core/LinphoneContent;I)V
    .locals 0

    return-void
.end method

.method public fileTransferRecv(Lorg/linphone/core/LinphoneCore;Lorg/linphone/core/LinphoneChatMessage;Lorg/linphone/core/LinphoneContent;[BI)V
    .locals 0

    return-void
.end method

.method public fileTransferSend(Lorg/linphone/core/LinphoneCore;Lorg/linphone/core/LinphoneChatMessage;Lorg/linphone/core/LinphoneContent;Ljava/nio/ByteBuffer;I)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public friendListCreated(Lorg/linphone/core/LinphoneCore;Lorg/linphone/core/LinphoneFriendList;)V
    .locals 0

    return-void
.end method

.method public friendListRemoved(Lorg/linphone/core/LinphoneCore;Lorg/linphone/core/LinphoneFriendList;)V
    .locals 0

    return-void
.end method

.method public declared-synchronized globalState(Lorg/linphone/core/LinphoneCore;Lorg/linphone/core/LinphoneCore$GlobalState;Ljava/lang/String;)V
    .locals 5

    monitor-enter p0

    :try_start_0
    const-string p3, "nf_voip_linphone"

    const-string v0, "globalState %s"

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    .line 349
    invoke-virtual {p2}, Lorg/linphone/core/LinphoneCore$GlobalState;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {p3, v0, v2}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 351
    sget-object p3, Lorg/linphone/core/LinphoneCore$GlobalState;->GlobalOn:Lorg/linphone/core/LinphoneCore$GlobalState;

    if-ne p2, p3, :cond_1

    .line 353
    invoke-direct {p0, p1}, Lo/yV;->d(Lorg/linphone/core/LinphoneCore;)V

    .line 355
    sget-object p1, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine$ServiceState;->a:Lcom/netflix/mediaclient/service/voip/BaseVoipEngine$ServiceState;

    iput-object p1, p0, Lo/yV;->l:Lcom/netflix/mediaclient/service/voip/BaseVoipEngine$ServiceState;

    .line 357
    iget-object p1, p0, Lo/yV;->f:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/netflix/mediaclient/servicemgr/IVoip$TaskDescription;

    .line 358
    invoke-interface {p2, v1}, Lcom/netflix/mediaclient/servicemgr/IVoip$TaskDescription;->b(Z)V

    goto :goto_0

    .line 361
    :cond_0
    iget-object p1, p0, Lo/yV;->C:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 362
    iget-object p1, p0, Lo/yV;->C:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 363
    invoke-direct {p0}, Lo/yV;->F()V

    goto :goto_1

    .line 365
    :cond_1
    sget-object p1, Lorg/linphone/core/LinphoneCore$GlobalState;->GlobalShutdown:Lorg/linphone/core/LinphoneCore$GlobalState;

    if-ne p2, p1, :cond_2

    .line 366
    sget-object p1, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine$ServiceState;->b:Lcom/netflix/mediaclient/service/voip/BaseVoipEngine$ServiceState;

    iput-object p1, p0, Lo/yV;->l:Lcom/netflix/mediaclient/service/voip/BaseVoipEngine$ServiceState;

    goto :goto_1

    .line 367
    :cond_2
    sget-object p1, Lorg/linphone/core/LinphoneCore$GlobalState;->GlobalOff:Lorg/linphone/core/LinphoneCore$GlobalState;

    if-ne p2, p1, :cond_3

    .line 368
    sget-object p1, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine$ServiceState;->c:Lcom/netflix/mediaclient/service/voip/BaseVoipEngine$ServiceState;

    iput-object p1, p0, Lo/yV;->l:Lcom/netflix/mediaclient/service/voip/BaseVoipEngine$ServiceState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 370
    :cond_3
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public infoReceived(Lorg/linphone/core/LinphoneCore;Lorg/linphone/core/LinphoneCall;Lorg/linphone/core/LinphoneInfoMessage;)V
    .locals 0

    return-void
.end method

.method public isComposingReceived(Lorg/linphone/core/LinphoneCore;Lorg/linphone/core/LinphoneChatRoom;)V
    .locals 0

    return-void
.end method

.method public j()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public messageReceived(Lorg/linphone/core/LinphoneCore;Lorg/linphone/core/LinphoneChatRoom;Lorg/linphone/core/LinphoneChatMessage;)V
    .locals 0

    return-void
.end method

.method public messageReceivedUnableToDecrypted(Lorg/linphone/core/LinphoneCore;Lorg/linphone/core/LinphoneChatRoom;Lorg/linphone/core/LinphoneChatMessage;)V
    .locals 0

    return-void
.end method

.method public networkReachableChanged(Lorg/linphone/core/LinphoneCore;Z)V
    .locals 0

    return-void
.end method

.method public newSubscriptionRequest(Lorg/linphone/core/LinphoneCore;Lorg/linphone/core/LinphoneFriend;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public notifyPresenceReceived(Lorg/linphone/core/LinphoneCore;Lorg/linphone/core/LinphoneFriend;)V
    .locals 0

    return-void
.end method

.method public notifyReceived(Lorg/linphone/core/LinphoneCore;Lorg/linphone/core/LinphoneCall;Lorg/linphone/core/LinphoneAddress;[B)V
    .locals 0

    return-void
.end method

.method public notifyReceived(Lorg/linphone/core/LinphoneCore;Lorg/linphone/core/LinphoneEvent;Ljava/lang/String;Lorg/linphone/core/LinphoneContent;)V
    .locals 0

    return-void
.end method

.method public publishStateChanged(Lorg/linphone/core/LinphoneCore;Lorg/linphone/core/LinphoneEvent;Lorg/linphone/core/PublishState;)V
    .locals 0

    return-void
.end method

.method public registrationState(Lorg/linphone/core/LinphoneCore;Lorg/linphone/core/LinphoneProxyConfig;Lorg/linphone/core/LinphoneCore$RegistrationState;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public show(Lorg/linphone/core/LinphoneCore;)V
    .locals 0

    return-void
.end method

.method public subscriptionStateChanged(Lorg/linphone/core/LinphoneCore;Lorg/linphone/core/LinphoneEvent;Lorg/linphone/core/SubscriptionState;)V
    .locals 0

    return-void
.end method

.method public t()Z
    .locals 1

    .line 163
    iget-object v0, p0, Lo/yV;->p:Lo/yW;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/yV;->p:Lo/yW;

    invoke-virtual {v0}, Lo/yW;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lo/yV;->p:Lo/yW;

    invoke-virtual {v0}, Lo/yW;->d()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public transferState(Lorg/linphone/core/LinphoneCore;Lorg/linphone/core/LinphoneCall;Lorg/linphone/core/LinphoneCall$State;)V
    .locals 0

    return-void
.end method

.method public declared-synchronized u()Z
    .locals 5

    monitor-enter p0

    .line 202
    :try_start_0
    iget-object v0, p0, Lo/yV;->u:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const-string v0, "nf_voip_linphone"

    const-string v2, "Request for dial is already in progress!"

    .line 203
    invoke-static {v0, v2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 204
    monitor-exit p0

    return v1

    .line 208
    :cond_0
    :try_start_1
    invoke-static {}, Lo/afB;->d()Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lo/yV;->s:Ljava/util/UUID;

    .line 209
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance v2, Lcom/netflix/cl/model/event/session/action/cs/Call;

    const-string v3, ""

    iget-object v4, p0, Lo/yV;->s:Ljava/util/UUID;

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/netflix/cl/model/event/session/action/cs/Call;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/netflix/cl/Logger;->startSession(Lcom/netflix/cl/model/event/session/Session;)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lo/yV;->q:Ljava/lang/Long;

    .line 210
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance v2, Lcom/netflix/cl/model/event/session/command/cs/CallCommand;

    invoke-direct {v2}, Lcom/netflix/cl/model/event/session/command/cs/CallCommand;-><init>()V

    invoke-virtual {v0, v2}, Lcom/netflix/cl/Logger;->startSession(Lcom/netflix/cl/model/event/session/Session;)Ljava/lang/Long;

    .line 212
    iget-object v0, p0, Lo/yV;->u:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 214
    new-instance v0, Lo/yX;

    invoke-direct {v0, p0}, Lo/yX;-><init>(Lo/yV;)V

    .line 222
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lo/yZ;

    invoke-direct {v3, p0, v0}, Lo/yZ;-><init>(Lo/yV;Ljava/lang/Runnable;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 228
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 230
    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public uploadProgressIndication(Lorg/linphone/core/LinphoneCore;II)V
    .locals 0

    return-void
.end method

.method public uploadStateChanged(Lorg/linphone/core/LinphoneCore;Lorg/linphone/core/LinphoneCore$LogCollectionUploadState;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public v()Z
    .locals 3

    .line 177
    iget-object v0, p0, Lo/yV;->v:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 179
    :cond_0
    invoke-virtual {p0}, Lo/yV;->d()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "nf_voip_linphone"

    const-string v2, "VOIP service is NOT enabled, no need to start it."

    .line 180
    invoke-static {v0, v2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 183
    :cond_1
    invoke-direct {p0}, Lo/yV;->H()Z

    move-result v0

    return v0
.end method

.method public declared-synchronized w()Z
    .locals 1

    monitor-enter p0

    .line 194
    :try_start_0
    iget-object v0, p0, Lo/yV;->v:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/yV;->G:Lorg/linphone/core/LinphoneCore;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public x()V
    .locals 2

    const-string v0, "nf_voip_linphone"

    const-string v1, "stop() called"

    .line 188
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    invoke-direct {p0}, Lo/yV;->G()V

    return-void
.end method

.method public declared-synchronized y()Z
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "nf_voip_linphone"

    const-string v1, "--- TERMINATE Call"

    .line 236
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    iget-object v0, p0, Lo/yV;->G:Lorg/linphone/core/LinphoneCore;

    if-nez v0, :cond_0

    const-string v0, "nf_voip_linphone"

    const-string v1, "Engine is null, unable to terminate call!"

    .line 239
    invoke-static {v0, v1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    .line 240
    monitor-exit p0

    return v0

    .line 243
    :cond_0
    :try_start_1
    iget-object v0, p0, Lo/yV;->n:Lcom/netflix/mediaclient/servicemgr/IVoip$ActionBar;

    if-nez v0, :cond_1

    const-string v0, "nf_voip_linphone"

    const-string v1, "Current call is null, unable to terminate call!"

    .line 244
    invoke-static {v0, v1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 245
    :cond_1
    iget-object v0, p0, Lo/yV;->G:Lorg/linphone/core/LinphoneCore;

    invoke-interface {v0}, Lorg/linphone/core/LinphoneCore;->isIncall()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 246
    invoke-virtual {p0}, Lo/yV;->p()V

    .line 247
    iget-object v0, p0, Lo/yV;->G:Lorg/linphone/core/LinphoneCore;

    iget-object v1, p0, Lo/yV;->n:Lcom/netflix/mediaclient/servicemgr/IVoip$ActionBar;

    check-cast v1, Lo/yV$TaskDescription;

    invoke-virtual {v1}, Lo/yV$TaskDescription;->c()Lorg/linphone/core/LinphoneCall;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/linphone/core/LinphoneCore;->terminateCall(Lorg/linphone/core/LinphoneCall;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 250
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
