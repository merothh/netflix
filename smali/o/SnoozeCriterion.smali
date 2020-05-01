.class public final Lo/SnoozeCriterion;
.super Lo/WebChromeClient;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/SnoozeCriterion$Application;,
        Lo/SnoozeCriterion$StateListAnimator;
    }
.end annotation


# static fields
.field public static final e:Lo/SnoozeCriterion$StateListAnimator;


# instance fields
.field private b:Lo/SnoozeCriterion$Application;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/acquisition2/components/countrySelector/PhoneCodeListWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lo/ZenModeConfig;

.field private h:Ljava/lang/Long;

.field private j:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/SnoozeCriterion$StateListAnimator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/SnoozeCriterion$StateListAnimator;-><init>(Lo/amc;)V

    sput-object v0, Lo/SnoozeCriterion;->e:Lo/SnoozeCriterion$StateListAnimator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lo/WebChromeClient;-><init>()V

    return-void
.end method

.method public static final synthetic a(Lo/SnoozeCriterion;)Lo/ZenModeConfig;
    .locals 0

    .line 21
    iget-object p0, p0, Lo/SnoozeCriterion;->d:Lo/ZenModeConfig;

    return-object p0
.end method

.method public static final b(Lcom/netflix/mediaclient/service/webclient/model/leafs/PhoneCodesData;Ljava/lang/String;)Lo/SnoozeCriterion;
    .locals 1

    sget-object v0, Lo/SnoozeCriterion;->e:Lo/SnoozeCriterion$StateListAnimator;

    invoke-virtual {v0, p0, p1}, Lo/SnoozeCriterion$StateListAnimator;->b(Lcom/netflix/mediaclient/service/webclient/model/leafs/PhoneCodesData;Ljava/lang/String;)Lo/SnoozeCriterion;

    move-result-object p0

    return-object p0
.end method

.method private final c()V
    .locals 2

    .line 93
    invoke-virtual {p0}, Lo/SnoozeCriterion;->getActivity()Lo/Serializable;

    move-result-object v0

    instance-of v0, v0, Lo/SnoozeCriterion$Application;

    if-eqz v0, :cond_1

    .line 94
    invoke-virtual {p0}, Lo/SnoozeCriterion;->getActivity()Lo/Serializable;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lo/SnoozeCriterion$Application;

    iput-object v0, p0, Lo/SnoozeCriterion;->b:Lo/SnoozeCriterion$Application;

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type com.netflix.mediaclient.acquisition2.components.countrySelector.CountrySelectorTakeoverDialogFragment.OnCountrySelectedListener"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 99
    :cond_1
    invoke-virtual {p0}, Lo/SnoozeCriterion;->dismiss()V

    :goto_0
    return-void
.end method

.method public static final synthetic e(Lo/SnoozeCriterion;)Ljava/util/List;
    .locals 0

    .line 21
    iget-object p0, p0, Lo/SnoozeCriterion;->c:Ljava/util/List;

    return-object p0
.end method

.method private final e()V
    .locals 5

    .line 80
    iget-object v0, p0, Lo/SnoozeCriterion;->h:Ljava/lang/Long;

    if-nez v0, :cond_1

    .line 81
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 82
    invoke-virtual {p0}, Lo/SnoozeCriterion;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "currentLocationId"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "resolvedCountry"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 83
    sget-object v1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    .line 84
    new-instance v2, Lcom/netflix/cl/model/event/session/Presentation;

    .line 85
    sget-object v3, Lcom/netflix/cl/model/AppView;->countrySelector:Lcom/netflix/cl/model/AppView;

    .line 86
    new-instance v4, Lo/SnoozeCriterion$LoaderManager;

    invoke-direct {v4, v0}, Lo/SnoozeCriterion$LoaderManager;-><init>(Lorg/json/JSONObject;)V

    check-cast v4, Lcom/netflix/cl/model/TrackingInfo;

    .line 84
    invoke-direct {v2, v3, v4}, Lcom/netflix/cl/model/event/session/Presentation;-><init>(Lcom/netflix/cl/model/AppView;Lcom/netflix/cl/model/TrackingInfo;)V

    check-cast v2, Lcom/netflix/cl/model/event/session/Session;

    .line 83
    invoke-virtual {v1, v2}, Lcom/netflix/cl/Logger;->startSession(Lcom/netflix/cl/model/event/session/Session;)Ljava/lang/Long;

    :cond_1
    return-void
