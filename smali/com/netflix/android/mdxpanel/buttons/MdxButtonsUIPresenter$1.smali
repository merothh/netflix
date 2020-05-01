.class public final Lcom/netflix/android/mdxpanel/buttons/MdxButtonsUIPresenter$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/CpuUsageInfo;-><init>(Lo/ConditionVariable;Lio/reactivex/Observable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alA<",
        "Lo/Build;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lo/ConditionVariable;


# direct methods
.method public constructor <init>(Lo/ConditionVariable;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/android/mdxpanel/buttons/MdxButtonsUIPresenter$1;->a:Lo/ConditionVariable;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lo/Build;)V
    .locals 2

    const-string v0, "stateEvent"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    instance-of v0, p1, Lo/Build$TaskStackBuilder;

    if-eqz v0, :cond_0

    .line 23
    iget-object p1, p0, Lcom/netflix/android/mdxpanel/buttons/MdxButtonsUIPresenter$1;->a:Lo/ConditionVariable;

    invoke-interface {p1}, Lo/ConditionVariable;->j()V

    goto/16 :goto_1

    .line 26
    :cond_0
    instance-of v0, p1, Lo/Build$SharedElementCallback;

    if-eqz v0, :cond_1

    .line 27
    iget-object v0, p0, Lcom/netflix/android/mdxpanel/buttons/MdxButtonsUIPresenter$1;->a:Lo/ConditionVariable;

    check-cast p1, Lo/Build$SharedElementCallback;

    invoke-virtual {p1}, Lo/Build$SharedElementCallback;->e()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {v0, p1}, Lo/ConditionVariable;->a(Ljava/lang/CharSequence;)V

    .line 28
    iget-object p1, p0, Lcom/netflix/android/mdxpanel/buttons/MdxButtonsUIPresenter$1;->a:Lo/ConditionVariable;

    invoke-interface {p1}, Lo/ConditionVariable;->g()V

    goto/16 :goto_1

    .line 31
    :cond_1
    instance-of v0, p1, Lo/Build$ContentResolver;

    if-eqz v0, :cond_2

    .line 32
    iget-object p1, p0, Lcom/netflix/android/mdxpanel/buttons/MdxButtonsUIPresenter$1;->a:Lo/ConditionVariable;

    invoke-interface {p1}, Lo/ConditionVariable;->g()V

    goto/16 :goto_1

    .line 35
    :cond_2
    instance-of v0, p1, Lo/Build$Theme;

    if-eqz v0, :cond_3

    goto :goto_0

    .line 36
    :cond_3
    instance-of v0, p1, Lo/Build$ServiceConnection;

    if-eqz v0, :cond_4

    goto :goto_0

    .line 37
    :cond_4
    instance-of v0, p1, Lo/Build$DialogInterface;

    if-eqz v0, :cond_5

    .line 38
    :goto_0
    iget-object p1, p0, Lcom/netflix/android/mdxpanel/buttons/MdxButtonsUIPresenter$1;->a:Lo/ConditionVariable;

    invoke-interface {p1}, Lo/ConditionVariable;->c()V

    goto/16 :goto_1

    .line 41
    :cond_5
    instance-of v0, p1, Lo/Build$TaskDescription;

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    .line 43
    check-cast p1, Lo/Build$TaskDescription;

    invoke-virtual {p1}, Lo/Build$TaskDescription;->a()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 45
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "volumeControl"

    .line 46
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, p1

    .line 51
    :catch_0
    :cond_6
    iget-object p1, p0, Lcom/netflix/android/mdxpanel/buttons/MdxButtonsUIPresenter$1;->a:Lo/ConditionVariable;

    invoke-interface {p1, v0}, Lo/ConditionVariable;->d(Z)V

    goto :goto_1

    .line 54
    :cond_7
    instance-of v0, p1, Lo/Build$Application;

    if-eqz v0, :cond_9

    .line 55
    check-cast p1, Lo/Build$Application;

    invoke-virtual {p1}, Lo/Build$Application;->d()Lcom/netflix/android/mdxpanel/MdxPanelController$TaskDescription;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/android/mdxpanel/MdxPanelController$TaskDescription;->i()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 56
    iget-object v1, p0, Lcom/netflix/android/mdxpanel/buttons/MdxButtonsUIPresenter$1;->a:Lo/ConditionVariable;

    invoke-virtual {p1}, Lo/Build$Application;->d()Lcom/netflix/android/mdxpanel/MdxPanelController$TaskDescription;

    move-result-object p1

    invoke-interface {p1}, Lcom/netflix/android/mdxpanel/MdxPanelController$TaskDescription;->f()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1, v0}, Lo/ConditionVariable;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 57
    :cond_8
    iget-object p1, p0, Lcom/netflix/android/mdxpanel/buttons/MdxButtonsUIPresenter$1;->a:Lo/ConditionVariable;

    invoke-interface {p1}, Lo/ConditionVariable;->c_()V

    goto :goto_1

    .line 60
    :cond_9
    instance-of v0, p1, Lo/Build$VoiceInteractor;

    if-eqz v0, :cond_a

    .line 61
    iget-object v0, p0, Lcom/netflix/android/mdxpanel/buttons/MdxButtonsUIPresenter$1;->a:Lo/ConditionVariable;

    check-cast p1, Lo/Build$VoiceInteractor;

    invoke-virtual {p1}, Lo/Build$VoiceInteractor;->e()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lo/ConditionVariable;->b(Ljava/lang/Object;)V

    goto :goto_1

    .line 64
    :cond_a
    instance-of v0, p1, Lo/Build$AssistContent;

    if-eqz v0, :cond_b

    .line 65
    iget-object p1, p0, Lcom/netflix/android/mdxpanel/buttons/MdxButtonsUIPresenter$1;->a:Lo/ConditionVariable;

    invoke-interface {p1}, Lo/ConditionVariable;->h()V

    goto :goto_1

    .line 68
    :cond_b
    instance-of v0, p1, Lo/Build$IntentSender;

    if-eqz v0, :cond_c

    .line 69
    iget-object p1, p0, Lcom/netflix/android/mdxpanel/buttons/MdxButtonsUIPresenter$1;->a:Lo/ConditionVariable;

    invoke-interface {p1}, Lo/ConditionVariable;->e()V

    goto :goto_1

    .line 72
    :cond_c
    instance-of v0, p1, Lo/Build$ApplicationInfo;

    if-eqz v0, :cond_d

    .line 73
    iget-object p1, p0, Lcom/netflix/android/mdxpanel/buttons/MdxButtonsUIPresenter$1;->a:Lo/ConditionVariable;

    invoke-interface {p1}, Lo/ConditionVariable;->b()V

    goto :goto_1

    .line 76
    :cond_d
    instance-of v0, p1, Lo/Build$DatabaseErrorHandler;

    if-eqz v0, :cond_e

    .line 77
    iget-object v0, p0, Lcom/netflix/android/mdxpanel/buttons/MdxButtonsUIPresenter$1;->a:Lo/ConditionVariable;

    check-cast p1, Lo/Build$DatabaseErrorHandler;

    invoke-virtual {p1}, Lo/Build$DatabaseErrorHandler;->a()F

    move-result v1

    invoke-virtual {p1}, Lo/Build$DatabaseErrorHandler;->c()I

    move-result p1

    invoke-interface {v0, v1, p1}, Lo/ConditionVariable;->d(FI)V

    :cond_e
    :goto_1
    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 11
    check-cast p1, Lo/Build;

    invoke-virtual {p0, p1}, Lcom/netflix/android/mdxpanel/buttons/MdxButtonsUIPresenter$1;->a(Lo/Build;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
