.class public final Lo/NA;
.super Lcom/netflix/mediaclient/android/fragment/NetflixFrag;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/NA$StateListAnimator;
    }
.end annotation


# static fields
.field static final synthetic b:[Lo/amT;

.field public static final j:Lo/NA$StateListAnimator;


# instance fields
.field private f:Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;

.field private h:Lo/Nw;

.field private i:I

.field private final k:Lo/DatePickerCalendarDelegate$Activity;

.field private l:Lo/EditText;

.field private final m:Lo/ams;

.field private final n:Lcom/netflix/mediaclient/ui/multimonth/MultiMonthEpoxyController;

.field private final o:Lo/ams;

.field private final q:Lo/aka;

.field private r:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lo/NA;

    const/4 v1, 0x2

    new-array v1, v1, [Lo/amT;

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "recyclerView"

    const-string v5, "getRecyclerView()Lcom/airbnb/epoxy/EpoxyRecyclerView;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v0

    const-string v3, "fragContainer"

    const-string v4, "getFragContainer()Landroid/widget/FrameLayout;"

    invoke-direct {v2, v0, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v0

    check-cast v0, Lo/amT;

    const/4 v2, 0x1

    aput-object v0, v1, v2

    sput-object v1, Lo/NA;->b:[Lo/amT;

    new-instance v0, Lo/NA$StateListAnimator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/NA$StateListAnimator;-><init>(Lo/amc;)V

    sput-object v0, Lo/NA;->j:Lo/NA$StateListAnimator;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 25
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;-><init>()V

    .line 31
    sget-object v0, Lo/NA$Application;->d:Lo/NA$Application;

    check-cast v0, Lo/DatePickerCalendarDelegate$Activity;

    iput-object v0, p0, Lo/NA;->k:Lo/DatePickerCalendarDelegate$Activity;

    .line 32
    sget v0, Lo/NB$Application;->j:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lo/NA;->o:Lo/ams;

    .line 33
    sget v0, Lo/NB$Application;->i:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lo/NA;->m:Lo/ams;

    .line 35
    new-instance v0, Lcom/netflix/mediaclient/ui/multimonth/MultiMonthEpoxyController;

    new-instance v1, Lcom/netflix/mediaclient/ui/multimonth/MultiMonthOfferFragment$epoxyController$1;

    move-object v2, p0

    check-cast v2, Lo/NA;

    invoke-direct {v1, v2}, Lcom/netflix/mediaclient/ui/multimonth/MultiMonthOfferFragment$epoxyController$1;-><init>(Lo/NA;)V

    check-cast v1, Lo/alA;

    new-instance v3, Lcom/netflix/mediaclient/ui/multimonth/MultiMonthOfferFragment$epoxyController$2;

    invoke-direct {v3, v2}, Lcom/netflix/mediaclient/ui/multimonth/MultiMonthOfferFragment$epoxyController$2;-><init>(Lo/NA;)V

    check-cast v3, Lo/alA;

    new-instance v4, Lcom/netflix/mediaclient/ui/multimonth/MultiMonthOfferFragment$epoxyController$3;

    invoke-direct {v4, v2}, Lcom/netflix/mediaclient/ui/multimonth/MultiMonthOfferFragment$epoxyController$3;-><init>(Lo/NA;)V

    check-cast v4, Lo/alB;

    invoke-direct {v0, v1, v3, v4}, Lcom/netflix/mediaclient/ui/multimonth/MultiMonthEpoxyController;-><init>(Lo/alA;Lo/alA;Lo/alB;)V

    iput-object v0, p0, Lo/NA;->n:Lcom/netflix/mediaclient/ui/multimonth/MultiMonthEpoxyController;

    .line 51
    new-instance v0, Lcom/netflix/mediaclient/ui/multimonth/MultiMonthOfferFragment$multiMonthOfferViewModel$2;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/multimonth/MultiMonthOfferFragment$multiMonthOfferViewModel$2;-><init>(Lo/NA;)V

    check-cast v0, Lo/alB;

    invoke-static {v0}, Lo/akd;->a(Lo/alB;)Lo/aka;

    move-result-object v0

    iput-object v0, p0, Lo/NA;->q:Lo/aka;

    return-void
.end method

.method private final A()V
    .locals 3

    .line 196
    sget v0, Lo/ClientCertRequest;->e:I

    const v1, 0x7fffffff

    const/4 v2, 0x0

    .line 195
    invoke-virtual {p0, v0, v1, v2}, Lo/NA;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method private final B()V
    .locals 4

    .line 130
    iget-object v0, p0, Lo/NA;->f:Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->ctas()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    check-cast v0, Ljava/lang/Iterable;

    .line 205
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;

    if-eqz v3, :cond_1

    .line 130
    invoke-virtual {v3}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;->action()Ljava/lang/String;

    move-result-object v2

    :cond_1
    const-string v3, "DISMISS"

    invoke-static {v2, v3}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_2
    move-object v1, v2

    .line 206
    :goto_0
    check-cast v1, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;

    if-eqz v1, :cond_3

    .line 131
    sget-object v0, Lo/Nv;->d:Lo/Nv;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;->trackingInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/Nv;->d(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method private final C()V
    .locals 4

    .line 114
    iget-object v0, p0, Lo/NA;->f:Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->ctas()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    check-cast v0, Ljava/lang/Iterable;

    .line 203
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;

    if-eqz v3, :cond_1

    .line 114
    invoke-virtual {v3}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;->action()Ljava/lang/String;

    move-result-object v2

    :cond_1
    const-string v3, "DISMISS"

    invoke-static {v2, v3}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_2
    move-object v1, v2

    .line 204
    :goto_0
    check-cast v1, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;

    if-eqz v1, :cond_3

    .line 115
    sget-object v0, Lo/Nv;->d:Lo/Nv;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;->trackingInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/Nv;->e(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method private final a(Lo/Am;)V
    .locals 2

    .line 185
    iget v0, p0, Lo/NA;->i:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 186
    invoke-direct {p0}, Lo/NA;->A()V

    return-void

    :cond_0
    add-int/2addr v0, v1

    .line 189
    iput v0, p0, Lo/NA;->i:I

    .line 190
    iget-object v0, p0, Lo/NA;->l:Lo/EditText;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Lo/EditText;->c(Z)V

    :cond_1
    const-string v0, "IGNORE_SNOOZING"

    .line 191
    invoke-virtual {p1, v1, v0}, Lo/Am;->c(ZLjava/lang/String;)V

    return-void
.end method

.method public static final synthetic a(Lo/NA;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lo/NA;->z()V

    return-void
.end method

.method public static final synthetic a(Lo/NA;Lo/Nw;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lo/NA;->e(Lo/Nw;)V

    return-void
.end method

.method private final c(Ljava/lang/String;)V
    .locals 3

    .line 120
    invoke-virtual {p0}, Lo/NA;->getActivity()Lo/Serializable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 122
    sget-object v1, Lo/Nx;->b:Lo/Nx$ActionBar;

    const-string v2, "activity"

    invoke-static {v0, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v1, v0, p1}, Lo/Nx$ActionBar;->c(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x0

    .line 121
    invoke-virtual {p0, p1, v0}, Lo/NA;->startActivityForResult(Landroid/content/Intent;I)V

    .line 125
    invoke-direct {p0}, Lo/NA;->B()V

    :cond_0
    return-void
.end method

.method private final d()Lcom/airbnb/epoxy/EpoxyRecyclerView;
    .locals 3

    iget-object v0, p0, Lo/NA;->o:Lo/ams;

    sget-object v1, Lo/NA;->b:[Lo/amT;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/epoxy/EpoxyRecyclerView;

    return-object v0
.end method

.method public static final synthetic e(Lo/NA;Ljava/lang/String;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lo/NA;->c(Ljava/lang/String;)V

    return-void
.end method

.method private final e(Lo/Nw;)V
    .locals 1

    .line 104
    iput-object p1, p0, Lo/NA;->h:Lo/Nw;

    .line 105
    sget-object v0, Lo/Nv;->d:Lo/Nv;

    invoke-virtual {p1}, Lo/Nw;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo/Nv;->a(Ljava/lang/String;)V

    return-void
.end method

.method private final g()Landroid/widget/FrameLayout;
    .locals 3

    iget-object v0, p0, Lo/NA;->m:Lo/ams;

    sget-object v1, Lo/NA;->b:[Lo/amT;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    return-object v0
.end method

.method private final v()V
    .locals 1

    .line 100
    sget-object v0, Lo/Nv;->d:Lo/Nv;

    invoke-virtual {v0}, Lo/Nv;->a()V

    return-void
.end method

.method private final x()V
    .locals 3

    .line 89
    iget-object v0, p0, Lo/NA;->f:Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->trackingInfo()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 90
    sget-object v1, Lo/Nv;->d:Lo/Nv;

    const-string v2, "it"

    invoke-static {v0, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lo/Nv;->c(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private final y()Lo/Nr;
    .locals 1

    iget-object v0, p0, Lo/NA;->q:Lo/aka;

    invoke-interface {v0}, Lo/aka;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/Nr;

    return-object v0
.end method

.method private final z()V
    .locals 1

    .line 109
    invoke-direct {p0}, Lo/NA;->C()V

    .line 110
    invoke-virtual {p0}, Lo/NA;->getActivity()Lo/Serializable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/Serializable;->finish()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final b(Lo/Am;)V
    .locals 3

    const-string v0, "manager"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 162
    invoke-virtual {p1}, Lo/Am;->P()Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 163
    iput-object v0, p0, Lo/NA;->f:Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;

    .line 164
    invoke-direct {p0}, Lo/NA;->x()V

    .line 165
    invoke-direct {p0}, Lo/NA;->y()Lo/Nr;

    move-result-object v1

    invoke-virtual {v1, v0}, Lo/Nr;->e(Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;)V

    .line 166
    invoke-direct {p0}, Lo/NA;->y()Lo/Nr;

    move-result-object v1

    invoke-virtual {v1}, Lo/Nr;->e()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 167
    invoke-direct {p0}, Lo/NA;->y()Lo/Nr;

    move-result-object v1

    invoke-virtual {v1}, Lo/Nr;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 168
    invoke-direct {p0}, Lo/NA;->g()Landroid/widget/FrameLayout;

    move-result-object v1

    sget v2, Lo/NB$StateListAnimator;->d:I

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 170
    :cond_0
    iget-object v1, p0, Lo/NA;->n:Lcom/netflix/mediaclient/ui/multimonth/MultiMonthEpoxyController;

    invoke-direct {p0}, Lo/NA;->y()Lo/Nr;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/ui/multimonth/MultiMonthEpoxyController;->setData(Lo/Nr;)V

    .line 171
    iget-object v1, p0, Lo/NA;->l:Lo/EditText;

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lo/EditText;->a(Z)V

    .line 172
    :cond_1
    invoke-direct {p0}, Lo/NA;->d()Lcom/airbnb/epoxy/EpoxyRecyclerView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/airbnb/epoxy/EpoxyRecyclerView;->setVisibility(I)V

    .line 174
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->umsAlertRenderFeedback()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 175
    invoke-virtual {p1, v0}, Lo/Am;->e(Ljava/lang/String;)V

    .line 176
    sget-object v0, Lo/akj;->a:Lo/akj;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 179
    :cond_3
    invoke-direct {p0}, Lo/NA;->A()V

    sget-object v0, Lo/akj;->a:Lo/akj;

    :goto_0
    if-eqz v0, :cond_4

    goto :goto_1

    .line 181
    :cond_4
    invoke-direct {p0, p1}, Lo/NA;->a(Lo/Am;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    :goto_1
    return-void
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lo/NA;->r:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public isLoadingData()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    const/4 p1, -0x1

    if-eq p2, p1, :cond_0

    const/4 p1, 0x1

    if-le p2, p1, :cond_4

    .line 137
    :cond_0
    invoke-virtual {p0}, Lo/NA;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 138
    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->isTaskRoot()Z

    move-result p3

    const-string v0, "MULTI_MONTH_OFFER_DURATION"

    const/4 v1, 0x0

    if-eqz p3, :cond_2

    const/4 p3, 0x0

    .line 139
    invoke-static {p1, v1, p3}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->e(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/cl/model/AppView;Z)Landroid/content/Intent;

    move-result-object p3

    const v2, 0x10008000

    .line 140
    invoke-virtual {p3, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 143
    iget-object v2, p0, Lo/NA;->h:Lo/Nw;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lo/Nw;->b()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    move-object v2, v1

    .line 141
    :goto_0
    invoke-virtual {p3, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 146
    invoke-virtual {p1, p3}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->startActivity(Landroid/content/Intent;)V

    .line 148
    :cond_2
    new-instance p3, Landroid/content/Intent;

    invoke-direct {p3}, Landroid/content/Intent;-><init>()V

    .line 149
    iget-object v2, p0, Lo/NA;->h:Lo/Nw;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lo/Nw;->b()Ljava/lang/String;

    move-result-object v1

    :cond_3
    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 148
    invoke-virtual {p1, p2, p3}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->setResult(ILandroid/content/Intent;)V

    .line 151
    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->finish()V

    :cond_4
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    sget p3, Lo/NB$ActionBar;->i:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string p2, "inflater.inflate(R.layou\u2026y_frag, container, false)"

    invoke-static {p1, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->onDestroyView()V

    invoke-virtual {p0}, Lo/NA;->c()V

    return-void
.end method

.method public onManagerReady(Lo/Am;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    const-string v0, "manager"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "res"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 157
    invoke-super {p0, p1, p2}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->onManagerReady(Lo/Am;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 158
    invoke-virtual {p0, p1}, Lo/NA;->b(Lo/Am;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "outState"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 75
    iget-object v0, p0, Lo/NA;->h:Lo/Nw;

    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {v0}, Lo/Nw;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SELECTED_OFFER_ID_KEY"

    .line 76
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 0

    .line 84
    invoke-super {p0}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->onStart()V

    .line 85
    invoke-direct {p0}, Lo/NA;->x()V

    return-void
.end method

.method public onStop()V
    .locals 0

    .line 95
    invoke-super {p0}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->onStop()V

    .line 96
    invoke-direct {p0}, Lo/NA;->v()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "view"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    invoke-super {p0, p1, p2}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 64
    new-instance v0, Lo/EditText;

    iget-object v1, p0, Lo/NA;->k:Lo/DatePickerCalendarDelegate$Activity;

    invoke-direct {v0, p1, v1}, Lo/EditText;-><init>(Landroid/view/View;Lo/DatePickerCalendarDelegate$Activity;)V

    const/4 p1, 0x1

    .line 65
    invoke-virtual {v0, p1}, Lo/EditText;->c(Z)V

    .line 64
    iput-object v0, p0, Lo/NA;->l:Lo/EditText;

    .line 67
    invoke-direct {p0}, Lo/NA;->d()Lcom/airbnb/epoxy/EpoxyRecyclerView;

    move-result-object p1

    iget-object v0, p0, Lo/NA;->n:Lcom/netflix/mediaclient/ui/multimonth/MultiMonthEpoxyController;

    check-cast v0, Lo/OfPrimitive;

    invoke-virtual {p1, v0}, Lcom/airbnb/epoxy/EpoxyRecyclerView;->setController(Lo/OfPrimitive;)V

    if-eqz p2, :cond_0

    const-string p1, "SELECTED_OFFER_ID_KEY"

    .line 68
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 69
    iget-object p2, p0, Lo/NA;->n:Lcom/netflix/mediaclient/ui/multimonth/MultiMonthEpoxyController;

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p2, p1}, Lcom/netflix/mediaclient/ui/multimonth/MultiMonthEpoxyController;->setSelectedOfferId(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
