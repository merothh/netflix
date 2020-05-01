.class public final Lo/Am;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/zO;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/Am$TaskDescription;,
        Lo/Am$Application;,
        Lo/Am$ActionBar;
    }
.end annotation


# instance fields
.field private a:Lo/zL;

.field private b:Lo/zL;

.field private c:I

.field private final d:Landroid/content/Context;

.field private e:Lo/zT;

.field private f:Lo/Am$ActionBar;

.field private final g:Lo/Am$Application;

.field private final h:Lo/zG;

.field private i:Z

.field private volatile j:Z

.field private l:I

.field private n:I

.field private final o:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 143
    iput v0, p0, Lo/Am;->c:I

    .line 160
    new-instance v0, Lo/Am$Application;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/Am$Application;-><init>(Lo/Am$3;)V

    iput-object v0, p0, Lo/Am;->g:Lo/Am$Application;

    const/4 v0, 0x0

    .line 165
    iput-boolean v0, p0, Lo/Am;->i:Z

    .line 172
    iput-boolean v0, p0, Lo/Am;->j:Z

    .line 177
    iput v0, p0, Lo/Am;->l:I

    .line 178
    iput v0, p0, Lo/Am;->n:I

    .line 2292
    new-instance v0, Lo/Am$3;

    invoke-direct {v0, p0}, Lo/Am$3;-><init>(Lo/Am;)V

    iput-object v0, p0, Lo/Am;->o:Landroid/content/ServiceConnection;

    .line 190
    new-instance v0, Lo/zx;

    invoke-direct {v0, p0}, Lo/zx;-><init>(Lo/zO;)V

    iput-object v0, p0, Lo/Am;->h:Lo/zG;

    .line 191
    invoke-static {}, Lo/CarrierIdentifier;->d()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lo/Am;->d:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lo/Am;)Lo/Am$Application;
    .locals 0

    .line 117
    iget-object p0, p0, Lo/Am;->g:Lo/Am$Application;

    return-object p0
.end method

