.class public final Lo/Zp;
.super Lcom/netflix/mediaclient/android/fragment/NetflixFrag;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/Zp$Activity;
    }
.end annotation


# static fields
.field static final synthetic b:[Lo/amT;

.field public static final f:Lo/Zp$Activity;


# instance fields
.field private final h:Lo/ams;

.field private final i:Lo/DatePickerCalendarDelegate$Activity;

.field private j:Lo/DatePickerCalendarDelegate;

.field private k:Lo/Zh;

.field private final l:Lo/aka;

.field private n:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lo/amT;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lo/Zp;

    invoke-static {v2}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v2

    const-string v3, "lolopiRecyclerView"

    const-string v4, "getLolopiRecyclerView()Lcom/netflix/android/widgetry/lolomo/LolomoRecyclerView;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v1

    check-cast v1, Lo/amT;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lo/Zp;->b:[Lo/amT;

    new-instance v0, Lo/Zp$Activity;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/Zp$Activity;-><init>(Lo/amc;)V

    sput-object v0, Lo/Zp;->f:Lo/Zp$Activity;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;-><init>()V

    .line 45
    new-instance v0, Lo/Zp$Application;

    invoke-direct {v0, p0}, Lo/Zp$Application;-><init>(Lo/Zp;)V

    check-cast v0, Lo/DatePickerCalendarDelegate$Activity;

    iput-object v0, p0, Lo/Zp;->i:Lo/DatePickerCalendarDelegate$Activity;

    .line 47
    sget v0, Lo/Zr$Application;->c:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lo/Zp;->h:Lo/ams;

    .line 50
    new-instance v0, Lcom/netflix/mediaclient/ui/profiles/icons/impl/OriginalProfileIconsFragment$repository$2;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/profiles/icons/impl/OriginalProfileIconsFragment$repository$2;-><init>(Lo/Zp;)V

    check-cast v0, Lo/alB;

    invoke-static {v0}, Lo/akd;->a(Lo/alB;)Lo/aka;

    move-result-object v0

    iput-object v0, p0, Lo/Zp;->l:Lo/aka;

    return-void
.end method

.method public static final synthetic a(Lo/Zp;)Lo/Zh;
    .locals 0

    .line 34
    iget-object p0, p0, Lo/Zp;->k:Lo/Zh;

    return-object p0
.end method

.method public static final synthetic b(Lo/Zp;)Lio/reactivex/Observable;
    .locals 0

    .line 34
    iget-object p0, p0, Lo/Zp;->e:Lio/reactivex/Observable;

    return-object p0
.end method

.method public static final synthetic c(Lo/Zp;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lo/Zp;->y()V

    return-void
.end method

.method private final d()Lcom/netflix/android/widgetry/lolomo/LolomoRecyclerView;
    .locals 3

    iget-object v0, p0, Lo/Zp;->h:Lo/ams;

    sget-object v1, Lo/Zp;->b:[Lo/amT;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/android/widgetry/lolomo/LolomoRecyclerView;

    return-object v0
.end method

.method public static final synthetic d(Lo/Zp;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lo/Zp;->v()V

    return-void
.end method

.method public static final synthetic e(Lo/Zp;)Lcom/netflix/android/widgetry/lolomo/LolomoRecyclerView;
    .locals 0

    .line 34
    invoke-direct {p0}, Lo/Zp;->d()Lcom/netflix/android/widgetry/lolomo/LolomoRecyclerView;

    move-result-object p0

    return-object p0
.end method

.method private final g()Lo/Zq;
    .locals 1

    iget-object v0, p0, Lo/Zp;->l:Lo/aka;

    invoke-interface {v0}, Lo/aka;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/Zq;

    return-object v0
.end method

.method private final v()V
    .locals 2

    .line 125
    sget-object v0, Lo/Zp;->f:Lo/Zp$Activity;

    check-cast v0, Lo/MessagePdu;

    .line 126
    invoke-direct {p0}, Lo/Zp;->d()Lcom/netflix/android/widgetry/lolomo/LolomoRecyclerView;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lo/aeV;->c(Landroid/view/View;Z)V

    .line 127
    iget-object v0, p0, Lo/Zp;->j:Lo/DatePickerCalendarDelegate;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Lo/DatePickerCalendarDelegate;->b(Z)V

    :cond_0
    return-void
.end method

.method private final y()V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    .line 88
    invoke-virtual {p0}, Lo/Zp;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lo/TagTechnology;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 90
    iget-object v0, p0, Lo/Zp;->j:Lo/DatePickerCalendarDelegate;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Lo/DatePickerCalendarDelegate;->a(Z)V

    .line 91
    :cond_0
    invoke-direct {p0}, Lo/Zp;->d()Lcom/netflix/android/widgetry/lolomo/LolomoRecyclerView;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {v0, v1}, Lo/aeV;->b(Landroid/view/View;Z)V

    .line 94
    invoke-virtual {p0}, Lo/Zp;->ab_()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    const-string v2, "requireNetflixActivity()"

    invoke-static {v0, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 95
    invoke-direct {p0}, Lo/Zp;->g()Lo/Zq;

    move-result-object v2

    const-string v3, "EXTRA_ORIGINAL_ICONS_PROFILE_ID"

    .line 96
    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "EXTRA_ORIGINAL_ICONS_IS_KIDS"

    .line 97
    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 101
    new-instance v1, Lcom/netflix/mediaclient/ui/profiles/icons/impl/OriginalProfileIconsFragment$loadData$1;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/profiles/icons/impl/OriginalProfileIconsFragment$loadData$1;-><init>(Lo/Zp;)V

    check-cast v1, Lo/alA;

    .line 95
    invoke-virtual {v2, v3, v0, v1}, Lo/Zq;->c(Ljava/lang/String;ZLo/alA;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public c()V
    .locals 1

    iget-object v0, p0, Lo/Zp;->n:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public d(Landroid/view/View;)V
    .locals 4

    const-string v0, "view"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    iget v0, p0, Lo/Zp;->c:I

    .line 140
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    .line 142
    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    .line 143
    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    .line 145
    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method public isLoadingData()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    sget p3, Lo/Zr$ActionBar;->b:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->onDestroyView()V

    invoke-virtual {p0}, Lo/Zp;->c()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    const-string v0, "view"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    invoke-super {p0, p1, p2}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 70
    new-instance p2, Lo/DatePickerCalendarDelegate;

    iget-object v0, p0, Lo/Zp;->i:Lo/DatePickerCalendarDelegate$Activity;

    invoke-direct {p2, p1, v0}, Lo/DatePickerCalendarDelegate;-><init>(Landroid/view/View;Lo/DatePickerCalendarDelegate$Activity;)V

    iput-object p2, p0, Lo/Zp;->j:Lo/DatePickerCalendarDelegate;

    .line 71
    iget-object p2, p0, Lo/Zp;->j:Lo/DatePickerCalendarDelegate;

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2, v0}, Lo/DatePickerCalendarDelegate;->a(Z)V

    .line 75
    :cond_0
    invoke-direct {p0}, Lo/Zp;->d()Lcom/netflix/android/widgetry/lolomo/LolomoRecyclerView;

    move-result-object p2

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$Fragment;

    invoke-virtual {p2, v1}, Lcom/netflix/android/widgetry/lolomo/LolomoRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$Fragment;)V

    .line 76
    new-instance p2, Lo/Zh;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "view.context"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p1}, Lo/Zh;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lo/Zp;->k:Lo/Zh;

    .line 79
    invoke-virtual {p0}, Lo/Zp;->getActivity()Lo/Serializable;

    move-result-object p1

    iget-object p2, p0, Lo/Zp;->k:Lo/Zh;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lo/Zh;->a()Lo/PooledStringWriter;

    move-result-object p2

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    new-instance v0, Lcom/netflix/mediaclient/ui/profiles/icons/impl/OriginalProfileIconsFragment$onViewCreated$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/profiles/icons/impl/OriginalProfileIconsFragment$onViewCreated$1;-><init>(Lo/Zp;)V

    check-cast v0, Lo/alN;

    invoke-static {p1, p2, v0}, Lo/NfcA;->c(Ljava/lang/Object;Ljava/lang/Object;Lo/alN;)Ljava/lang/Object;

    .line 83
    invoke-direct {p0}, Lo/Zp;->y()V

    return-void
.end method
