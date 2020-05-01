.class public final Lo/Dn;
.super Lo/PluginData;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/Dn$Activity;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/PluginData<",
        "Lo/DC;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic c:[Lo/amT;

.field public static final d:Lo/Dn$Activity;


# instance fields
.field private final f:Lo/ams;

.field private final h:Lo/ams;

.field private final j:Lo/ams;

.field private final m:Lo/UpdateEngine;

.field private n:Lo/Do;

.field private o:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lo/Dn;

    const/4 v1, 0x3

    new-array v1, v1, [Lo/amT;

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "upButton"

    const-string v5, "getUpButton()Landroid/widget/ImageView;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "seasonSelectorLayout"

    const-string v5, "getSeasonSelectorLayout()Landroid/widget/FrameLayout;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v0

    const-string v3, "episodesListLayout"

    const-string v4, "getEpisodesListLayout()Landroid/widget/FrameLayout;"

    invoke-direct {v2, v0, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v0

    check-cast v0, Lo/amT;

    const/4 v2, 0x2

    aput-object v0, v1, v2

    sput-object v1, Lo/Dn;->c:[Lo/amT;

    new-instance v0, Lo/Dn$Activity;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/Dn$Activity;-><init>(Lo/amc;)V

    sput-object v0, Lo/Dn;->d:Lo/Dn$Activity;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 35
    invoke-direct {p0}, Lo/PluginData;-><init>()V

    .line 54
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->gB:I

    invoke-static {p0, v0}, Lo/NfcV;->a(Lo/PushbackReader;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lo/Dn;->j:Lo/ams;

    .line 55
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->gC:I

    invoke-static {p0, v0}, Lo/NfcV;->a(Lo/PushbackReader;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lo/Dn;->h:Lo/ams;

    .line 56
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->gA:I

    invoke-static {p0, v0}, Lo/NfcV;->a(Lo/PushbackReader;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lo/Dn;->f:Lo/ams;

    .line 60
    sget-object v0, Lo/UpdateEngine;->e:Lo/UpdateEngine$TaskDescription;

    move-object v1, p0

    check-cast v1, Lo/UnicodeScript;

    invoke-virtual {v0, v1}, Lo/UpdateEngine$TaskDescription;->d(Lo/UnicodeScript;)Lo/UpdateEngine;

    move-result-object v0

    iput-object v0, p0, Lo/Dn;->m:Lo/UpdateEngine;

    return-void
.end method

.method public static final synthetic a(Lo/Dn;)Landroid/widget/FrameLayout;
    .locals 0

    .line 35
    invoke-direct {p0}, Lo/Dn;->b()Landroid/widget/FrameLayout;

    move-result-object p0

    return-object p0
.end method

.method public static final a(Ljava/lang/String;Ljava/lang/String;J)Lo/Dn;
    .locals 1

    sget-object v0, Lo/Dn;->d:Lo/Dn$Activity;

    invoke-virtual {v0, p0, p1, p2, p3}, Lo/Dn$Activity;->e(Ljava/lang/String;Ljava/lang/String;J)Lo/Dn;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic a(Lo/Dn;Lo/Do;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lo/Dn;->n:Lo/Do;

    return-void
.end method

.method private final b()Landroid/widget/FrameLayout;
    .locals 3

    iget-object v0, p0, Lo/Dn;->h:Lo/ams;

    sget-object v1, Lo/Dn;->c:[Lo/amT;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public static final synthetic b(Lo/Dn;)Lio/reactivex/subjects/PublishSubject;
    .locals 0

    .line 35
    iget-object p0, p0, Lo/Dn;->e:Lio/reactivex/subjects/PublishSubject;

    return-object p0
.end method

.method private final c()V
    .locals 3

    .line 186
    new-instance v0, Lo/Dt;

    invoke-direct {p0}, Lo/Dn;->d()Landroid/widget/FrameLayout;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-direct {v0, v1}, Lo/Dt;-><init>(Landroid/view/ViewGroup;)V

    check-cast v0, Lo/Dq;

    .line 187
    iget-object v1, p0, Lo/Dn;->m:Lo/UpdateEngine;

    .line 216
    const-class v2, Lo/Dr;

    invoke-virtual {v1, v2}, Lo/UpdateEngine;->a(Ljava/lang/Class;)Lio/reactivex/Observable;

    move-result-object v1

    .line 185
    new-instance v2, Lo/Dm;

    invoke-direct {v2, v0, v1}, Lo/Dm;-><init>(Lo/Dq;Lio/reactivex/Observable;)V

    .line 190
    invoke-virtual {p0}, Lo/Dn;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lo/Dn;->getView()Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/netflix/mediaclient/ui/common/episodes/list/EpisodesListSelectorDialogFragment$initializeWindowAndOrientationObservables$1;

    invoke-direct {v2, p0}, Lcom/netflix/mediaclient/ui/common/episodes/list/EpisodesListSelectorDialogFragment$initializeWindowAndOrientationObservables$1;-><init>(Lo/Dn;)V

    check-cast v2, Lo/alN;

    invoke-static {v0, v1, v2}, Lo/NfcA;->c(Ljava/lang/Object;Ljava/lang/Object;Lo/alN;)Ljava/lang/Object;

    return-void
.end method

.method private final d()Landroid/widget/FrameLayout;
    .locals 3

    iget-object v0, p0, Lo/Dn;->f:Lo/ams;

    sget-object v1, Lo/Dn;->c:[Lo/amT;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public static final synthetic d(Lo/Dn;)Landroid/widget/FrameLayout;
    .locals 0

    .line 35
    invoke-direct {p0}, Lo/Dn;->d()Landroid/widget/FrameLayout;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic d(Lo/Dn;Z)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lo/Dn;->e(Z)V

    return-void
.end method

.method private final e()Landroid/widget/ImageView;
    .locals 3

    iget-object v0, p0, Lo/Dn;->j:Lo/ams;

    sget-object v1, Lo/Dn;->c:[Lo/amT;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method

.method public static final synthetic e(Lo/Dn;)Lo/UpdateEngine;
    .locals 0

    .line 35
    iget-object p0, p0, Lo/Dn;->m:Lo/UpdateEngine;

    return-object p0
.end method

.method private final e(Z)V
    .locals 3

    .line 175
    iget-object v0, p0, Lo/Dn;->m:Lo/UpdateEngine;

    .line 176
    const-class v1, Lo/FH;

    .line 177
    new-instance v2, Lo/FH$ActionBar;

    invoke-direct {v2, p1}, Lo/FH$ActionBar;-><init>(Z)V

    check-cast v2, Lo/VintfObject;

    .line 175
    invoke-virtual {v0, v1, v2}, Lo/UpdateEngine;->c(Ljava/lang/Class;Lo/VintfObject;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lo/Dn;->o:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method protected c(Landroid/view/View;)V
    .locals 4

    const-string v0, "view"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 170
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    iget v1, p0, Lo/Dn;->a:I

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    iget v3, p0, Lo/Dn;->g:I

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method public isLoadingData()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    const-string v0, "dialog"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 148
    invoke-super {p0, p1}, Lo/PluginData;->onCancel(Landroid/content/DialogInterface;)V

    const/4 p1, 0x1

    .line 149
    invoke-direct {p0, p1}, Lo/Dn;->e(Z)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    const-string v0, "newConfig"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    invoke-super {p0, p1}, Lo/PluginData;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 129
    invoke-virtual {p0}, Lo/Dn;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 130
    iget-object v1, p0, Lo/Dn;->m:Lo/UpdateEngine;

    .line 131
    new-instance v2, Lo/Dr$StateListAnimator;

    const-string v3, "window"

    .line 132
    invoke-static {v0, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    iget v3, p1, Landroid/content/res/Configuration;->orientation:I

    .line 131
    invoke-direct {v2, v0, v3}, Lo/Dr$StateListAnimator;-><init>(Landroid/view/Window;I)V

    check-cast v2, Lo/VintfObject;

    .line 214
    const-class v0, Lo/Dr;

    invoke-virtual {v1, v0, v2}, Lo/UpdateEngine;->c(Ljava/lang/Class;Lo/VintfObject;)V

    .line 137
    :cond_0
    iget-object v0, p0, Lo/Dn;->m:Lo/UpdateEngine;

    .line 138
    const-class v1, Lo/FH;

    .line 139
    new-instance v2, Lo/FH$LoaderManager;

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {v2, p1}, Lo/FH$LoaderManager;-><init>(I)V

    check-cast v2, Lo/VintfObject;

    .line 137
    invoke-virtual {v0, v1, v2}, Lo/UpdateEngine;->c(Ljava/lang/Class;Lo/VintfObject;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    sget p3, Lcom/netflix/mediaclient/ui/R$Dialog;->bm:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 164
    iget-object v0, p0, Lo/Dn;->n:Lo/Do;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/Do;->c()V

    .line 166
    :cond_0
    invoke-super {p0}, Lo/PluginData;->onDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    const/4 v0, 0x0

    .line 153
    invoke-direct {p0, v0}, Lo/Dn;->e(Z)V

    .line 154
    iget-object v0, p0, Lo/Dn;->n:Lo/Do;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/Do;->b()V

    .line 156
    :cond_0
    invoke-super {p0}, Lo/PluginData;->onDestroyView()V

    .line 157
    invoke-virtual {p0}, Lo/Dn;->a()V

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 114
    invoke-super {p0}, Lo/PluginData;->onResume()V

    .line 116
    iget-object v0, p0, Lo/Dn;->m:Lo/UpdateEngine;

    .line 117
    const-class v1, Lo/FH;

    .line 118
    sget-object v2, Lo/FH$Fragment;->d:Lo/FH$Fragment;

    check-cast v2, Lo/VintfObject;

    .line 116
    invoke-virtual {v0, v1, v2}, Lo/UpdateEngine;->c(Ljava/lang/Class;Lo/VintfObject;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    const-string v0, "view"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    invoke-super {p0, p1, p2}, Lo/PluginData;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 70
    invoke-virtual {p0}, Lo/Dn;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_0

    const/16 p2, 0x400

    .line 71
    invoke-virtual {p1, p2, p2}, Landroid/view/Window;->setFlags(II)V

    const/4 p2, -0x1

    .line 75
    invoke-virtual {p1, p2, p2}, Landroid/view/Window;->setLayout(II)V

    .line 79
    sget p2, Lcom/netflix/mediaclient/ui/R$Application;->S:I

    invoke-virtual {p1, p2}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 82
    :cond_0
    invoke-virtual {p0}, Lo/Dn;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    const-string v0, "extra_video_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, p2

    .line 83
    :goto_0
    invoke-virtual {p0}, Lo/Dn;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string p2, "extra_episode_id"

    invoke-virtual {v0, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 84
    :cond_2
    invoke-virtual {p0}, Lo/Dn;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v1, "extra_player_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_1

    :cond_3
    const-wide/16 v0, 0x0

    .line 87
    :goto_1
    invoke-direct {p0}, Lo/Dn;->e()Landroid/widget/ImageView;

    move-result-object v2

    new-instance v3, Lo/Dn$Application;

    invoke-direct {v3, p0}, Lo/Dn$Application;-><init>(Lo/Dn;)V

    check-cast v3, Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    invoke-virtual {p0}, Lo/Dn;->k()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v2

    .line 96
    new-instance v3, Lcom/netflix/mediaclient/ui/common/episodes/list/EpisodesListSelectorDialogFragment$onViewCreated$3;

    invoke-direct {v3, p0, v0, v1}, Lcom/netflix/mediaclient/ui/common/episodes/list/EpisodesListSelectorDialogFragment$onViewCreated$3;-><init>(Lo/Dn;J)V

    check-cast v3, Lo/alO;

    .line 92
    invoke-static {v2, p1, p2, v3}, Lo/NfcA;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lo/alO;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/akj;

    if-eqz p1, :cond_4

    goto :goto_2

    .line 108
    :cond_4
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p1

    const-string p2, "Something was null in EpisodesListSelectorDialogFragment.onViewCreated."

    invoke-interface {p1, p2}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    .line 110
    :goto_2
    invoke-direct {p0}, Lo/Dn;->c()V

    return-void
.end method
