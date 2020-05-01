.class public final Lo/ZQ;
.super Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ZQ$ActionBar;,
        Lo/ZQ$Application;
    }
.end annotation


# static fields
.field static final synthetic k:[Lo/amT;

.field public static final p:Lo/ZQ$Application;


# instance fields
.field private final q:Lo/ams;

.field private final r:Lo/ams;

.field private s:Landroid/view/ViewGroup;

.field private final t:Lo/ams;

.field private u:Ljava/util/HashMap;

.field private v:Lo/ZL;

.field private w:Lo/EditText;

.field private final y:Lo/ams;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lo/ZQ;

    const/4 v1, 0x4

    new-array v1, v1, [Lo/amT;

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "searchResultsViewGroup"

    const-string v5, "getSearchResultsViewGroup()Landroid/view/ViewGroup;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "searchMessageContainer"

    const-string v5, "getSearchMessageContainer()Landroid/view/ViewGroup;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "searchMessageTitle"

    const-string v5, "getSearchMessageTitle()Lcom/netflix/mediaclient/android/widget/NetflixTextView;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v0

    const-string v3, "searchMessageSubtext"

    const-string v4, "getSearchMessageSubtext()Lcom/netflix/mediaclient/android/widget/NetflixTextView;"

    invoke-direct {v2, v0, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v0

    check-cast v0, Lo/amT;

    const/4 v2, 0x3

    aput-object v0, v1, v2

    sput-object v1, Lo/ZQ;->k:[Lo/amT;

    new-instance v0, Lo/ZQ$Application;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/ZQ$Application;-><init>(Lo/amc;)V

    sput-object v0, Lo/ZQ;->p:Lo/ZQ$Application;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;-><init>()V

    .line 41
    sget v0, Lo/Zt$Application;->w:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lo/ZQ;->r:Lo/ams;

    .line 42
    sget v0, Lo/Zt$Application;->D:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lo/ZQ;->t:Lo/ams;

    .line 43
    sget v0, Lo/Zt$Application;->a:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lo/ZQ;->q:Lo/ams;

    .line 44
    sget v0, Lo/Zt$Application;->e:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lo/ZQ;->y:Lo/ams;

    return-void
.end method

.method public static final T()Lo/ZQ;
    .locals 1

    sget-object v0, Lo/ZQ;->p:Lo/ZQ$Application;

    invoke-virtual {v0}, Lo/ZQ$Application;->c()Lo/ZQ;

    move-result-object v0

    return-object v0
.end method

.method private final U()Landroid/view/ViewGroup;
    .locals 3

    iget-object v0, p0, Lo/ZQ;->r:Lo/ams;

    sget-object v1, Lo/ZQ;->k:[Lo/amT;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method

.method private final Y()Landroid/view/ViewGroup;
    .locals 3

    iget-object v0, p0, Lo/ZQ;->t:Lo/ams;

    sget-object v1, Lo/ZQ;->k:[Lo/amT;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method

.method private final Z()Lo/ImageSwitcher;
    .locals 3

    iget-object v0, p0, Lo/ZQ;->q:Lo/ams;

    sget-object v1, Lo/ZQ;->k:[Lo/amT;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ImageSwitcher;

    return-object v0
.end method

.method public static final synthetic a(Lo/ZQ;Z)V
    .locals 0

    .line 37
    iput-boolean p1, p0, Lo/ZQ;->i:Z

    return-void
.end method

.method private final aa()Lo/ImageSwitcher;
    .locals 3

    iget-object v0, p0, Lo/ZQ;->y:Lo/ams;

    sget-object v1, Lo/ZQ;->k:[Lo/amT;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ImageSwitcher;

    return-object v0
.end method

.method public static final synthetic c(Lo/ZQ;)Ljava/lang/Long;
    .locals 0

    .line 37
    iget-object p0, p0, Lo/ZQ;->j:Ljava/lang/Long;

    return-object p0
.end method

.method public static final synthetic c(Lo/ZQ;Ljava/lang/Long;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lo/ZQ;->j:Ljava/lang/Long;

    return-void
.end method

.method public static final synthetic d(Lo/ZQ;Lo/AH;Ljava/lang/String;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Lo/ZQ;->e(Lo/AH;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic d(Lo/ZQ;Z)V
    .locals 0

    .line 37
    invoke-virtual {p0, p1}, Lo/ZQ;->b(Z)V

    return-void
.end method

.method private final e(Landroid/view/View;)V
    .locals 1

    .line 106
    sget v0, Lo/Zt$Application;->o:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lo/ZQ;->h:Landroid/view/ViewGroup;

    .line 107
    iget-object v0, p0, Lo/ZQ;->h:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 108
    invoke-virtual {p0}, Lo/ZQ;->v()V

    .line 110
    :cond_0
    sget v0, Lo/Zt$Application;->l:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lo/ZQ;->s:Landroid/view/ViewGroup;

    return-void
.end method

.method private final e(Lo/AH;Ljava/lang/String;)V
    .locals 4

    .line 155
    iget-object v0, p0, Lo/ZQ;->w:Lo/EditText;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Lo/EditText;->a(Z)V

    .line 158
    :cond_0
    iget-object v0, p0, Lo/ZQ;->v:Lo/ZL;

    if-nez v0, :cond_1

    .line 159
    invoke-virtual {p0}, Lo/ZQ;->getActivity()Lo/Serializable;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lo/Serializable;->getSupportFragmentManager()Lo/SerializablePermission;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 160
    sget-object v2, Lo/ZL;->v:Lo/ZL$ActionBar;

    .line 161
    invoke-interface {p1}, Lo/AH;->getLolomoId()Ljava/lang/String;

    move-result-object p1

    const-string v3, "lolomoSummary.lolomoId"

    invoke-static {p1, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 163
    sget-object v3, Lcom/netflix/cl/model/AppView;->searchSuggestionResults:Lcom/netflix/cl/model/AppView;

    .line 160
    invoke-virtual {v2, p1, p2, v3, v1}, Lo/ZL$ActionBar;->c(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/cl/model/AppView;Z)Lo/ZL;

    move-result-object p1

    .line 165
    iput-object p1, p0, Lo/ZQ;->v:Lo/ZL;

    .line 166
    invoke-virtual {v0}, Lo/SerializablePermission;->e()Lo/UnsupportedEncodingException;

    move-result-object v0

    const-string v2, "fragmentManager.beginTransaction()"

    invoke-static {v0, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 167
    sget v2, Lo/Zt$Application;->l:I

    check-cast p1, Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v2, p1}, Lo/UnsupportedEncodingException;->b(ILandroidx/fragment/app/Fragment;)Lo/UnsupportedEncodingException;

    .line 169
    invoke-virtual {v0}, Lo/UnsupportedEncodingException;->c()V

    .line 173
    :cond_1
    invoke-virtual {p0, v1}, Lo/ZQ;->b(Z)V

    .line 174
    invoke-direct {p0}, Lo/ZQ;->Y()Landroid/view/ViewGroup;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 176
    invoke-virtual {p0, v0}, Lo/ZQ;->e(I)V

    .line 177
    iget-object p1, p0, Lo/ZQ;->s:Landroid/view/ViewGroup;

    if-eqz p1, :cond_2

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 180
    :cond_2
    iget-object p1, p0, Lo/ZQ;->v:Lo/ZL;

    if-eqz p1, :cond_3

    invoke-virtual {p1, p2}, Lo/ZL;->d(Ljava/lang/String;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public J()V
    .locals 3

    const/4 v0, 0x0

    .line 134
    invoke-virtual {p0, v0}, Lo/ZQ;->b(Z)V

    .line 135
    iget-object v1, p0, Lo/ZQ;->w:Lo/EditText;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Lo/EditText;->a(Z)V

    .line 137
    :cond_0
    invoke-direct {p0}, Lo/ZQ;->Z()Lo/ImageSwitcher;

    move-result-object v1

    invoke-static {}, Lcom/netflix/mediaclient/ui/search/SearchUtils;->m()I

    move-result v2

    invoke-virtual {v1, v2}, Lo/ImageSwitcher;->setText(I)V

    .line 138
    invoke-direct {p0}, Lo/ZQ;->aa()Lo/ImageSwitcher;

    move-result-object v1

    invoke-static {}, Lcom/netflix/mediaclient/ui/search/SearchUtils;->k()I

    move-result v2

    invoke-virtual {v1, v2}, Lo/ImageSwitcher;->setText(I)V

    .line 139
    invoke-direct {p0}, Lo/ZQ;->Y()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    const/16 v0, 0x8

    .line 141
    invoke-virtual {p0, v0}, Lo/ZQ;->e(I)V

    .line 142
    iget-object v1, p0, Lo/ZQ;->s:Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public K()V
    .locals 4

    .line 146
    iget-object v0, p0, Lo/ZQ;->w:Lo/EditText;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget v2, Lo/Zt$Fragment;->b:I

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3, v1}, Lo/EditText;->e(IZZ)V

    .line 147
    :cond_0
    invoke-virtual {p0, v1}, Lo/ZQ;->b(Z)V

    .line 148
    invoke-direct {p0}, Lo/ZQ;->Y()Landroid/view/ViewGroup;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 150
    invoke-virtual {p0, v1}, Lo/ZQ;->e(I)V

    .line 151
    iget-object v0, p0, Lo/ZQ;->s:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public M()V
    .locals 4

    .line 114
    iget-object v0, p0, Lo/ZQ;->f:Lo/OnDateChangedListener;

    if-eqz v0, :cond_2

    const-string v1, "searchActionBar"

    .line 115
    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lo/OnDateChangedListener;->m()Landroid/widget/SearchView;

    move-result-object v1

    const-string v2, "searchActionBar.searchView"

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    const-string v2, ""

    .line 116
    invoke-virtual {v0, v2, v1}, Lo/OnDateChangedListener;->e(Ljava/lang/String;Z)V

    .line 118
    :cond_0
    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    sget v1, Lo/Zt$Fragment;->l:I

    goto :goto_0

    :cond_1
    sget v1, Lo/Zt$Fragment;->n:I

    :goto_0
    invoke-virtual {p0, v1}, Lo/ZQ;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "if (BrowseExperience.isK\u2026(R.string.search_netflix)"

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    invoke-virtual {v0, v1}, Lo/OnDateChangedListener;->a(Ljava/lang/String;)V

    :cond_2
    const/4 v0, 0x0

    .line 122
    invoke-virtual {p0, v0}, Lo/ZQ;->b(Z)V

    .line 123
    iget-object v1, p0, Lo/ZQ;->w:Lo/EditText;

    if-eqz v1, :cond_3

    invoke-virtual {v1, v0}, Lo/EditText;->a(Z)V

    .line 125
    :cond_3
    invoke-direct {p0}, Lo/ZQ;->Z()Lo/ImageSwitcher;

    move-result-object v1

    invoke-static {}, Lcom/netflix/mediaclient/ui/search/SearchUtils;->i()I

    move-result v2

    invoke-virtual {v1, v2}, Lo/ImageSwitcher;->setText(I)V

    .line 126
    invoke-direct {p0}, Lo/ZQ;->aa()Lo/ImageSwitcher;

    move-result-object v1

    invoke-static {}, Lcom/netflix/mediaclient/ui/search/SearchUtils;->j()I

    move-result v2

    invoke-virtual {v1, v2}, Lo/ImageSwitcher;->setText(I)V

    .line 127
    invoke-direct {p0}, Lo/ZQ;->Y()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {p0}, Lo/ZQ;->F()Z

    move-result v2

    const/16 v3, 0x8

    if-eqz v2, :cond_4

    const/16 v2, 0x8

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 129
    invoke-virtual {p0}, Lo/ZQ;->F()Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_2

    :cond_5
    const/16 v0, 0x8

    :goto_2
    invoke-virtual {p0, v0}, Lo/ZQ;->e(I)V

    .line 130
    iget-object v0, p0, Lo/ZQ;->s:Landroid/view/ViewGroup;

    if-eqz v0, :cond_6

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_6
    return-void
.end method

.method public V()V
    .locals 1

    iget-object v0, p0, Lo/ZQ;->u:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public final W()I
    .locals 1

    .line 57
    sget v0, Lo/Zt$LoaderManager;->w:I

    return v0
.end method

.method public final a(Landroid/view/View;)V
    .locals 2

    const-string v0, "content"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    new-instance v0, Lo/EditText;

    iget-object v1, p0, Lo/ZQ;->n:Lo/DatePickerCalendarDelegate$Activity;

    invoke-direct {v0, p1, v1}, Lo/EditText;-><init>(Landroid/view/View;Lo/DatePickerCalendarDelegate$Activity;)V

    iput-object v0, p0, Lo/ZQ;->w:Lo/EditText;

    .line 102
    iget-object p1, p0, Lo/ZQ;->w:Lo/EditText;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lo/EditText;->a(Z)V

    :cond_0
    return-void
.end method

.method public d(Landroid/view/View;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 184
    invoke-direct {p0}, Lo/ZQ;->U()Landroid/view/ViewGroup;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lo/ZQ;->b(Landroid/view/View;)V

    return-void
.end method

.method public e(Lo/zG;Ljava/lang/String;J)V
    .locals 8

    const-string v0, "browse"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "query"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    sget-object v0, Lo/TextViewMetrics;->e:Lo/TextViewMetrics;

    .line 234
    const-class v0, Landroid/content/Context;

    invoke-static {v0}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 90
    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->m:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    invoke-static {v0, v1}, Lo/Lq;->b(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;)I

    move-result v6

    .line 93
    invoke-virtual {p0}, Lo/ZQ;->Q()Lcom/netflix/mediaclient/browse/api/task/TaskMode;

    move-result-object v4

    .line 96
    new-instance v0, Lo/ZQ$ActionBar;

    invoke-direct {v0, p0, p2, p3, p4}, Lo/ZQ$ActionBar;-><init>(Lo/ZQ;Ljava/lang/String;J)V

    move-object v7, v0

    check-cast v7, Lo/zU;

    const/4 v5, 0x6

    move-object v2, p1

    move-object v3, p2

    .line 91
    invoke-interface/range {v2 .. v7}, Lo/zG;->e(Ljava/lang/String;Lcom/netflix/mediaclient/browse/api/task/TaskMode;IILo/zU;)Z

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    const-string p2, "inflater"

    invoke-static {p1, p2}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    invoke-virtual {p0}, Lo/ZQ;->W()I

    move-result p2

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const-string p2, "content"

    .line 61
    invoke-static {p1, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lo/ZQ;->e(Landroid/view/View;)V

    .line 62
    invoke-virtual {p0, p1}, Lo/ZQ;->a(Landroid/view/View;)V

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 84
    invoke-super {p0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->onDestroyView()V

    .line 85
    sget-object v0, Lcom/netflix/cl/model/AppView;->searchSuggestionResults:Lcom/netflix/cl/model/AppView;

    invoke-static {v0}, Lo/Zy;->d(Lcom/netflix/cl/model/AppView;)V

    .line 86
    invoke-virtual {p0}, Lo/ZQ;->V()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "view"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    invoke-super {p0, p1, p2}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 69
    invoke-virtual {p0}, Lo/ZQ;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v0, "activity"

    .line 70
    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getNetflixActionBar()Lcom/netflix/mediaclient/android/widget/NetflixActionBar;

    move-result-object v0

    .line 71
    instance-of v1, v0, Lo/OnDateChangedListener;

    if-eqz v1, :cond_0

    .line 72
    check-cast v0, Lo/OnDateChangedListener;

    iput-object v0, p0, Lo/ZQ;->f:Lo/OnDateChangedListener;

    .line 75
    :cond_0
    invoke-virtual {p0, p1}, Lo/ZQ;->d(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    .line 78
    :cond_1
    invoke-virtual {p0, p2}, Lo/ZQ;->b(Landroid/os/Bundle;)V

    .line 80
    invoke-virtual {p0}, Lo/ZQ;->N()V

    return-void
.end method
