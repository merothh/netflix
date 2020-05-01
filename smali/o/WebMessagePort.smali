.class public abstract Lo/WebMessagePort;
.super Lcom/netflix/mediaclient/android/fragment/NetflixFrag;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/WebMessagePort$Activity;
    }
.end annotation


# static fields
.field public static final b:Lo/WebMessagePort$Activity;


# instance fields
.field private f:Ljava/util/HashMap;

.field private final i:Lo/aka;

.field private final j:Lo/aka;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/WebMessagePort$Activity;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/WebMessagePort$Activity;-><init>(Lo/amc;)V

    sput-object v0, Lo/WebMessagePort;->b:Lo/WebMessagePort$Activity;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 18
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;-><init>()V

    .line 23
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->hv:I

    .line 24
    sget-object v1, Lcom/netflix/mediaclient/android/fragment/NetflixEpoxyFrag$headerViewBinder$2;->b:Lcom/netflix/mediaclient/android/fragment/NetflixEpoxyFrag$headerViewBinder$2;

    check-cast v1, Lo/alA;

    .line 26
    new-instance v2, Lcom/netflix/mediaclient/android/fragment/NetflixEpoxyFrag$headerViewBinder$3;

    invoke-direct {v2, p0}, Lcom/netflix/mediaclient/android/fragment/NetflixEpoxyFrag$headerViewBinder$3;-><init>(Lo/WebMessagePort;)V

    check-cast v2, Lo/alA;

    .line 22
    invoke-static {p0, v0, v1, v2}, Lo/IntFunction;->d(Landroidx/fragment/app/Fragment;ILo/alA;Lo/alA;)Lo/aka;

    move-result-object v0

    iput-object v0, p0, Lo/WebMessagePort;->j:Lo/aka;

    .line 32
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->ha:I

    .line 33
    sget-object v1, Lcom/netflix/mediaclient/android/fragment/NetflixEpoxyFrag$footerViewBinder$2;->e:Lcom/netflix/mediaclient/android/fragment/NetflixEpoxyFrag$footerViewBinder$2;

    check-cast v1, Lo/alA;

    .line 35
    new-instance v2, Lcom/netflix/mediaclient/android/fragment/NetflixEpoxyFrag$footerViewBinder$3;

    invoke-direct {v2, p0}, Lcom/netflix/mediaclient/android/fragment/NetflixEpoxyFrag$footerViewBinder$3;-><init>(Lo/WebMessagePort;)V

    check-cast v2, Lo/alA;

    .line 31
    invoke-static {p0, v0, v1, v2}, Lo/IntFunction;->d(Landroidx/fragment/app/Fragment;ILo/alA;Lo/alA;)Lo/aka;

    move-result-object v0

    iput-object v0, p0, Lo/WebMessagePort;->i:Lo/aka;

    return-void
.end method

.method private final v()Lcom/airbnb/epoxy/LifecycleAwareEpoxyViewBinder;
    .locals 1

    iget-object v0, p0, Lo/WebMessagePort;->i:Lo/aka;

    invoke-interface {v0}, Lo/aka;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/epoxy/LifecycleAwareEpoxyViewBinder;

    return-object v0
.end method

.method private final y()Lcom/airbnb/epoxy/LifecycleAwareEpoxyViewBinder;
    .locals 1

    iget-object v0, p0, Lo/WebMessagePort;->j:Lo/aka;

    invoke-interface {v0}, Lo/aka;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/epoxy/LifecycleAwareEpoxyViewBinder;

    return-object v0
.end method


# virtual methods
.method public b(Lo/OfPrimitive;)V
    .locals 1

    const-string v0, "$this$buildFooter"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method protected final c()V
    .locals 1

    .line 46
    invoke-direct {p0}, Lo/WebMessagePort;->v()Lcom/airbnb/epoxy/LifecycleAwareEpoxyViewBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/airbnb/epoxy/LifecycleAwareEpoxyViewBinder;->b()V

    :cond_0
    return-void
.end method

.method public c(Lo/OfPrimitive;)V
    .locals 1

    const-string v0, "$this$buildHeader"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method protected final d()V
    .locals 1

    .line 41
    invoke-direct {p0}, Lo/WebMessagePort;->v()Lcom/airbnb/epoxy/LifecycleAwareEpoxyViewBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/airbnb/epoxy/LifecycleAwareEpoxyViewBinder;->b()V

    .line 42
    :cond_0
    invoke-direct {p0}, Lo/WebMessagePort;->y()Lcom/airbnb/epoxy/LifecycleAwareEpoxyViewBinder;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/airbnb/epoxy/LifecycleAwareEpoxyViewBinder;->b()V

    :cond_1
    return-void
.end method

.method public g()V
    .locals 1

    iget-object v0, p0, Lo/WebMessagePort;->f:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->onDestroyView()V

    invoke-virtual {p0}, Lo/WebMessagePort;->g()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    invoke-super {p0, p1, p2}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 51
    invoke-virtual {p0}, Lo/WebMessagePort;->d()V

    return-void
.end method
