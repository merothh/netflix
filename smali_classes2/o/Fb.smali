.class public final Lo/Fb;
.super Lo/VibrationEffect;
.source ""

# interfaces
.implements Lo/Fv;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/VibrationEffect<",
        "Lo/DG;",
        ">;",
        "Lo/Fv;"
    }
.end annotation


# instance fields
.field private final a:I

.field private b:Landroid/view/View;


# direct methods
.method public constructor <init>(Lo/ListView;Lo/Bc;Lcom/netflix/mediaclient/servicemgr/PlayContext;)V
    .locals 1

    const-string v0, "restartStateButton"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "details"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "playContext"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    move-object v0, p1

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v0}, Lo/VibrationEffect;-><init>(Landroid/view/View;)V

    .line 28
    iput-object v0, p0, Lo/Fb;->b:Landroid/view/View;

    .line 30
    invoke-virtual {p0}, Lo/Fb;->d()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    iput v0, p0, Lo/Fb;->a:I

    .line 33
    new-instance v0, Lo/Fb$3;

    invoke-direct {v0, p0, p1, p2, p3}, Lo/Fb$3;-><init>(Lo/Fb;Lo/ListView;Lo/Bc;Lcom/netflix/mediaclient/servicemgr/PlayContext;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Lo/ListView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 30
    iget v0, p0, Lo/Fb;->a:I

    return v0
.end method

.method public b(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 73
    invoke-virtual {p0}, Lo/Fb;->d()Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 75
    :cond_0
    invoke-virtual {p0}, Lo/Fb;->d()Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public d()Landroid/view/View;
    .locals 1

    .line 28
    iget-object v0, p0, Lo/Fb;->b:Landroid/view/View;

    return-object v0
.end method

.method public e(Lo/Bc;Lcom/netflix/mediaclient/servicemgr/PlayContext;)V
    .locals 33

    const-string v0, "details"

    move-object/from16 v10, p1

    invoke-static {v10, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "playContext"

    move-object/from16 v11, p2

    invoke-static {v11, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-virtual/range {p0 .. p0}, Lo/Fb;->d()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->pI:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "uiView.context.getString\u2026start_state_button_title)"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-virtual/range {p0 .. p0}, Lo/Fb;->d()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/netflix/mediaclient/ui/R$AssistContent;->pK:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    const-string v1, "uiView.context.getString\u2026art_state_button_message)"

    invoke-static {v12, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    sget-object v1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance v2, Lcom/netflix/cl/model/event/session/Presentation;

    sget-object v3, Lcom/netflix/cl/model/AppView;->ikoResetStatePrompt:Lcom/netflix/cl/model/AppView;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/netflix/cl/model/event/session/Presentation;-><init>(Lcom/netflix/cl/model/AppView;Lcom/netflix/cl/model/TrackingInfo;)V

    check-cast v2, Lcom/netflix/cl/model/event/session/Session;

    invoke-virtual {v1, v2}, Lcom/netflix/cl/Logger;->startSession(Lcom/netflix/cl/model/event/session/Session;)Ljava/lang/Long;

    move-result-object v13

    .line 42
    invoke-virtual/range {p0 .. p0}, Lo/Fb;->d()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 88
    invoke-static {v1}, Lo/TagTechnology;->a(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 90
    const-class v2, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v1, v2}, Lo/TagTechnology;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 89
    move-object v14, v1

    check-cast v14, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    .line 43
    new-instance v3, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v3}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    new-instance v1, Lcom/netflix/mediaclient/ui/player/PlayerExtras;

    move-object v15, v1

    const/16 v16, 0x0

    const-wide/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const-wide/16 v26, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x1fff

    const/16 v32, 0x0

    invoke-direct/range {v15 .. v32}, Lcom/netflix/mediaclient/ui/player/PlayerExtras;-><init>(IJIZZZLcom/netflix/mediaclient/ui/player/PostPlayExtras;ZLcom/netflix/cl/model/AppView;JFLcom/netflix/mediaclient/ui/player/PlayerLiteMode;Lcom/netflix/mediaclient/ui/player/MediaTracksUserPreference_Ab22929;ILo/amc;)V

    iput-object v1, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->d:Ljava/lang/Object;

    .line 44
    iget-object v1, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->d:Ljava/lang/Object;

    check-cast v1, Lcom/netflix/mediaclient/ui/player/PlayerExtras;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/ui/player/PlayerExtras;->e(Z)V

    .line 45
    iget-object v1, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->d:Ljava/lang/Object;

    check-cast v1, Lcom/netflix/mediaclient/ui/player/PlayerExtras;

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/ui/player/PlayerExtras;->d(Z)V

    .line 47
    new-instance v15, Lo/Fb$Application;

    move-object v1, v15

    move-object v2, v14

    move-object/from16 v4, p0

    move-object v5, v13

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object v8, v0

    move-object v9, v12

    invoke-direct/range {v1 .. v9}, Lo/Fb$Application;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lkotlin/jvm/internal/Ref$ObjectRef;Lo/Fb;Ljava/lang/Long;Lo/Bc;Lcom/netflix/mediaclient/servicemgr/PlayContext;Ljava/lang/String;Ljava/lang/String;)V

    move-object v8, v15

    check-cast v8, Ljava/lang/Runnable;

    .line 53
    new-instance v9, Lo/Fb$TaskDescription;

    move-object v1, v9

    move-object/from16 v2, p0

    move-object v3, v13

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object v6, v0

    move-object v7, v12

    invoke-direct/range {v1 .. v7}, Lo/Fb$TaskDescription;-><init>(Lo/Fb;Ljava/lang/Long;Lo/Bc;Lcom/netflix/mediaclient/servicemgr/PlayContext;Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v9

    check-cast v1, Ljava/lang/Runnable;

    .line 58
    new-instance v9, Lo/CalendarViewLegacyDelegate$Activity;

    .line 60
    invoke-virtual/range {p0 .. p0}, Lo/Fb;->d()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/netflix/mediaclient/ui/R$AssistContent;->is:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 62
    invoke-virtual/range {p0 .. p0}, Lo/Fb;->d()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/netflix/mediaclient/ui/R$AssistContent;->ez:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object v2, v9

    move-object v3, v0

    move-object v4, v12

    move-object v6, v8

    move-object v8, v1

    .line 58
    invoke-direct/range {v2 .. v8}, Lo/CalendarViewLegacyDelegate$Activity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 64
    move-object v0, v14

    check-cast v0, Landroid/content/Context;

    .line 65
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 66
    check-cast v9, Lo/hK;

    .line 64
    invoke-static {v0, v1, v9}, Lo/CalendarViewLegacyDelegate;->a(Landroid/content/Context;Landroid/os/Handler;Lo/hK;)Lo/ScrollBarDrawable$ActionBar;

    move-result-object v0

    .line 67
    invoke-virtual {v14, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->displayDialog(Lo/ScrollBarDrawable$ActionBar;)Landroid/app/Dialog;

    :cond_0
    return-void
.end method