.method public static a(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Lo/Am;
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 2332
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2333
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lo/Am;

    move-result-object p0

    .line 2334
    invoke-virtual {p0}, Lo/Am;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move-object p0, v0

    :goto_0
    return-object p0

    :cond_1
    return-object v0
.end method

.method private a(Lo/zU;Ljava/lang/String;)Lo/zU;
    .locals 2

    .line 2357
    new-instance v0, Lo/Am$TaskDescription;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lo/Am$TaskDescription;-><init>(Lo/Am;Lo/zU;Ljava/lang/String;Lo/Am$3;)V

    return-object v0
.end method

.method static synthetic a(Lo/Am;Z)Z
    .locals 0

    .line 117
    iput-boolean p1, p0, Lo/Am;->i:Z

    return p1
.end method

.method private ad()Landroid/content/Intent;
    .locals 3

    .line 2323
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lo/Am;->d:Landroid/content/Context;

    const-class v2, Lo/bM;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method private ae()Z
    .locals 2

    .line 2470
    invoke-virtual {p0}, Lo/Am;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lo/Am;->c:I

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    return v0

    .line 2473
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SPY-17272 - ServiceMgr called before NetflixService is ready. mConnects="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo/Am;->n:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mDisconnects="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo/Am;->l:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mReady="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lo/Am;->i:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mService="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/Am;->b:Lo/zL;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mClientId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo/Am;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2482
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v1

    invoke-interface {v1, v0}, Lo/SpinnerAdapter;->b(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method static synthetic b(Lo/Am;I)I
    .locals 0

    .line 117
    iput p1, p0, Lo/Am;->c:I

    return p1
.end method

.method static synthetic b(Lo/Am;)Lo/Am$ActionBar;
    .locals 0

    .line 117
    iget-object p0, p0, Lo/Am;->f:Lo/Am$ActionBar;

    return-object p0
.end method

.method private c(Lo/zU;)I
    .locals 1

    if-eqz p1, :cond_0

    .line 2454
    iget-object v0, p0, Lo/Am;->g:Lo/Am$Application;

    invoke-virtual {v0, p1}, Lo/Am$Application;->a(Lo/zU;)I

    move-result p1

    goto :goto_0

    :cond_0
    const-string p1, "ServiceManager"

    const-string v0, "Callback that is added is null!"

    .line 2456
    invoke-static {p1, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method static synthetic c(Lo/Am;Lo/Am$ActionBar;)Lo/Am$ActionBar;
    .locals 0

    .line 117
    iput-object p1, p0, Lo/Am;->f:Lo/Am$ActionBar;

    return-object p1
.end method

.method static synthetic c(Lo/Am;)Lo/zT;
    .locals 0

    .line 117
    iget-object p0, p0, Lo/Am;->e:Lo/zT;

    return-object p0
.end method

.method static synthetic c(Lo/Am;Lo/zT;)Lo/zT;
    .locals 0

    .line 117
    iput-object p1, p0, Lo/Am;->e:Lo/zT;

    return-object p1
.end method

.method static synthetic d(Lo/Am;)Lo/zL;
    .locals 0

    .line 117
    iget-object p0, p0, Lo/Am;->b:Lo/zL;

    return-object p0
.end method

.method static synthetic d(Lo/Am;Lo/zL;)Lo/zL;
    .locals 0

    .line 117
    iput-object p1, p0, Lo/Am;->a:Lo/zL;

    return-object p1
.end method

.method private d(I)Lo/zU;
    .locals 1

    .line 2496
    iget-object v0, p0, Lo/Am;->g:Lo/Am$Application;

    invoke-virtual {v0, p1}, Lo/Am$Application;->a(I)Lo/zU;

    move-result-object p1

    return-object p1
.end method

.method static synthetic d(Lo/Am;I)Lo/zU;
    .locals 0

    .line 117
    invoke-direct {p0, p1}, Lo/Am;->d(I)Lo/zU;

    move-result-object p0

    return-object p0
.end method

.method static synthetic e(Lo/Am;)I
    .locals 2

    .line 117
    iget v0, p0, Lo/Am;->n:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lo/Am;->n:I

    return v0
.end method

.method static synthetic e(Lo/Am;Lo/zL;)Lo/zL;
    .locals 0

    .line 117
    iput-object p1, p0, Lo/Am;->b:Lo/zL;

    return-object p1
.end method

.method static synthetic g(Lo/Am;)I
    .locals 2

    .line 117
    iget v0, p0, Lo/Am;->l:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lo/Am;->l:I

    return v0
.end method


# virtual methods
.method public A()Z
    .locals 1

    .line 709
    invoke-direct {p0}, Lo/Am;->ae()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 710
    iget-object v0, p0, Lo/Am;->b:Lo/zL;

    invoke-interface {v0}, Lo/zL;->G()Lo/cz;

    move-result-object v0

    invoke-interface {v0}, Lo/cz;->n()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public B()Lcom/netflix/mediaclient/util/DeviceCategory;
    .locals 2

    .line 679
    invoke-direct {p0}, Lo/Am;->ae()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 680
    iget-object v0, p0, Lo/Am;->b:Lo/zL;

    invoke-interface {v0}, Lo/zL;->x()Lcom/netflix/mediaclient/util/DeviceCategory;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "ServiceManager"

    const-string v1, "getDeviceCategory:: service is not available"

    .line 682
    invoke-static {v0, v1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public C()Z
    .locals 2

    .line 700
    invoke-direct {p0}, Lo/Am;->ae()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 701
    iget-object v0, p0, Lo/Am;->b:Lo/zL;

    invoke-interface {v0}, Lo/zL;->v()Z

    move-result v0

    return v0

    :cond_0
    const-string v0, "ServiceManager"

    const-string v1, "isDeviceHd:: service is not available"

    .line 703
    invoke-static {v0, v1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public D()Ljava/lang/String;
    .locals 2

    .line 688
    invoke-direct {p0}, Lo/Am;->ae()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 689
    iget-object v0, p0, Lo/Am;->b:Lo/zL;

    invoke-interface {v0}, Lo/zL;->t()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "ServiceManager"

    const-string v1, "getSoftwareVersion:: service is not available"

    .line 691
    invoke-static {v0, v1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public E()Z
    .locals 2

    .line 774
    invoke-direct {p0}, Lo/Am;->ae()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 775
    iget-object v0, p0, Lo/Am;->b:Lo/zL;

    invoke-interface {v0}, Lo/zL;->i()Z

    move-result v0

    return v0

    :cond_0
    const-string v0, "ServiceManager"

    const-string v1, "isUserLoggedIn:: service is not available"

    .line 777
    invoke-static {v0, v1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public F()Z
    .locals 2

    .line 732
    invoke-direct {p0}, Lo/Am;->ae()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 733
    iget-object v0, p0, Lo/Am;->b:Lo/zL;

    invoke-interface {v0}, Lo/zL;->w()Z

    move-result v0

    return v0

    :cond_0
    const-string v0, "ServiceManager"

    const-string v1, "isDolbyVisionSupported: service is not available"

    .line 735
    invoke-static {v0, v1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public G()Z
    .locals 2

    .line 762
    invoke-direct {p0}, Lo/Am;->ae()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 763
    iget-object v0, p0, Lo/Am;->b:Lo/zL;

    invoke-interface {v0}, Lo/zL;->G()Lo/cz;

    move-result-object v0

    invoke-interface {v0}, Lo/cz;->B()Z

    move-result v0

    return v0

    :cond_0
    const-string v0, "ServiceManager"

    const-string v1, "shouldAlertForMissingLocale:: service is not available"

    .line 765
    invoke-static {v0, v1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public H()Lo/Ak;
    .locals 2

    .line 753
    invoke-direct {p0}, Lo/Am;->ae()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 754
    iget-object v0, p0, Lo/Am;->b:Lo/zL;

    invoke-interface {v0}, Lo/zL;->u()Lo/Ak;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "ServiceManager"

    const-string v1, "getSignUpParams:: service is not available"

    .line 756
    invoke-static {v0, v1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public I()Z
    .locals 2

    .line 784
    invoke-direct {p0}, Lo/Am;->ae()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 785
    iget-object v0, p0, Lo/Am;->b:Lo/zL;

    invoke-interface {v0}, Lo/zL;->h()Z

    move-result v0

    return v0

    :cond_0
    const-string v0, "ServiceManager"

    const-string v1, "isNotActiveOrOnHold:: service is not available"

    .line 787
    invoke-static {v0, v1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public J()Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;
    .locals 2

    .line 818
    invoke-direct {p0}, Lo/Am;->ae()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 819
    iget-object v0, p0, Lo/Am;->b:Lo/zL;

    invoke-interface {v0}, Lo/zL;->g()Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "ServiceManager"

    const-string v1, "getEndOfGrandfatheringAlert:: service is not available"

    .line 821
    invoke-static {v0, v1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public K()Lio/reactivex/Single;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Single<",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ">;"
        }
    .end annotation

    .line 828
    invoke-direct {p0}, Lo/Am;->ae()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 829
    iget-object v0, p0, Lo/Am;->b:Lo/zL;

    invoke-interface {v0}, Lo/zL;->o()Lio/reactivex/Single;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "ServiceManager"

    const-string v1, "restartMembership:: service is not available"

    .line 831
    invoke-static {v0, v1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public L()Ljava/lang/String;
    .locals 2

    .line 803
    invoke-direct {p0}, Lo/Am;->ae()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 804
    iget-object v0, p0, Lo/Am;->b:Lo/zL;

    invoke-interface {v0}, Lo/zL;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "ServiceManager"

    const-string v1, "getUserEmail:: service is not available"

    .line 806
    invoke-static {v0, v1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public M()Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ">;"
        }
    .end annotation

    .line 838
    invoke-direct {p0}, Lo/Am;->ae()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 839
    iget-object v0, p0, Lo/Am;->b:Lo/zL;

    invoke-interface {v0}, Lo/zL;->l()Lio/reactivex/Observable;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "ServiceManager"

    const-string v1, "retryPayment:: service is not available"

    .line 841
    invoke-static {v0, v1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public N()Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;
    .locals 1

    .line 813
    invoke-virtual {p0}, Lo/Am;->J()Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;

    return-object v0
.end method

.method public O()V
    .locals 2

    .line 895
    invoke-direct {p0}, Lo/Am;->ae()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 896
    iget-object v0, p0, Lo/Am;->b:Lo/zL;

    invoke-interface {v0}, Lo/zL;->j()V

    goto :goto_0

    :cond_0
    const-string v0, "ServiceManager"

    const-string v1, "optInToWhatsAppNotifications:: service is not available"

    .line 898
    invoke-static {v0, v1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public P()Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;
    .locals 2

    .line 867
    invoke-direct {p0}, Lo/Am;->ae()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 868
    iget-object v0, p0, Lo/Am;->b:Lo/zL;

    invoke-interface {v0}, Lo/zL;->n()Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "ServiceManager"

    const-string v1, "getUserMessageAlert:: service is not available"

    .line 870
    invoke-static {v0, v1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public Q()Z
    .locals 2

    .line 919
    invoke-direct {p0}, Lo/Am;->ae()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 920
    iget-object v0, p0, Lo/Am;->b:Lo/zL;

    invoke-interface {v0}, Lo/zL;->k()Z

    move-result v0

    return v0

    :cond_0
    const-string v0, "ServiceManager"

    const-string v1, "isCurrentProfileInstantQueueEnabled:: service is not available"

    .line 922
    invoke-static {v0, v1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public R()V
    .locals 2

    .line 879
    invoke-direct {p0}, Lo/Am;->ae()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 880
    iget-object v0, p0, Lo/Am;->b:Lo/zL;

    invoke-interface {v0}, Lo/zL;->m()V

    goto :goto_0

    :cond_0
    const-string v0, "ServiceManager"

    const-string v1, "recordUserMessageImpression:: service is not available"

    .line 882
    invoke-static {v0, v1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public S()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 847
    invoke-virtual {p0, v0, v1}, Lo/Am;->c(ZLjava/lang/String;)V

    return-void
.end method

.method public T()Lo/Ag;
    .locals 2

    .line 1134
    invoke-direct {p0}, Lo/Am;->ae()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1135
    iget-object v0, p0, Lo/Am;->b:Lo/zL;

    invoke-interface {v0}, Lo/zL;->R()Lo/Ag;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "ServiceManager"

    const-string v1, "getPrepareHelper:: service is not available"

    .line 1137
    invoke-static {v0, v1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public U()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/BC;",
            ">;"
        }
    .end annotation

    .line 938
    invoke-direct {p0}, Lo/Am;->ae()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 939
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 940
    iget-object v1, p0, Lo/Am;->b:Lo/zL;

    invoke-interface {v1}, Lo/zL;->q()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 942
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/BC;

    .line 943
    invoke-interface {v2}, Lo/BC;->isKidsProfile()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 944
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    const-string v0, "ServiceManager"

    const-string v1, "getAllProfiles:: service is not available"

    .line 951
    invoke-static {v0, v1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 952
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public V()Lcom/netflix/mediaclient/service/api/diagnostics/IDiagnosis;
    .locals 1

    .line 1102
    invoke-direct {p0}, Lo/Am;->ae()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1103
    iget-object v0, p0, Lo/Am;->b:Lo/zL;

    invoke-interface {v0}, Lo/zL;->z()Lcom/netflix/mediaclient/service/api/diagnostics/IDiagnosis;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public W()Z
    .locals 2

    .line 976
    invoke-direct {p0}, Lo/Am;->ae()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 977
    iget-object v0, p0, Lo/Am;->b:Lo/zL;

    invoke-interface {v0}, Lo/zL;->s()Z

    move-result v0

    return v0

    :cond_0
    const-string v0, "ServiceManager"

    const-string v1, "isProfileSwitchInProgress:: service is not available"

    .line 979
    invoke-static {v0, v1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public X()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lo/BC;",
            ">;"
        }
    .end annotation

    .line 928
    invoke-direct {p0}, Lo/Am;->ae()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 929
    iget-object v0, p0, Lo/Am;->b:Lo/zL;

    invoke-interface {v0}, Lo/zL;->q()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "ServiceManager"

    const-string v1, "getAllProfiles:: service is not available"

    .line 931
    invoke-static {v0, v1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public Y()Z
    .locals 2

    .line 2574
    invoke-direct {p0}, Lo/Am;->ae()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2575
    iget-object v0, p0, Lo/Am;->b:Lo/zL;

    invoke-interface {v0}, Lo/zL;->B()Z

    move-result v0

    return v0

    :cond_0
    const-string v0, "ServiceManager"

    const-string v1, "shouldDisablePip:: service is not available"

    .line 2577
    invoke-static {v0, v1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public Z()Lcom/netflix/mediaclient/service/user/UserAgent;
    .locals 2

    .line 1152
    invoke-direct {p0}, Lo/Am;->ae()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1153
    iget-object v0, p0, Lo/Am;->b:Lo/zL;

    invoke-interface {v0}, Lo/zL;->O()Lcom/netflix/mediaclient/service/user/UserAgent;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "ServiceManager"

    const-string v1, "getUserAgent:: service is not available"

    .line 1155
    invoke-static {v0, v1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public a()Landroid/content/Context;
    .locals 1

    .line 248
    iget-object v0, p0, Lo/Am;->d:Landroid/content/Context;

    return-object v0
.end method

.method public a(Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;)V
    .locals 1

    .line 2536
    invoke-virtual {p0}, Lo/Am;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2537
    iget-object v0, p0, Lo/Am;->b:Lo/zL;

    invoke-interface {v0, p1}, Lo/zL;->a(Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 911
    invoke-direct {p0}, Lo/Am;->ae()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 912
    iget-object v0, p0, Lo/Am;->b:Lo/zL;

    invoke-interface {v0, p1, p2}, Lo/zL;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "ServiceManager"

    const-string p2, "recordPlanSelection:: service is not available"

    .line 914
    invoke-static {p1, p2}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public a(Lo/zU;)Z
    .locals 2

    .line 1041
    invoke-direct {p0}, Lo/Am;->ae()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1042
    invoke-direct {p0, p1}, Lo/Am;->c(Lo/zU;)I

    move-result p1

    .line 1043
    iget-object v0, p0, Lo/Am;->b:Lo/zL;

    iget v1, p0, Lo/Am;->c:I

    invoke-interface {v0, v1, p1}, Lo/zL;->b(II)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const-string p1, "ServiceManager"

    const-string v0, "fetchAvailableAvatarsList:: service is not available"

    .line 1046
    invoke-static {p1, v0}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1
.end method

.method public aa()Z
    .locals 1

    .line 2432
    iget-boolean v0, p0, Lo/Am;->j:Z

    return v0
.end method

.method public ab()Lo/ic;
    .locals 2

    .line 1161
    invoke-direct {p0}, Lo/Am;->ae()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1162
    iget-object v0, p0, Lo/Am;->b:Lo/zL;

    invoke-interface {v0}, Lo/zL;->Q()Lo/ic;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "ServiceManager"

    const-string v1, "getFakorAgent:: service is not available"

    .line 1164
    invoke-static {v0, v1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public ac()V
    .locals 1

    .line 2524
    iget-object v0, p0, Lo/Am;->b:Lo/zL;

    if-eqz v0, :cond_0

    .line 2525
    invoke-interface {v0}, Lo/zL;->F()V

    :cond_0
    return-void
.end method

.method public b(Lo/zU;)I
    .locals 0

    .line 2504
    invoke-direct {p0, p1}, Lo/Am;->c(Lo/zU;)I

    move-result p1

    return p1
.end method

.method public b()Lo/zI;
    .locals 1

    .line 2514
    invoke-direct {p0}, Lo/Am;->ae()Z

    .line 2515
    iget-object v0, p0, Lo/Am;->b:Lo/zL;

    invoke-interface {v0}, Lo/zL;->H()Lo/zI;

    move-result-object v0

    return-object v0
.end method

.method public b(Landroid/content/Intent;)V
    .locals 1

    .line 2563
    iget-object v0, p0, Lo/Am;->b:Lo/zL;

    if-nez v0, :cond_0

    const-string p1, "ServiceManager"

    const-string v0, "sendIntentToNetflixService mService is null"

    .line 2564
    invoke-static {p1, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2566
    :cond_0
    invoke-interface {v0, p1}, Lo/zL;->c(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 957
    invoke-virtual {p0, p1, v0}, Lo/Am;->e(Ljava/lang/String;Ljava/lang/Long;)V

    return-void
.end method

.method public b(Ljava/lang/String;Lo/zU;)V
    .locals 2

    .line 1079
    invoke-direct {p0}, Lo/Am;->ae()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1080
    invoke-direct {p0, p2}, Lo/Am;->c(Lo/zU;)I

    move-result p2

    .line 1081
    iget-object v0, p0, Lo/Am;->b:Lo/zL;

    iget v1, p0, Lo/Am;->c:I

    invoke-interface {v0, v1, p2, p1}, Lo/zL;->d(IILjava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "ServiceManager"

    const-string p2, "getProductChoices:: service is not available"

    .line 1083
    invoke-static {p1, p2}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public b(Ljava/lang/String;Z)V
    .locals 1

    .line 2351
    iget-object v0, p0, Lo/Am;->b:Lo/zL;

    if-eqz v0, :cond_0

    .line 2352
    invoke-static {}, Lo/zp;->e()Lo/zp;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lo/zp;->d(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/Integer;Lo/zU;)V
    .locals 8

    .line 994
    invoke-direct {p0}, Lo/Am;->ae()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 995
    invoke-direct {p0, p5}, Lo/Am;->c(Lo/zU;)I

    move-result v7

    .line 996
    iget-object v1, p0, Lo/Am;->b:Lo/zL;

    iget v6, p0, Lo/Am;->c:I

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-interface/range {v1 .. v7}, Lo/zL;->d(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/Integer;II)V

    goto :goto_0

    :cond_0
    const-string p1, "ServiceManager"

    const-string p2, "addProfile:: service is not available"

    .line 998
    invoke-static {p1, p2}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public b(Ljava/util/List;Lo/zU;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lo/zU;",
            ")V"
        }
    .end annotation

    .line 1061
    invoke-direct {p0}, Lo/Am;->ae()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1062
    invoke-direct {p0, p2}, Lo/Am;->c(Lo/zU;)I

    move-result p2

    .line 1063
    iget-object v0, p0, Lo/Am;->b:Lo/zL;

    iget v1, p0, Lo/Am;->c:I

    invoke-interface {v0, p1, v1, p2}, Lo/zL;->c(Ljava/util/List;II)V

    goto :goto_0

    :cond_0
    const-string p1, "ServiceManager"

    const-string p2, "checkVideoMaturityForUser:: service is not available"

    .line 1065
    invoke-static {p1, p2}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public b(Z)Z
    .locals 1

    .line 638
    invoke-direct {p0}, Lo/Am;->ae()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 639
    iget-object v0, p0, Lo/Am;->b:Lo/zL;

    invoke-interface {v0, p1}, Lo/zL;->d(Z)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const-string p1, "ServiceManager"

    const-string v0, "setNonMemberPlayback:: service is not available"

    .line 642
    invoke-static {p1, v0}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 887
    invoke-direct {p0}, Lo/Am;->ae()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 888
    iget-object v0, p0, Lo/Am;->b:Lo/zL;

    invoke-interface {v0, p1, p2}, Lo/zL;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "ServiceManager"

    const-string p2, "recordUserMessageImpression:: service is not available"

    .line 890
    invoke-static {p1, p2}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public c(Ljava/lang/String;Lo/zU;)V
    .locals 2

    .line 1031
    invoke-direct {p0}, Lo/Am;->ae()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1032
    invoke-direct {p0, p2}, Lo/Am;->c(Lo/zU;)I

    move-result p2

    .line 1033
    iget-object v0, p0, Lo/Am;->b:Lo/zL;

    iget v1, p0, Lo/Am;->c:I

    invoke-interface {v0, p1, v1, p2}, Lo/zL;->b(Ljava/lang/String;II)V

    goto :goto_0

    :cond_0
    const-string p1, "ServiceManager"

    const-string p2, "removeProfile:: service is not available"

    .line 1035
    invoke-static {p1, p2}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public declared-synchronized c(Lo/zT;)V
    .locals 3

    monitor-enter p0

    if-eqz p1, :cond_3

    .line 205
    :try_start_0
    iget-boolean v0, p0, Lo/Am;->j:Z

    if-nez v0, :cond_2

    const-string v0, "ServiceManager"

    const-string v1, "ServiceManager created"

    .line 209
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    iput-object p1, p0, Lo/Am;->e:Lo/zT;

    .line 212
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x19

    if-gt p1, v0, :cond_0

    .line 213
    iget-object p1, p0, Lo/Am;->d:Landroid/content/Context;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lo/Am;->d:Landroid/content/Context;

    const-class v2, Lo/bM;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 215
    :cond_0
    iget-object p1, p0, Lo/Am;->d:Landroid/content/Context;

    invoke-direct {p0}, Lo/Am;->ad()Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lo/Am;->o:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "ServiceManager"

    const-string v0, "ServiceManager could not bind to NetflixService!"

    .line 217
    invoke-static {p1, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    :cond_1
    iput-boolean v2, p0, Lo/Am;->j:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 220
    monitor-exit p0

    return-void

    .line 206
    :cond_2
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "ServiceManager can only be initialized once"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 203
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "listener is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public c(ZLjava/lang/String;)V
    .locals 1

    .line 855
    invoke-direct {p0}, Lo/Am;->ae()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 856
    iget-object v0, p0, Lo/Am;->b:Lo/zL;

    invoke-interface {v0, p1, p2}, Lo/zL;->c(ZLjava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "ServiceManager"

    const-string p2, "refreshUserMessage:: service is not available"

    .line 858
    invoke-static {p1, p2}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public c()Z
    .locals 1

    .line 2441
    iget-object v0, p0, Lo/Am;->b:Lo/zL;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lo/Am;->i:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public d(Lo/zU;Ljava/lang/String;)I
    .locals 0

    .line 2509
    invoke-direct {p0, p1, p2}, Lo/Am;->a(Lo/zU;Ljava/lang/String;)Lo/zU;

    move-result-object p1

    invoke-direct {p0, p1}, Lo/Am;->c(Lo/zU;)I

    move-result p1

    return p1
.end method

.method public declared-synchronized d()V
    .locals 2

    monitor-enter p0

    .line 229
    :try_start_0
    iget-object v0, p0, Lo/Am;->b:Lo/zL;

    if-eqz v0, :cond_2

    .line 230
    iget-object v0, p0, Lo/Am;->f:Lo/Am$ActionBar;

    if-eqz v0, :cond_0

    const-string v0, "ServiceManager"

    const-string v1, "ServiceManager unregisterCallback"

    .line 231
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    iget-object v0, p0, Lo/Am;->b:Lo/zL;

    iget-object v1, p0, Lo/Am;->f:Lo/Am$ActionBar;

    invoke-interface {v0, v1}, Lo/zL;->e(Lo/zK;)V

    :cond_0
    const-string v0, "ServiceManager"

    const-string v1, "ServiceManager unbindService"

    .line 234
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    iget-object v0, p0, Lo/Am;->d:Landroid/content/Context;

    iget-object v1, p0, Lo/Am;->o:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 237
    iget-object v0, p0, Lo/Am;->g:Lo/Am$Application;

    if-eqz v0, :cond_1

    .line 238
    iget-object v0, p0, Lo/Am;->g:Lo/Am$Application;

    invoke-virtual {v0}, Lo/Am$Application;->e()V

    :cond_1
    const/4 v0, -0x1

    .line 241
    iput v0, p0, Lo/Am;->c:I

    const/4 v0, 0x0

    .line 242
    iput-boolean v0, p0, Lo/Am;->i:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 244
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public d(Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;)V
    .locals 1

    .line 2530
    invoke-virtual {p0}, Lo/Am;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2531
    iget-object v0, p0, Lo/Am;->b:Lo/zL;

    invoke-interface {v0, p1}, Lo/zL;->d(Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;)V

    :cond_0
    return-void
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Integer;Lo/zU;)V
    .locals 9

    .line 1014
    invoke-direct {p0}, Lo/Am;->ae()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1015
    invoke-direct {p0, p6}, Lo/Am;->c(Lo/zU;)I

    move-result v8

    .line 1016
    iget-object v1, p0, Lo/Am;->b:Lo/zL;

    iget v7, p0, Lo/Am;->c:I

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-interface/range {v1 .. v8}, Lo/zL;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Integer;II)V

    goto :goto_0

    :cond_0
    const-string p1, "ServiceManager"

    const-string p2, "editProfile:: service is not available"

    .line 1018
    invoke-static {p1, p2}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lo/zU;)V
    .locals 8

    .line 1093
    invoke-direct {p0}, Lo/Am;->ae()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1094
    invoke-direct {p0, p5}, Lo/Am;->c(Lo/zU;)I

    move-result v3

    .line 1095
    iget-object v1, p0, Lo/Am;->b:Lo/zL;

    iget v2, p0, Lo/Am;->c:I

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-interface/range {v1 .. v7}, Lo/zL;->e(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "ServiceManager"

    const-string p2, "getProductChoices:: service is not available"

    .line 1097
    invoke-static {p1, p2}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public d(Lo/zU;)V
    .locals 2

    .line 1070
    invoke-direct {p0}, Lo/Am;->ae()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1071
    invoke-direct {p0, p1}, Lo/Am;->c(Lo/zU;)I

    move-result p1

    .line 1072
    iget-object v0, p0, Lo/Am;->b:Lo/zL;

    iget v1, p0, Lo/Am;->c:I

    invoke-interface {v0, v1, p1}, Lo/zL;->c(II)V

    goto :goto_0

    :cond_0
    const-string p1, "ServiceManager"

    const-string v0, "getProductChoices:: service is not available"

    .line 1074
    invoke-static {p1, v0}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public d(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 851
    invoke-virtual {p0, p1, v0}, Lo/Am;->c(ZLjava/lang/String;)V

    return-void
.end method

.method public e()I
    .locals 1

    .line 2520
    iget v0, p0, Lo/Am;->c:I

    return v0
.end method

.method public e(ILjava/lang/String;Ljava/lang/String;Lo/zU;)V
    .locals 7

    .line 1143
    invoke-direct {p0}, Lo/Am;->ae()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1144
    invoke-direct {p0, p4}, Lo/Am;->c(Lo/zU;)I

    move-result v6

    .line 1145
    iget-object v1, p0, Lo/Am;->b:Lo/zL;

    iget v5, p0, Lo/Am;->c:I

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-interface/range {v1 .. v6}, Lo/zL;->c(ILjava/lang/String;Ljava/lang/String;II)V

    goto :goto_0

    :cond_0
    const-string p1, "ServiceManager"

    const-string p2, "updatePlan:: service is not available"

    .line 1147
    invoke-static {p1, p2}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 1

    .line 903
    invoke-direct {p0}, Lo/Am;->ae()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 904
    iget-object v0, p0, Lo/Am;->b:Lo/zL;

    invoke-interface {v0, p1}, Lo/zL;->c(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "ServiceManager"

    const-string v0, "recordUmsAlertFeedback:: service is not available"

    .line 906
    invoke-static {p1, v0}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/Long;)V
    .locals 1

    .line 961
    invoke-direct {p0}, Lo/Am;->ae()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 962
    iget-object v0, p0, Lo/Am;->b:Lo/zL;

    invoke-interface {v0, p1, p2}, Lo/zL;->b(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_0

    :cond_0
    const-string p1, "ServiceManager"

    const-string p2, "selectProfile:: service is not available"

    .line 964
    invoke-static {p1, p2}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public e(Ljava/lang/String;Lo/zU;)V
    .locals 2

    .line 1052
    invoke-direct {p0}, Lo/Am;->ae()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1053
    invoke-direct {p0, p2}, Lo/Am;->c(Lo/zU;)I

    move-result p2

    .line 1054
    iget-object v0, p0, Lo/Am;->b:Lo/zL;

    iget v1, p0, Lo/Am;->c:I

    invoke-interface {v0, p1, v1, p2}, Lo/zL;->c(Ljava/lang/String;II)V

    goto :goto_0

    :cond_0
    const-string p1, "ServiceManager"

    const-string p2, "resolveUmsSimpleUrlPattern:: service is not available"

    .line 1056
    invoke-static {p1, p2}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public e(Lo/zU;)V
    .locals 2

    .line 621
    invoke-direct {p0}, Lo/Am;->ae()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 622
    invoke-direct {p0, p1}, Lo/Am;->c(Lo/zU;)I

    move-result p1

    .line 623
    iget-object v0, p0, Lo/Am;->b:Lo/zL;

    iget v1, p0, Lo/Am;->c:I

    invoke-interface {v0, v1, p1}, Lo/zL;->e(II)V

    goto :goto_0

    :cond_0
    const-string p1, "ServiceManager"

    const-string v0, "fetchSurvey:: service is not available"

    .line 625
    invoke-static {p1, v0}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public declared-synchronized e(Ljava/lang/String;Lcom/netflix/mediaclient/api/res/AssetType;Lo/zU;)Z
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    if-nez p1, :cond_0

    :try_start_0
    const-string p1, "ServiceManager"

    const-string p2, "fetchAndCacheResource:: resourceUrl is null"

    .line 591
    invoke-static {p1, p2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 592
    monitor-exit p0

    return v0

    .line 594
    :cond_0
    :try_start_1
    invoke-direct {p0, p3}, Lo/Am;->c(Lo/zU;)I

    move-result p3

    .line 598
    invoke-direct {p0}, Lo/Am;->ae()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 599
    iget-object v0, p0, Lo/Am;->b:Lo/zL;

    iget v1, p0, Lo/Am;->c:I

    invoke-interface {v0, p1, p2, v1, p3}, Lo/zL;->a(Ljava/lang/String;Lcom/netflix/mediaclient/api/res/AssetType;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x1

    .line 600
    monitor-exit p0

    return p1

    :cond_1
    :try_start_2
    const-string p1, "ServiceManager"

    const-string p2, "fetchAndCacheResource:: service is not available"

    .line 602
    invoke-static {p1, p2}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 603
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public f()Lo/cz;
    .locals 2

    .line 332
    invoke-virtual {p0}, Lo/Am;->i()Lo/cz;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 334
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "configuration is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public g()Lcom/netflix/mediaclient/util/gfx/ImageLoader;
    .locals 2

    .line 265
    invoke-direct {p0}, Lo/Am;->ae()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lo/Am;->a:Lo/zL;

    invoke-interface {v0}, Lo/zL;->a()Lcom/netflix/mediaclient/util/gfx/ImageLoader;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "ServiceManager"

    const-string v1, "getImageLoader:: Netflix service is not available or not ready, return null."

    .line 269
    invoke-static {v0, v1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public h()Lcom/netflix/mediaclient/servicemgr/PrepareManager;
    .locals 1

    .line 300
    iget-object v0, p0, Lo/Am;->b:Lo/zL;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lo/zL;->P()Lcom/netflix/mediaclient/servicemgr/PrepareManager;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public i()Lo/cz;
    .locals 2

    .line 314
    iget-object v0, p0, Lo/Am;->b:Lo/zL;

    if-eqz v0, :cond_0

    .line 316
    invoke-interface {v0}, Lo/zL;->G()Lo/cz;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "ServiceManager"

    const-string v1, "getConfiguration: service is not available"

    .line 318
    invoke-static {v0, v1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public j()Lo/Ah;
    .locals 2

    .line 290
    iget-object v0, p0, Lo/Am;->b:Lo/zL;

    if-eqz v0, :cond_0

    .line 292
    invoke-interface {v0}, Lo/zL;->S()Lo/Ah;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "ServiceManager"

    const-string v1, "getPlaybackSessionManager service is not available"

    .line 294
    invoke-static {v0, v1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public k()Lo/ds;
    .locals 2

    .line 420
    iget-object v0, p0, Lo/Am;->b:Lo/zL;

    if-eqz v0, :cond_0

    .line 422
    invoke-interface {v0}, Lo/zL;->C()Lo/ds;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "ServiceManager"

    const-string v1, "getESNProvider:: service is not available"

    .line 424
    invoke-static {v0, v1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public l()Lo/zN;
    .locals 2

    .line 361
    iget-object v0, p0, Lo/Am;->b:Lo/zL;

    if-eqz v0, :cond_0

    .line 363
    invoke-interface {v0}, Lo/zL;->D()Lo/zN;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "ServiceManager"

    const-string v1, "getMdx:: service is not available"

    .line 366
    invoke-static {v0, v1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public m()Lo/hF;
    .locals 2

    .line 400
    iget-object v0, p0, Lo/Am;->b:Lo/zL;

    if-eqz v0, :cond_0

    .line 402
    invoke-interface {v0}, Lo/zL;->N()Lo/hF;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "ServiceManager"

    const-string v1, "getVoipAgent: voip agent is not available"

    .line 404
    invoke-static {v0, v1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public n()Lo/cc;
    .locals 2

    .line 340
    iget-object v0, p0, Lo/Am;->b:Lo/zL;

    if-eqz v0, :cond_0

    .line 342
    invoke-interface {v0}, Lo/zL;->I()Lo/cc;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "ServiceManager"

    const-string v1, "getAUIAgent: service is not available"

    .line 345
    invoke-static {v0, v1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public o()Lcom/netflix/mediaclient/servicemgr/IVoip;
    .locals 2

    .line 381
    iget-object v0, p0, Lo/Am;->b:Lo/zL;

    if-eqz v0, :cond_0

    .line 383
    invoke-interface {v0}, Lo/zL;->K()Lcom/netflix/mediaclient/servicemgr/IVoip;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "ServiceManager"

    const-string v1, "getVoip:: voip engine is not available"

    .line 385
    invoke-static {v0, v1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public p()Lcom/netflix/mediaclient/servicemgr/IClientLogging;
    .locals 2

    .line 453
    iget-object v0, p0, Lo/Am;->b:Lo/zL;

    if-eqz v0, :cond_0

    .line 455
    invoke-interface {v0}, Lo/zL;->A()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "ServiceManager"

    const-string v1, "getClientLogging:: service is not available"

    .line 457
    invoke-static {v0, v1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public q()Lo/nS;
    .locals 4

    .line 491
    iget-object v0, p0, Lo/Am;->b:Lo/zL;

    const/4 v1, 0x0

    const-string v2, "ServiceManager"

    if-nez v0, :cond_0

    const-string v0, "getOfflineAgent:: service is not available"

    .line 493
    invoke-static {v2, v0}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 497
    :cond_0
    invoke-interface {v0}, Lo/zL;->L()Lo/nS;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "getOfflineAgent:: is null"

    .line 499
    invoke-static {v2, v0}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 503
    :cond_1
    invoke-interface {v0}, Lo/nS;->f()Z

    move-result v3

    if-nez v3, :cond_2

    const-string v0, "getOfflineAgent:: not available "

    .line 504
    invoke-static {v2, v0}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_2
    return-object v0
.end method

.method public r()Z
    .locals 1

    .line 480
    invoke-virtual {p0}, Lo/Am;->q()Lo/nS;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public s()Lo/zF;
    .locals 2

    .line 466
    iget-object v0, p0, Lo/Am;->b:Lo/zL;

    if-eqz v0, :cond_0

    .line 468
    invoke-interface {v0}, Lo/zL;->J()Lo/zF;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "ServiceManager"

    const-string v1, "getErrorHandler:: service is not available"

    .line 470
    invoke-static {v0, v1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public t()Lcom/netflix/mediaclient/servicemgr/IClientLogging;
    .locals 1

    .line 445
    invoke-virtual {p0}, Lo/Am;->p()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    return-object v0
.end method

.method public u()Lo/nP;
    .locals 4

    .line 516
    iget-object v0, p0, Lo/Am;->b:Lo/zL;

    const/4 v1, 0x0

    const-string v2, "ServiceManager"

    if-nez v0, :cond_0

    const-string v0, "getSmartDownloadController:: service is not available"

    .line 518
    invoke-static {v2, v0}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 522
    :cond_0
    invoke-interface {v0}, Lo/zL;->L()Lo/nS;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "getOfflineAgent:: is null"

    .line 524
    invoke-static {v2, v0}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 528
    :cond_1
    invoke-interface {v0}, Lo/nS;->f()Z

    move-result v3

    if-nez v3, :cond_2

    const-string v0, "getOfflineAgent:: not available "

    .line 529
    invoke-static {v2, v0}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 533
    :cond_2
    invoke-interface {v0}, Lo/nS;->t()Lo/nP;

    move-result-object v0

    return-object v0
.end method

.method public v()V
    .locals 2

    .line 630
    invoke-direct {p0}, Lo/Am;->ae()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 631
    iget-object v0, p0, Lo/Am;->b:Lo/zL;

    invoke-interface {v0}, Lo/zL;->r()V

    goto :goto_0

    :cond_0
    const-string v0, "ServiceManager"

    const-string v1, "markSurveysAsRead:: service is not available"

    .line 633
    invoke-static {v0, v1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public w()Lo/zG;
    .locals 1

    .line 546
    iget-object v0, p0, Lo/Am;->h:Lo/zG;

    return-object v0
.end method

.method public x()Z
    .locals 2

    .line 648
    invoke-direct {p0}, Lo/Am;->ae()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 649
    iget-object v0, p0, Lo/Am;->b:Lo/zL;

    invoke-interface {v0}, Lo/zL;->d()Z

    move-result v0

    return v0

    :cond_0
    const-string v0, "ServiceManager"

    const-string v1, "isNonMemberPlayback:: service is not available"

    .line 651
    invoke-static {v0, v1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public y()V
    .locals 2

    .line 666
    invoke-direct {p0}, Lo/Am;->ae()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 667
    iget-object v0, p0, Lo/Am;->b:Lo/zL;

    invoke-interface {v0}, Lo/zL;->p()V

    goto :goto_0

    :cond_0
    const-string v0, "ServiceManager"

    const-string v1, "refreshProfileSwitchingStatus:: service is not available"

    .line 669
    invoke-static {v0, v1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public z()Z
    .locals 2

    .line 720
    invoke-direct {p0}, Lo/Am;->ae()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 721
    iget-object v0, p0, Lo/Am;->b:Lo/zL;

    invoke-interface {v0}, Lo/zL;->y()Z

    move-result v0

    return v0

    :cond_0
    const-string v0, "ServiceManager"

    const-string v1, "isHdr10Supported:: service is not available"

    .line 723
    invoke-static {v0, v1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method