.end method


# virtual methods
.method public b()V
    .locals 1

    iget-object v0, p0, Lo/SnoozeCriterion;->j:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public final e(Landroid/view/View;)V
    .locals 2

    const-string v0, "v"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->tB:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    if-eqz p1, :cond_0

    .line 105
    new-instance v0, Lo/SnoozeCriterion$Activity;

    invoke-direct {v0, p0}, Lo/SnoozeCriterion$Activity;-><init>(Lo/SnoozeCriterion;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 106
    sget v0, Lcom/netflix/mediaclient/ui/R$PendingIntent;->e:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->inflateMenu(I)V

    :cond_1
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 107
    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object p1

    if-eqz p1, :cond_2

    sget v1, Lcom/netflix/mediaclient/ui/R$Fragment;->qM:I

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    goto :goto_0

    :cond_2
    move-object p1, v0

    :goto_0
    if-eqz p1, :cond_3

    .line 108
    invoke-interface {p1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v0

    :cond_3
    check-cast v0, Landroid/widget/SearchView;

    if-eqz v0, :cond_4

    .line 109
    new-instance v1, Lo/SnoozeCriterion$TaskDescription;

    invoke-direct {v1, p0}, Lo/SnoozeCriterion$TaskDescription;-><init>(Lo/SnoozeCriterion;)V

    check-cast v1, Landroid/widget/SearchView$OnQueryTextListener;

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    :cond_4
    if-eqz v0, :cond_5

    .line 126
    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->pP:I

    invoke-virtual {p0, v1}, Lo/SnoozeCriterion;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    :cond_5
    if-eqz v0, :cond_6

    const/4 v1, 0x0

    .line 127
    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setIconified(Z)V

    :cond_6
    if-eqz v0, :cond_7

    .line 128
    invoke-virtual {v0}, Landroid/widget/SearchView;->requestFocusFromTouch()Z

    :cond_7
    if-eqz v0, :cond_8

    .line 129
    new-instance v1, Lo/SnoozeCriterion$ActionBar;

    invoke-direct {v1, p1}, Lo/SnoozeCriterion$ActionBar;-><init>(Landroid/view/MenuItem;)V

    check-cast v1, Landroid/widget/SearchView$OnCloseListener;

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setOnCloseListener(Landroid/widget/SearchView$OnCloseListener;)V

    :cond_8
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 47
    invoke-super {p0, p1}, Lo/WebChromeClient;->onCreate(Landroid/os/Bundle;)V

    .line 48
    invoke-virtual {p0}, Lo/SnoozeCriterion;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v1, "currentLocationId"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    .line 49
    :goto_0
    invoke-direct {p0}, Lo/SnoozeCriterion;->c()V

    .line 52
    invoke-virtual {p0}, Lo/SnoozeCriterion;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, "phoneCodesData"

    .line 50
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object v1, v0

    :goto_1
    instance-of v2, v1, Lcom/netflix/mediaclient/service/webclient/model/leafs/PhoneCodesData;

    if-nez v2, :cond_2

    move-object v1, v0

    :cond_2
    check-cast v1, Lcom/netflix/mediaclient/service/webclient/model/leafs/PhoneCodesData;

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/PhoneCodesData;->getPhoneCodes()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_a

    check-cast v1, Ljava/lang/Iterable;

    .line 140
    new-instance v0, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v1, v2}, Lo/akz;->b(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .line 141
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 142
    check-cast v2, Lcom/netflix/mediaclient/service/webclient/model/leafs/PhoneCode;

    .line 51
    new-instance v4, Lcom/netflix/mediaclient/acquisition2/components/countrySelector/PhoneCodeListWrapper;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/PhoneCode;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p1, v3}, Lo/anv;->e(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    invoke-direct {v4, v2, v3}, Lcom/netflix/mediaclient/acquisition2/components/countrySelector/PhoneCodeListWrapper;-><init>(Lcom/netflix/mediaclient/service/webclient/model/leafs/PhoneCode;Z)V

    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 143
    :cond_3
    check-cast v0, Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 144
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/Collection;

    .line 145
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/netflix/mediaclient/acquisition2/components/countrySelector/PhoneCodeListWrapper;

    .line 52
    invoke-virtual {v2}, Lcom/netflix/mediaclient/acquisition2/components/countrySelector/PhoneCodeListWrapper;->b()Lcom/netflix/mediaclient/service/webclient/model/leafs/PhoneCode;

    move-result-object v4

    invoke-virtual {v4}, Lcom/netflix/mediaclient/service/webclient/model/leafs/PhoneCode;->getId()Ljava/lang/String;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_5

    const/4 v4, 0x1

    goto :goto_4

    :cond_5
    const/4 v4, 0x0

    :goto_4
    if-nez v4, :cond_8

    invoke-virtual {v2}, Lcom/netflix/mediaclient/acquisition2/components/countrySelector/PhoneCodeListWrapper;->b()Lcom/netflix/mediaclient/service/webclient/model/leafs/PhoneCode;

    move-result-object v4

    invoke-virtual {v4}, Lcom/netflix/mediaclient/service/webclient/model/leafs/PhoneCode;->getName()Ljava/lang/String;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_6

    const/4 v4, 0x1

    goto :goto_5

    :cond_6
    const/4 v4, 0x0

    :goto_5
    if-nez v4, :cond_8

    invoke-virtual {v2}, Lcom/netflix/mediaclient/acquisition2/components/countrySelector/PhoneCodeListWrapper;->b()Lcom/netflix/mediaclient/service/webclient/model/leafs/PhoneCode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/PhoneCode;->getCode()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_7

    const/4 v2, 0x1

    goto :goto_6

    :cond_7
    const/4 v2, 0x0

    :goto_6
    if-nez v2, :cond_8

    const/4 v5, 0x1

    :cond_8
    if-eqz v5, :cond_4

    invoke-interface {p1, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 146
    :cond_9
    move-object v0, p1

    check-cast v0, Ljava/util/List;

    :cond_a
    iput-object v0, p0, Lo/SnoozeCriterion;->c:Ljava/util/List;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    sget p3, Lcom/netflix/mediaclient/ui/R$Dialog;->ah:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string p2, "v"

    .line 58
    invoke-static {p1, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    sget p2, Lcom/netflix/mediaclient/ui/R$Fragment;->qp:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    const/4 p3, 0x1

    .line 59
    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 61
    new-instance p3, Lo/ZenModeConfig;

    iget-object v0, p0, Lo/SnoozeCriterion;->b:Lo/SnoozeCriterion$Application;

    iget-object v1, p0, Lo/SnoozeCriterion;->c:Ljava/util/List;

    invoke-direct {p3, v0, v1}, Lo/ZenModeConfig;-><init>(Lo/SnoozeCriterion$Application;Ljava/util/List;)V

    iput-object p3, p0, Lo/SnoozeCriterion;->d:Lo/ZenModeConfig;

    const-string p3, "countriesList"

    .line 62
    invoke-static {p2, p3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p3, p0, Lo/SnoozeCriterion;->d:Lo/ZenModeConfig;

    check-cast p3, Landroidx/recyclerview/widget/RecyclerView$Activity;

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Activity;)V

    .line 64
    invoke-virtual {p0, p1}, Lo/SnoozeCriterion;->e(Landroid/view/View;)V

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 75
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    iget-object v1, p0, Lo/SnoozeCriterion;->h:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Lcom/netflix/cl/Logger;->endSession(Ljava/lang/Long;)Z

    .line 76
    invoke-super {p0}, Lo/WebChromeClient;->onDestroy()V

    return-void
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lo/WebChromeClient;->onDestroyView()V

    invoke-virtual {p0}, Lo/SnoozeCriterion;->b()V

    return-void
.end method

.method public onStart()V
    .locals 2

    .line 69
    invoke-super {p0}, Lo/WebChromeClient;->onStart()V

    .line 70
    invoke-virtual {p0}, Lo/SnoozeCriterion;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, -0x1

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setLayout(II)V

    .line 71
    :cond_0
    invoke-direct {p0}, Lo/SnoozeCriterion;->e()V

    return-void
.end method
