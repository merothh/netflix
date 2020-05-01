.class public Lo/if;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/if$StateListAnimator;
    }
.end annotation


# instance fields
.field private b:Lio/reactivex/subjects/PublishSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/PublishSubject<",
            "Lo/akj;",
            ">;"
        }
    .end annotation
.end field

.field protected final c:Lo/bY;

.field private e:Lo/if$StateListAnimator;


# direct methods
.method public constructor <init>(Lo/if$StateListAnimator;)V
    .locals 2

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-static {}, Lio/reactivex/subjects/PublishSubject;->create()Lio/reactivex/subjects/PublishSubject;

    move-result-object v0

    iput-object v0, p0, Lo/if;->b:Lio/reactivex/subjects/PublishSubject;

    .line 31
    iput-object p1, p0, Lo/if;->e:Lo/if$StateListAnimator;

    .line 32
    const-class p1, Lo/bY;

    invoke-static {p1}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/bY;

    iput-object p1, p0, Lo/if;->c:Lo/bY;

    .line 35
    invoke-static {}, Lo/CarrierIdentifier;->d()Landroid/content/Context;

    move-result-object p1

    const-string v0, "prefetch_module_inapp_widevine"

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lo/aer;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method private a(Lo/bY$ActionBar;)V
    .locals 0

    .line 125
    invoke-direct {p0, p1}, Lo/if;->b(Lo/bY$ActionBar;)V

    .line 126
    iget-object p1, p0, Lo/if;->e:Lo/if$StateListAnimator;

    invoke-interface {p1}, Lo/if$StateListAnimator;->b()V

    .line 127
    iget-object p1, p0, Lo/if;->b:Lio/reactivex/subjects/PublishSubject;

    invoke-virtual {p1}, Lio/reactivex/subjects/PublishSubject;->onComplete()V

    return-void
.end method

.method private final b(Lo/bY$ActionBar;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 147
    :cond_0
    invoke-static {}, Lo/CarrierIdentifier;->getInstance()Lo/CarrierIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lo/CarrierIdentifier;->n()Lo/CameraPrewarmService;

    move-result-object v0

    invoke-virtual {v0}, Lo/CameraPrewarmService;->j()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 149
    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->l()Lo/zS;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 151
    new-instance v1, Lo/io;

    sget-object v2, Lo/bY$TaskDescription;->d:Lo/bY$TaskDescription;

    invoke-virtual {p0, p1}, Lo/if;->c(Lo/bY$ActionBar;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lo/io;-><init>(Lo/bY$TaskDescription;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lo/bY$ActionBar;->d()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lo/io;->b(Ljava/lang/String;)Lo/io;

    move-result-object p1

    invoke-interface {v0, p1}, Lo/zS;->e(Lcom/netflix/mediaclient/servicemgr/Logblob;)V

    :cond_1
    return-void
.end method

.method private d(Lo/bY$ActionBar;)V
    .locals 0

    .line 131
    invoke-direct {p0, p1}, Lo/if;->b(Lo/bY$ActionBar;)V

    .line 132
    iget-object p1, p0, Lo/if;->e:Lo/if$StateListAnimator;

    invoke-interface {p1}, Lo/if$StateListAnimator;->a()V

    .line 133
    iget-object p1, p0, Lo/if;->b:Lio/reactivex/subjects/PublishSubject;

    invoke-virtual {p1}, Lio/reactivex/subjects/PublishSubject;->onComplete()V

    return-void
.end method


# virtual methods
.method protected c(Lo/bY$ActionBar;)Ljava/lang/String;
    .locals 0

    .line 73
    invoke-interface {p1}, Lo/bY$ActionBar;->a()I

    move-result p1

    invoke-static {p1}, Lcom/netflix/mediaclient/service/api/core/ModuleInstallState;->e(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public c()V
    .locals 2

    .line 40
    iget-object v0, p0, Lo/if;->c:Lo/bY;

    sget-object v1, Lo/bY$TaskDescription;->d:Lo/bY$TaskDescription;

    invoke-interface {v0, v1}, Lo/bY;->c(Lo/bY$TaskDescription;)Lio/reactivex/Observable;

    move-result-object v0

    iget-object v1, p0, Lo/if;->b:Lio/reactivex/subjects/PublishSubject;

    .line 41
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->takeUntil(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lo/if$5;

    invoke-direct {v1, p0}, Lo/if$5;-><init>(Lo/if;)V

    .line 42
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method protected e(Ljava/lang/Throwable;)V
    .locals 0

    .line 66
    iget-object p1, p0, Lo/if;->e:Lo/if$StateListAnimator;

    if-eqz p1, :cond_0

    .line 67
    invoke-interface {p1}, Lo/if$StateListAnimator;->a()V

    :cond_0
    return-void
.end method

.method protected e(Lo/bY$ActionBar;)V
    .locals 2

    .line 87
    invoke-interface {p1}, Lo/bY$ActionBar;->a()I

    move-result v0

    const-string v1, "ModuleInstall"

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string p1, "InApp Widevine module is being canceled..."

    .line 113
    invoke-static {v1, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_1
    const-string v0, "InApp Widevine module is requiring user confirmation! No access to UI, "

    .line 109
    invoke-static {v1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    invoke-direct {p0, p1}, Lo/if;->d(Lo/bY$ActionBar;)V

    goto :goto_0

    :pswitch_2
    const-string v0, "InApp Widevine module is canceled..."

    .line 116
    invoke-static {v1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    invoke-direct {p0, p1}, Lo/if;->d(Lo/bY$ActionBar;)V

    goto :goto_0

    :pswitch_3
    const-string v0, "InApp Widevine module download failed."

    .line 92
    invoke-static {v1, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    invoke-direct {p0, p1}, Lo/if;->d(Lo/bY$ActionBar;)V

    goto :goto_0

    :pswitch_4
    const-string v0, "InApp Widevine module is installed!"

    .line 105
    invoke-static {v1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    invoke-direct {p0, p1}, Lo/if;->a(Lo/bY$ActionBar;)V

    goto :goto_0

    :pswitch_5
    const-string p1, "InApp Widevine module is installing..."

    .line 102
    invoke-static {v1, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_6
    const-string p1, "InApp Widevine module is downloaded. Pending installation..."

    .line 99
    invoke-static {v1, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_7
    const-string p1, "InApp Widevine module is downloading..."

    .line 96
    invoke-static {v1, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_8
    const-string p1, "InApp Widevine module download is pending..."

    .line 89
    invoke-static {v1, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
