.class Lo/acV$StateListAnimator;
.super Landroid/database/ContentObserver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/acV;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StateListAnimator"
.end annotation


# instance fields
.field final synthetic c:Lo/acV;

.field d:I

.field e:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lo/acV;Landroid/content/Context;)V
    .locals 0

    .line 890
    iput-object p1, p0, Lo/acV$StateListAnimator;->c:Lo/acV;

    .line 891
    invoke-static {p1}, Lo/acV;->a(Lo/acV;)Landroid/os/Handler;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 892
    iput-object p2, p0, Lo/acV$StateListAnimator;->e:Landroid/content/Context;

    .line 894
    iget-object p1, p0, Lo/acV$StateListAnimator;->e:Landroid/content/Context;

    const-string p2, "audio"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    const/4 p2, 0x3

    .line 895
    invoke-virtual {p1, p2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result p1

    iput p1, p0, Lo/acV$StateListAnimator;->d:I

    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .locals 1

    .line 900
    invoke-super {p0}, Landroid/database/ContentObserver;->deliverSelfNotifications()Z

    move-result v0

    return v0
.end method

.method public onChange(Z)V
    .locals 5

    .line 905
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 907
    iget-object p1, p0, Lo/acV$StateListAnimator;->e:Landroid/content/Context;

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    const/4 v0, 0x0

    .line 908
    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    .line 909
    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result p1

    int-to-float v2, v1

    int-to-float p1, p1

    div-float/2addr v2, p1

    .line 911
    iget p1, p0, Lo/acV$StateListAnimator;->d:I

    sub-int/2addr p1, v1

    const-string v3, "VoipActivity"

    if-lez p1, :cond_0

    const-string p1, "Decreased"

    .line 914
    invoke-static {v3, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    iput v1, p0, Lo/acV$StateListAnimator;->d:I

    goto :goto_0

    :cond_0
    if-gez p1, :cond_1

    const-string p1, "Increased"

    .line 917
    invoke-static {v3, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 918
    iput v1, p0, Lo/acV$StateListAnimator;->d:I

    .line 928
    :cond_1
    :goto_0
    new-instance p1, Lcom/netflix/cl/model/context/Volume;

    iget-object v1, p0, Lo/acV$StateListAnimator;->c:Lo/acV;

    invoke-static {v1}, Lo/acV;->b(Lo/acV;)Lo/acW;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lo/acV$StateListAnimator;->c:Lo/acV;

    invoke-static {v1}, Lo/acV;->b(Lo/acV;)Lo/acW;

    move-result-object v1

    invoke-virtual {v1}, Lo/acW;->e()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/netflix/cl/model/context/Volume;-><init>(Ljava/lang/Boolean;Ljava/lang/Float;)V

    .line 929
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    invoke-virtual {v0, p1}, Lcom/netflix/cl/Logger;->addContext(Lcom/netflix/cl/model/context/CLContext;)J

    .line 930
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance v1, Lcom/netflix/cl/model/event/discrete/VolumeChanged;

    invoke-direct {v1}, Lcom/netflix/cl/model/event/discrete/VolumeChanged;-><init>()V

    invoke-virtual {v0, v1}, Lcom/netflix/cl/Logger;->logEvent(Lcom/netflix/cl/model/event/discrete/DiscreteEvent;)V

    .line 931
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    invoke-virtual {p1}, Lcom/netflix/cl/model/context/Volume;->getId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/netflix/cl/Logger;->removeContext(Ljava/lang/Long;)Z

    .line 933
    iget-object p1, p0, Lo/acV$StateListAnimator;->c:Lo/acV;

    invoke-static {p1}, Lo/acV;->e(Lo/acV;)Lcom/netflix/mediaclient/servicemgr/IVoip;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 934
    iget-object p1, p0, Lo/acV$StateListAnimator;->c:Lo/acV;

    invoke-static {p1}, Lo/acV;->e(Lo/acV;)Lcom/netflix/mediaclient/servicemgr/IVoip;

    move-result-object p1

    invoke-interface {p1, v2}, Lcom/netflix/mediaclient/servicemgr/IVoip;->e(F)V

    :cond_3
    return-void
.end method
