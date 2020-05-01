.class Lo/ko$3;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ko;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic e:Lo/ko;


# direct methods
.method constructor <init>(Lo/ko;)V
    .locals 0

    .line 817
    iput-object p1, p0, Lo/ko$3;->e:Lo/ko;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Intent;)V
    .locals 3

    .line 905
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "postplayState"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 907
    invoke-static {v0}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 908
    new-instance v1, Lo/zV;

    invoke-direct {v1, v0}, Lo/zV;-><init>(Ljava/lang/String;)V

    .line 910
    invoke-virtual {v1}, Lo/zV;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 911
    invoke-direct {p0, p1, v0}, Lo/ko$3;->b(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0

    .line 913
    :cond_0
    invoke-virtual {v1}, Lo/zV;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 914
    invoke-direct {p0, p1, v0}, Lo/ko$3;->d(Landroid/content/Intent;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private b()V
    .locals 4

    const-string v0, "MdxAgent"

    const-string v1, "MdxAgent: receive MDX_ACTION_UPDATE_PLAYBACKSTART"

    .line 962
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 963
    iget-object v0, p0, Lo/ko$3;->e:Lo/ko;

    invoke-static {v0}, Lo/ko;->n(Lo/ko;)Lo/kz;

    move-result-object v0

    invoke-virtual {v0}, Lo/kz;->a()V

    .line 964
    iget-object v0, p0, Lo/ko$3;->e:Lo/ko;

    invoke-static {v0}, Lo/ko;->o(Lo/ko;)V

    .line 966
    iget-object v0, p0, Lo/ko$3;->e:Lo/ko;

    invoke-static {v0}, Lo/ko;->a(Lo/ko;)V

    .line 969
    iget-object v0, p0, Lo/ko$3;->e:Lo/ko;

    invoke-static {v0}, Lo/ko;->j(Lo/ko;)Lo/kA;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 971
    iget-object v0, p0, Lo/ko$3;->e:Lo/ko;

    invoke-static {v0}, Lo/ko;->j(Lo/ko;)Lo/kA;

    move-result-object v0

    invoke-virtual {v0}, Lo/kA;->c()V

    .line 975
    :cond_0
    iget-object v0, p0, Lo/ko$3;->e:Lo/ko;

    invoke-static {v0}, Lo/ko;->i(Lo/ko;)Lo/la;

    move-result-object v0

    iget-object v1, p0, Lo/ko$3;->e:Lo/ko;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lo/ko;->b(Lo/ko;Z)Landroid/util/Pair;

    move-result-object v1

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Landroid/app/Notification;

    iget-object v3, p0, Lo/ko$3;->e:Lo/ko;

    invoke-static {v3}, Lo/ko;->k(Lo/ko;)Lo/Ac;

    move-result-object v3

    invoke-interface {v0, v1, v3, v2}, Lo/la;->a(Landroid/app/Notification;Lo/Ac;Z)V

    .line 976
    iget-object v0, p0, Lo/ko$3;->e:Lo/ko;

    invoke-static {v0}, Lo/ko;->i(Lo/ko;)Lo/la;

    move-result-object v0

    const-string v1, ""

    invoke-interface {v0, v2, v2, v2, v1}, Lo/la;->c(ZZZLjava/lang/String;)V

    .line 977
    iget-object v0, p0, Lo/ko$3;->e:Lo/ko;

    invoke-static {v0}, Lo/ko;->i(Lo/ko;)Lo/la;

    move-result-object v0

    iget-object v1, p0, Lo/ko$3;->e:Lo/ko;

    invoke-static {v1}, Lo/ko;->m(Lo/ko;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-interface {v0, v1}, Lo/la;->d(Landroid/graphics/Bitmap;)V

    .line 979
    iget-object v0, p0, Lo/ko$3;->e:Lo/ko;

    invoke-static {v0}, Lo/ko;->s(Lo/ko;)Lo/kF;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 980
    iget-object v0, p0, Lo/ko$3;->e:Lo/ko;

    invoke-static {v0}, Lo/ko;->s(Lo/ko;)Lo/kF;

    move-result-object v0

    invoke-virtual {v0}, Lo/kF;->e()V

    :cond_1
    return-void
.end method

.method private b(Landroid/content/Intent;)V
    .locals 1

    .line 985
    iget-object v0, p0, Lo/ko$3;->e:Lo/ko;

    invoke-static {v0, p1}, Lo/ko;->e(Lo/ko;Landroid/content/Intent;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "MdxAgent"

    const-string v0, "MdxAgent: receive MDX_ACTION_UPDATE_PLAYBACKEND"

    .line 986
    invoke-static {p1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 987
    iget-object p1, p0, Lo/ko$3;->e:Lo/ko;

    invoke-static {p1}, Lo/ko;->n(Lo/ko;)Lo/kz;

    move-result-object p1

    invoke-virtual {p1}, Lo/kz;->e()V

    .line 989
    iget-object p1, p0, Lo/ko$3;->e:Lo/ko;

    invoke-static {p1}, Lo/ko;->h(Lo/ko;)V

    .line 990
    iget-object p1, p0, Lo/ko$3;->e:Lo/ko;

    invoke-virtual {p1}, Lo/ko;->q()V

    .line 991
    iget-object p1, p0, Lo/ko$3;->e:Lo/ko;

    invoke-static {p1}, Lo/ko;->t(Lo/ko;)V

    .line 993
    iget-object p1, p0, Lo/ko$3;->e:Lo/ko;

    invoke-static {p1}, Lo/ko;->s(Lo/ko;)Lo/kF;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 994
    iget-object p1, p0, Lo/ko$3;->e:Lo/ko;

    invoke-static {p1}, Lo/ko;->s(Lo/ko;)Lo/kF;

    move-result-object p1

    invoke-virtual {p1}, Lo/kF;->b()V

    .line 997
    :cond_0
    iget-object p1, p0, Lo/ko$3;->e:Lo/ko;

    invoke-static {p1}, Lo/ko;->q(Lo/ko;)Lo/kG;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 998
    iget-object p1, p0, Lo/ko$3;->e:Lo/ko;

    invoke-static {p1}, Lo/ko;->q(Lo/ko;)Lo/kG;

    move-result-object p1

    invoke-virtual {p1}, Lo/kG;->e()V

    :cond_1
    return-void
.end method

.method private b(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 3

    .line 920
    iget-object p1, p0, Lo/ko$3;->e:Lo/ko;

    invoke-static {p1}, Lo/ko;->a(Lo/ko;)V

    .line 921
    invoke-direct {p0, p2}, Lo/ko$3;->d(Ljava/lang/String;)V

    .line 924
    iget-object p1, p0, Lo/ko$3;->e:Lo/ko;

    invoke-static {p1}, Lo/ko;->j(Lo/ko;)Lo/kA;

    move-result-object p1

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 925
    iget-object p1, p0, Lo/ko$3;->e:Lo/ko;

    invoke-static {p1}, Lo/ko;->j(Lo/ko;)Lo/kA;

    move-result-object p1

    invoke-virtual {p1, p2, v0}, Lo/kA;->e(ZZ)V

    .line 929
    :cond_0
    iget-object p1, p0, Lo/ko$3;->e:Lo/ko;

    invoke-static {p1}, Lo/ko;->i(Lo/ko;)Lo/la;

    move-result-object p1

    iget-object v1, p0, Lo/ko$3;->e:Lo/ko;

    invoke-static {v1, v0}, Lo/ko;->b(Lo/ko;Z)Landroid/util/Pair;

    move-result-object v1

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Landroid/app/Notification;

    iget-object v2, p0, Lo/ko$3;->e:Lo/ko;

    invoke-static {v2}, Lo/ko;->l(Lo/ko;)Lo/Ac;

    move-result-object v2

    invoke-interface {p1, v1, v2, v0}, Lo/la;->a(Landroid/app/Notification;Lo/Ac;Z)V

    .line 930
    iget-object p1, p0, Lo/ko$3;->e:Lo/ko;

    invoke-static {p1}, Lo/ko;->i(Lo/ko;)Lo/la;

    move-result-object p1

    invoke-interface {p1, p2, p2, v0}, Lo/la;->e(ZZZ)V

    return-void
.end method

.method private d(Landroid/content/Intent;)V
    .locals 5

    const/4 v0, 0x0

    const-string v1, "paused"

    .line 883
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    const-string v2, "transitioning"

    .line 884
    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 885
    iget-object v3, p0, Lo/ko$3;->e:Lo/ko;

    invoke-static {v3, p1}, Lo/ko;->e(Lo/ko;Landroid/content/Intent;)Z

    move-result v3

    const-string v4, "isInSkipIntroWindow"

    .line 886
    invoke-virtual {p1, v4, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    const-string v4, "skipIntroType"

    .line 887
    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 896
    iget-object v4, p0, Lo/ko$3;->e:Lo/ko;

    invoke-static {v4}, Lo/ko;->a(Lo/ko;)V

    .line 897
    iget-object v4, p0, Lo/ko$3;->e:Lo/ko;

    invoke-static {v4}, Lo/ko;->j(Lo/ko;)Lo/kA;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 898
    iget-object v4, p0, Lo/ko$3;->e:Lo/ko;

    invoke-static {v4}, Lo/ko;->j(Lo/ko;)Lo/kA;

    move-result-object v4

    invoke-virtual {v4, v1, v3}, Lo/kA;->e(ZZ)V

    .line 901
    :cond_0
    iget-object v3, p0, Lo/ko$3;->e:Lo/ko;

    invoke-static {v3}, Lo/ko;->i(Lo/ko;)Lo/la;

    move-result-object v3

    invoke-interface {v3, v1, v2, v0, p1}, Lo/la;->c(ZZZLjava/lang/String;)V

    return-void
.end method

.method private d(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 3

    .line 934
    iget-object p1, p0, Lo/ko$3;->e:Lo/ko;

    invoke-virtual {p1}, Lo/ko;->n()Lo/aeM$Application;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 936
    new-instance p2, Lo/ko$3$2;

    invoke-direct {p2, p0}, Lo/ko$3$2;-><init>(Lo/ko$3;)V

    .line 956
    const-class v0, Lo/hW;

    invoke-static {v0}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/hW;

    iget-object v1, p1, Lo/aeM$Application;->b:Ljava/lang/String;

    .line 957
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lo/aeM$Application;->c()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object p1

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/PlayLocationType;->d:Lcom/netflix/mediaclient/servicemgr/PlayLocationType;

    .line 956
    invoke-interface {v0, v1, p1, v2, p2}, Lo/hW;->e(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/PlayLocationType;Lo/ci;)V

    :cond_0
    return-void
.end method

.method private d(Ljava/lang/String;)V
    .locals 4

    .line 1004
    new-instance v0, Lo/zV;

    invoke-direct {v0, p1}, Lo/zV;-><init>(Ljava/lang/String;)V

    .line 1006
    invoke-virtual {v0}, Lo/zV;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1007
    invoke-virtual {v0}, Lo/zV;->d()[Lo/zV$Activity;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    new-array v0, v1, [Ljava/lang/Object;

    aput-object p1, v0, v2

    const-string v1, "MdxAgent"

    const-string v2, "updateVideoIdsForPostplay - titles array is null - postPlayState: %s"

    .line 1009
    invoke-static {v1, v2, v0}, Lo/ChooserTargetService;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1010
    iget-object v0, p0, Lo/ko$3;->e:Lo/ko;

    invoke-virtual {v0}, Lo/ko;->getLoggingAgent()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->a()Lo/zz;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MdxAgent updateVideoIdsForPostplay - titles array is null - postPlayState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lo/zz;->b(Ljava/lang/String;)V

    return-void

    .line 1014
    :cond_0
    array-length p1, v0

    if-lez p1, :cond_1

    aget-object p1, v0, v2

    invoke-virtual {p1}, Lo/zV$Activity;->b()Z

    move-result p1

    if-eqz p1, :cond_1

    aget-object p1, v0, v2

    invoke-virtual {p1}, Lo/zV$Activity;->d()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1015
    iget-object p1, p0, Lo/ko$3;->e:Lo/ko;

    new-instance v3, Lo/aeM$Application;

    invoke-direct {v3}, Lo/aeM$Application;-><init>()V

    invoke-static {p1, v3}, Lo/ko;->d(Lo/ko;Lo/aeM$Application;)Lo/aeM$Application;

    .line 1016
    iget-object p1, p0, Lo/ko$3;->e:Lo/ko;

    invoke-static {p1}, Lo/ko;->r(Lo/ko;)Lo/aeM$Application;

    move-result-object p1

    iput-boolean v1, p1, Lo/aeM$Application;->d:Z

    .line 1017
    iget-object p1, p0, Lo/ko$3;->e:Lo/ko;

    invoke-static {p1}, Lo/ko;->r(Lo/ko;)Lo/aeM$Application;

    move-result-object p1

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lo/zV$Activity;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lo/aeM$Application;->b:Ljava/lang/String;

    .line 1018
    iget-object p1, p0, Lo/ko$3;->e:Lo/ko;

    invoke-static {p1, v2, v1}, Lo/ko;->b(Lo/ko;ZZ)V

    :cond_1
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const-string p1, "com.netflix.mediaclient.intent.category.MDX"

    .line 820
    invoke-virtual {p2, p1}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 821
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.netflix.mediaclient.intent.action.MDX_ACTION_UPDATE_PLAYBACKEND"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 822
    invoke-direct {p0, p2}, Lo/ko$3;->b(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 824
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.netflix.mediaclient.intent.action.MDX_ACTION_UPDATE_PLAYBACKSTART"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 825
    invoke-direct {p0}, Lo/ko$3;->b()V

    goto/16 :goto_2

    .line 827
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.netflix.mediaclient.intent.action.MDX_ACTION_UPDATE_STATE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 828
    iget-object p1, p0, Lo/ko$3;->e:Lo/ko;

    invoke-virtual {p1}, Lo/ko;->x()Lcom/netflix/mediaclient/servicemgr/IMdxSharedState;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 829
    iget-object p1, p0, Lo/ko$3;->e:Lo/ko;

    invoke-virtual {p1}, Lo/ko;->x()Lcom/netflix/mediaclient/servicemgr/IMdxSharedState;

    move-result-object p1

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/IMdxSharedState;->a()Lcom/netflix/mediaclient/servicemgr/IMdxSharedState$MdxPlaybackState;

    move-result-object p1

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IMdxSharedState$MdxPlaybackState;->b:Lcom/netflix/mediaclient/servicemgr/IMdxSharedState$MdxPlaybackState;

    if-ne p1, v1, :cond_2

    .line 830
    iget-object p1, p0, Lo/ko$3;->e:Lo/ko;

    invoke-static {p1}, Lo/ko;->a(Lo/ko;)V

    .line 832
    iget-object p1, p0, Lo/ko$3;->e:Lo/ko;

    invoke-static {p1}, Lo/ko;->i(Lo/ko;)Lo/la;

    move-result-object p1

    invoke-interface {p1}, Lo/la;->d()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 833
    iget-object p1, p0, Lo/ko$3;->e:Lo/ko;

    invoke-static {p1}, Lo/ko;->i(Lo/ko;)Lo/la;

    move-result-object p1

    iget-object v1, p0, Lo/ko$3;->e:Lo/ko;

    invoke-static {v1}, Lo/ko;->f(Lo/ko;)Lo/Ac;

    move-result-object v1

    invoke-interface {p1, v1}, Lo/la;->d(Lo/Ac;)V

    .line 839
    :cond_2
    invoke-static {}, Lo/adk;->c()I

    move-result p1

    const/16 v1, 0x15

    if-lt p1, v1, :cond_b

    iget-object p1, p0, Lo/ko$3;->e:Lo/ko;

    invoke-static {p1}, Lo/ko;->j(Lo/ko;)Lo/kA;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 840
    iget-object p1, p0, Lo/ko$3;->e:Lo/ko;

    invoke-static {p1}, Lo/ko;->j(Lo/ko;)Lo/kA;

    move-result-object p1

    const-string v1, "volume"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    invoke-virtual {p1, p2, v0}, Lo/kA;->d(IZ)V

    goto/16 :goto_2

    .line 843
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v1, "com.netflix.mediaclient.intent.action.MDX_ACTION_UPDATE_POSTPLAY"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 844
    invoke-direct {p0, p2}, Lo/ko$3;->a(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 846
    :cond_4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v1, "com.netflix.mediaclient.intent.action.MDX_ACTION_UPDATE_SIMPLE_PLAYBACKSTATE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 847
    invoke-direct {p0, p2}, Lo/ko$3;->d(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 850
    :cond_5
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v1, "com.netflix.mediaclient.intent.action.MDX_ACTION_UPDATE_ERROR"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    const-string p1, "errorCode"

    .line 851
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 852
    invoke-static {p1}, Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;->b(I)Z

    move-result p2

    const/4 v1, 0x1

    if-nez p2, :cond_7

    sget-object p2, Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;->v:Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;

    .line 853
    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;->a()I

    move-result p2

    if-eq p1, p2, :cond_7

    sget-object p2, Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;->j:Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;

    .line 854
    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;->a()I

    move-result p2

    if-ne p1, p2, :cond_6

    goto :goto_0

    :cond_6
    const/4 p1, 0x0

    goto :goto_1

    :cond_7
    :goto_0
    const/4 p1, 0x1

    .line 856
    :goto_1
    iget-object p2, p0, Lo/ko$3;->e:Lo/ko;

    invoke-virtual {p2}, Lo/ko;->q()V

    .line 858
    iget-object p2, p0, Lo/ko$3;->e:Lo/ko;

    invoke-static {p2}, Lo/ko;->g(Lo/ko;)Lo/kk;

    move-result-object p2

    if-eqz p2, :cond_a

    .line 859
    iget-object p2, p0, Lo/ko$3;->e:Lo/ko;

    invoke-static {p2}, Lo/ko;->g(Lo/ko;)Lo/kk;

    move-result-object p2

    iget-object v2, p0, Lo/ko$3;->e:Lo/ko;

    invoke-virtual {v2}, Lo/ko;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lo/kk;->c(Ljava/lang/String;)Lo/kB;

    move-result-object p2

    if-eqz p2, :cond_a

    .line 862
    sget-object v2, Lcom/netflix/mediaclient/servicemgr/IMdxSharedState$MdxPlaybackState;->c:Lcom/netflix/mediaclient/servicemgr/IMdxSharedState$MdxPlaybackState;

    .line 863
    invoke-virtual {p2}, Lo/kB;->a()Lcom/netflix/mediaclient/servicemgr/IMdxSharedState$MdxPlaybackState;

    move-result-object v3

    if-eq v2, v3, :cond_8

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/IMdxSharedState$MdxPlaybackState;->b:Lcom/netflix/mediaclient/servicemgr/IMdxSharedState$MdxPlaybackState;

    .line 864
    invoke-virtual {p2}, Lo/kB;->a()Lcom/netflix/mediaclient/servicemgr/IMdxSharedState$MdxPlaybackState;

    move-result-object p2

    if-ne v2, p2, :cond_9

    :cond_8
    const/4 v0, 0x1

    :cond_9
    if-eqz p1, :cond_a

    if-eqz v0, :cond_a

    const-string p2, "MdxAgent"

    const-string v0, "MdxAgent: received error, clear video detail"

    .line 867
    invoke-static {p2, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    iget-object p2, p0, Lo/ko$3;->e:Lo/ko;

    invoke-static {p2}, Lo/ko;->h(Lo/ko;)V

    :cond_a
    if-eqz p1, :cond_b

    .line 875
    iget-object p1, p0, Lo/ko$3;->e:Lo/ko;

    invoke-static {p1}, Lo/ko;->e(Lo/ko;)Lo/kI;

    move-result-object p1

    invoke-virtual {p1}, Lo/kI;->u()Lo/kF;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lo/kF;->d(Lo/mo;)V

    .line 876
    iget-object p1, p0, Lo/ko$3;->e:Lo/ko;

    invoke-static {p1}, Lo/ko;->e(Lo/ko;)Lo/kI;

    move-result-object p1

    invoke-virtual {p1}, Lo/kI;->k()V

    :cond_b
    :goto_2
    return-void
.end method
