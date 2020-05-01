.class public final Lo/Dd;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/Dd$Activity;,
        Lo/Dd$Application;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lo/Dd$Activity;

.field private c:Landroid/widget/ListView;

.field private d:Lo/Dd$Application;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

.field private g:Ljava/lang/Long;

.field private i:Lcom/netflix/mediaclient/servicemgr/IPlayer$LoaderManager;

.field private final j:Lo/UpdateEngine;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/IPlayer$LoaderManager;Lo/UpdateEngine;)V
    .locals 6

    const-string v0, "activity"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "netflixVideoView"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventBusFactory"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/Dd;->f:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iput-object p2, p0, Lo/Dd;->i:Lcom/netflix/mediaclient/servicemgr/IPlayer$LoaderManager;

    iput-object p3, p0, Lo/Dd;->j:Lo/UpdateEngine;

    .line 37
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lo/Dd;->e:Ljava/util/List;

    const/4 p1, 0x5

    new-array p1, p1, [Ljava/lang/Float;

    const/high16 p2, 0x3f000000    # 0.5f

    .line 39
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    const/4 p3, 0x0

    aput-object p2, p1, p3

    const/high16 p2, 0x3f400000    # 0.75f

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    const/4 p3, 0x1

    aput-object p2, p1, p3

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    const/4 v0, 0x2

    aput-object p2, p1, v0

    const/high16 p2, 0x3fa00000    # 1.25f

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    const/4 v0, 0x3

    aput-object p2, p1, v0

    const/high16 p2, 0x3fc00000    # 1.5f

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    const/4 v0, 0x4

    aput-object p2, p1, v0

    invoke-static {p1}, Lo/akz;->e([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lo/Dd;->a:Ljava/util/List;

    .line 41
    new-instance p1, Lo/Dd$Activity;

    .line 42
    iget-object p2, p0, Lo/Dd;->f:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-object v2, p2

    check-cast v2, Landroid/app/Activity;

    .line 43
    iget-object v3, p0, Lo/Dd;->i:Lcom/netflix/mediaclient/servicemgr/IPlayer$LoaderManager;

    .line 44
    iget-object v4, p0, Lo/Dd;->e:Ljava/util/List;

    .line 45
    iget-object v5, p0, Lo/Dd;->a:Ljava/util/List;

    move-object v0, p1

    move-object v1, p0

    .line 41
    invoke-direct/range {v0 .. v5}, Lo/Dd$Activity;-><init>(Lo/Dd;Landroid/app/Activity;Lcom/netflix/mediaclient/servicemgr/IPlayer$LoaderManager;Ljava/util/List;Ljava/util/List;)V

    iput-object p1, p0, Lo/Dd;->b:Lo/Dd$Activity;

    .line 50
    iget-object p1, p0, Lo/Dd;->e:Ljava/util/List;

    iget-object p2, p0, Lo/Dd;->f:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->jO:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "activity.resources.getSt\u2026ring.label_speed_option1)"

    invoke-static {p2, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    iget-object p1, p0, Lo/Dd;->e:Ljava/util/List;

    iget-object p2, p0, Lo/Dd;->f:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->jS:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "activity.resources.getSt\u2026ring.label_speed_option2)"

    invoke-static {p2, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    iget-object p1, p0, Lo/Dd;->e:Ljava/util/List;

    iget-object p2, p0, Lo/Dd;->f:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->jU:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "activity.resources.getSt\u2026ring.label_speed_option3)"

    invoke-static {p2, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    iget-object p1, p0, Lo/Dd;->e:Ljava/util/List;

    iget-object p2, p0, Lo/Dd;->f:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->jW:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "activity.resources.getSt\u2026ring.label_speed_option4)"

    invoke-static {p2, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    iget-object p1, p0, Lo/Dd;->e:Ljava/util/List;

    iget-object p2, p0, Lo/Dd;->f:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->jT:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "activity.resources.getSt\u2026ring.label_speed_option5)"

    invoke-static {p2, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    iget-object p1, p0, Lo/Dd;->f:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    check-cast p1, Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcom/netflix/mediaclient/ui/R$Dialog;->fK:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 57
    sget p2, Lcom/netflix/mediaclient/ui/R$Fragment;->sa:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ListView;

    iput-object p2, p0, Lo/Dd;->c:Landroid/widget/ListView;

    .line 58
    iget-object p2, p0, Lo/Dd;->c:Landroid/widget/ListView;

    if-eqz p2, :cond_0

    invoke-virtual {p2, p3}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 59
    :cond_0
    iget-object p2, p0, Lo/Dd;->c:Landroid/widget/ListView;

    if-eqz p2, :cond_1

    iget-object v0, p0, Lo/Dd;->b:Lo/Dd$Activity;

    check-cast v0, Landroid/widget/ListAdapter;

    invoke-virtual {p2, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 60
    :cond_1
    new-instance p2, Lo/Dd$Application;

    iget-object v0, p0, Lo/Dd;->f:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    check-cast v0, Landroid/content/Context;

    invoke-direct {p2, p0, v0}, Lo/Dd$Application;-><init>(Lo/Dd;Landroid/content/Context;)V

    iput-object p2, p0, Lo/Dd;->d:Lo/Dd$Application;

    .line 62
    iget-object p2, p0, Lo/Dd;->c:Landroid/widget/ListView;

    if-eqz p2, :cond_2

    new-instance v0, Lo/Dd$1;

    invoke-direct {v0, p0}, Lo/Dd$1;-><init>(Lo/Dd;)V

    check-cast v0, Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {p2, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 83
    :cond_2
    iget-object p2, p0, Lo/Dd;->d:Lo/Dd$Application;

    invoke-virtual {p2, p3}, Lo/Dd$Application;->setCancelable(Z)V

    .line 84
    iget-object p2, p0, Lo/Dd;->d:Lo/Dd$Application;

    const/4 p3, -0x2

    .line 85
    iget-object v0, p0, Lo/Dd;->f:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->ez:I

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 86
    new-instance v1, Lo/Dd$5;

    invoke-direct {v1, p0}, Lo/Dd$5;-><init>(Lo/Dd;)V

    check-cast v1, Landroid/content/DialogInterface$OnClickListener;

    .line 84
    invoke-virtual {p2, p3, v0, v1}, Lo/Dd$Application;->a(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 92
    iget-object p2, p0, Lo/Dd;->d:Lo/Dd$Application;

    new-instance p3, Lo/Dd$2;

    invoke-direct {p3, p0}, Lo/Dd$2;-><init>(Lo/Dd;)V

    check-cast p3, Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {p2, p3}, Lo/Dd$Application;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 97
    iget-object p2, p0, Lo/Dd;->d:Lo/Dd$Application;

    new-instance p3, Lo/Dd$3;

    invoke-direct {p3, p0}, Lo/Dd$3;-><init>(Lo/Dd;)V

    check-cast p3, Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {p2, p3}, Lo/Dd$Application;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 102
    iget-object p2, p0, Lo/Dd;->d:Lo/Dd$Application;

    invoke-virtual {p2, p1}, Lo/Dd$Application;->e(Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic a(Lo/Dd;)Lcom/netflix/mediaclient/servicemgr/IPlayer$LoaderManager;
    .locals 0

    .line 31
    iget-object p0, p0, Lo/Dd;->i:Lcom/netflix/mediaclient/servicemgr/IPlayer$LoaderManager;

    return-object p0
.end method

.method public static final synthetic b(Lo/Dd;)Ljava/util/List;
    .locals 0

    .line 31
    iget-object p0, p0, Lo/Dd;->a:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic c(Lo/Dd;)Ljava/lang/Long;
    .locals 0

    .line 31
    iget-object p0, p0, Lo/Dd;->g:Ljava/lang/Long;

    return-object p0
.end method

.method public static final synthetic d(Lo/Dd;)Lo/UpdateEngine;
    .locals 0

    .line 31
    iget-object p0, p0, Lo/Dd;->j:Lo/UpdateEngine;

    return-object p0
.end method

.method public static final synthetic e(Lo/Dd;)Lo/Dd$Activity;
    .locals 0

    .line 31
    iget-object p0, p0, Lo/Dd;->b:Lo/Dd$Activity;

    return-object p0
.end method

.method public static final synthetic f(Lo/Dd;)Lo/Dd$Application;
    .locals 0

    .line 31
    iget-object p0, p0, Lo/Dd;->d:Lo/Dd$Application;

    return-object p0
.end method


# virtual methods
.method public final b(Lcom/netflix/mediaclient/servicemgr/IPlayer$LoaderManager;)V
    .locals 3

    const-string v0, "videoView"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    iput-object p1, p0, Lo/Dd;->i:Lcom/netflix/mediaclient/servicemgr/IPlayer$LoaderManager;

    .line 110
    iget-object v0, p0, Lo/Dd;->b:Lo/Dd$Activity;

    invoke-virtual {v0, p1}, Lo/Dd$Activity;->a(Lcom/netflix/mediaclient/servicemgr/IPlayer$LoaderManager;)V

    .line 111
    iget-object p1, p0, Lo/Dd;->f:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iget-object v0, p0, Lo/Dd;->d:Lo/Dd$Application;

    check-cast v0, Landroid/app/Dialog;

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->displayDialog(Landroid/app/Dialog;)V

    .line 112
    sget-object p1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    .line 113
    new-instance v0, Lcom/netflix/cl/model/event/session/Focus;

    .line 114
    sget-object v1, Lcom/netflix/cl/model/AppView;->playbackSpeedSelector:Lcom/netflix/cl/model/AppView;

    const/4 v2, 0x0

    .line 113
    invoke-direct {v0, v1, v2}, Lcom/netflix/cl/model/event/session/Focus;-><init>(Lcom/netflix/cl/model/AppView;Lcom/netflix/cl/model/TrackingInfo;)V

    check-cast v0, Lcom/netflix/cl/model/event/session/Session;

    .line 112
    invoke-virtual {p1, v0}, Lcom/netflix/cl/Logger;->startSession(Lcom/netflix/cl/model/event/session/Session;)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lo/Dd;->g:Ljava/lang/Long;

    return-void
.end method
