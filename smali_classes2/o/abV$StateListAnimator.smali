.class public final Lo/abV$StateListAnimator;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/abV;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StateListAnimator"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lo/amc;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lo/abV$StateListAnimator;-><init>()V

    return-void
.end method

.method public static synthetic b(Lo/abV$StateListAnimator;Landroid/content/Context;Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;Lcom/netflix/mediaclient/service/configuration/ImageResolutionClass;ILjava/lang/Object;)Lo/abV;
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 38
    check-cast p3, Lcom/netflix/mediaclient/service/configuration/ImageResolutionClass;

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lo/abV$StateListAnimator;->c(Landroid/content/Context;Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;Lcom/netflix/mediaclient/service/configuration/ImageResolutionClass;)Lo/abV;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final c(Landroid/content/Context;Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;Lcom/netflix/mediaclient/service/configuration/ImageResolutionClass;)Lo/abV;
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "umaAlert"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    new-instance v0, Lo/abV;

    invoke-direct {v0}, Lo/abV;-><init>()V

    .line 40
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v1

    const-string v2, "Uma Modal fragment created"

    invoke-interface {v1, v2}, Lo/SpinnerAdapter;->e(Ljava/lang/String;)V

    .line 41
    invoke-static {v0, p2}, Lo/abV;->c(Lo/abV;Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;)V

    .line 42
    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->getTemplateType()Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert$Template;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert$Template;->WHITE_MODAL:Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert$Template;

    if-ne v1, v2, :cond_0

    .line 43
    new-instance p3, Lo/acg;

    invoke-direct {p3, p1}, Lo/acg;-><init>(Landroid/content/Context;)V

    check-cast p3, Lo/acc;

    invoke-virtual {v0, p3}, Lo/abV;->c(Lo/acc;)V

    goto :goto_0

    .line 44
    :cond_0
    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->getTemplateType()Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert$Template;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert$Template;->THEMED_PROMO:Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert$Template;

    if-ne v1, v2, :cond_1

    .line 45
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const/4 v2, 0x1

    const-string v3, "com.netflix.mediaclient.ui.ums.DISABLE_DEFAULT_BACKGROUND"

    .line 46
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 47
    invoke-virtual {v0, v1}, Lo/abV;->setArguments(Landroid/os/Bundle;)V

    .line 48
    sget-object v1, Lo/abU;->a:Lo/abU$StateListAnimator;

    invoke-virtual {v1, p1, p3}, Lo/abU$StateListAnimator;->d(Landroid/content/Context;Lcom/netflix/mediaclient/service/configuration/ImageResolutionClass;)Lo/abU;

    move-result-object p1

    check-cast p1, Lo/acc;

    invoke-virtual {v0, p1}, Lo/abV;->c(Lo/acc;)V

    goto :goto_0

    .line 50
    :cond_1
    new-instance p3, Lo/acc;

    const/4 v1, 0x0

    invoke-direct {p3, p1, v1}, Lo/acc;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {v0, p3}, Lo/abV;->c(Lo/acc;)V

    .line 52
    :goto_0
    invoke-virtual {v0}, Lo/abV;->b()Lo/acc;

    move-result-object p1

    if-eqz p1, :cond_2

    move-object p3, v0

    check-cast p3, Lo/WebChromeClient;

    invoke-virtual {p1, p2, p3}, Lo/acc;->c(Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;Lo/WebChromeClient;)V

    :cond_2
    return-object v0
.end method
