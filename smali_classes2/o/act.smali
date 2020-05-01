.class public final Lo/act;
.super Lo/WebMessagePort;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/act$Application;
    }
.end annotation


# static fields
.field static final synthetic h:[Lo/amT;

.field public static final j:Lo/act$Application;


# instance fields
.field private f:I

.field private i:Ljava/lang/String;

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice;",
            ">;"
        }
    .end annotation
.end field

.field private final l:Lio/reactivex/subjects/BehaviorSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/BehaviorSubject<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final m:Lo/ams;

.field private final n:Lo/DatePickerCalendarDelegate$Activity;

.field private o:Lo/EditText;

.field private final p:Lcom/netflix/mediaclient/ui/ums/planselect/PlanSelectEpoxyController;

.field private final q:Lio/reactivex/subjects/ReplaySubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/ReplaySubject<",
            "Lo/Am;",
            ">;"
        }
    .end annotation
.end field

.field private t:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lo/amT;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lo/act;

    invoke-static {v2}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v2

    const-string v3, "recyclerView"

    const-string v4, "getRecyclerView()Lcom/airbnb/epoxy/EpoxyRecyclerView;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v1

    check-cast v1, Lo/amT;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lo/act;->h:[Lo/amT;

    new-instance v0, Lo/act$Application;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/act$Application;-><init>(Lo/amc;)V

    sput-object v0, Lo/act;->j:Lo/act$Application;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 41
    invoke-direct {p0}, Lo/WebMessagePort;-><init>()V

    const/4 v0, -0x1

    .line 44
    iput v0, p0, Lo/act;->f:I

    .line 48
    new-instance v0, Lo/act$TaskDescription;

    invoke-direct {v0, p0}, Lo/act$TaskDescription;-><init>(Lo/act;)V

    check-cast v0, Lo/DatePickerCalendarDelegate$Activity;

    iput-object v0, p0, Lo/act;->n:Lo/DatePickerCalendarDelegate$Activity;

    .line 50
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->mM:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lo/act;->m:Lo/ams;

    .line 53
    invoke-static {}, Lio/reactivex/subjects/BehaviorSubject;->create()Lio/reactivex/subjects/BehaviorSubject;

    move-result-object v0

    const-string v1, "BehaviorSubject.create()"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lo/act;->l:Lio/reactivex/subjects/BehaviorSubject;

    .line 54
    invoke-static {}, Lio/reactivex/subjects/ReplaySubject;->create()Lio/reactivex/subjects/ReplaySubject;

    move-result-object v0

    const-string v1, "ReplaySubject.create()"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lo/act;->q:Lio/reactivex/subjects/ReplaySubject;

    .line 56
    new-instance v0, Lcom/netflix/mediaclient/ui/ums/planselect/PlanSelectEpoxyController;

    iget-object v1, p0, Lo/act;->l:Lio/reactivex/subjects/BehaviorSubject;

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/ui/ums/planselect/PlanSelectEpoxyController;-><init>(Lio/reactivex/subjects/BehaviorSubject;)V

    iput-object v0, p0, Lo/act;->p:Lcom/netflix/mediaclient/ui/ums/planselect/PlanSelectEpoxyController;

    return-void
.end method

.method private final D()V
    .locals 2

    .line 257
    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->ot:I

    invoke-virtual {p0, v0}, Lo/act;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lo/adk;->a(Ljava/lang/String;I)V

    return-void
.end method

.method private final a(Landroid/view/View;)V
    .locals 11

    .line 212
    iget-object v0, p0, Lo/act;->k:Ljava/util/List;

    if-eqz v0, :cond_5

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice;

    invoke-virtual {v4}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice;->getLatestPlanID()I

    move-result v4

    iget-object v5, p0, Lo/act;->l:Lio/reactivex/subjects/BehaviorSubject;

    invoke-virtual {v5}, Lio/reactivex/subjects/BehaviorSubject;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    if-nez v5, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v4, v5, :cond_2

    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_0

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_2
    check-cast v1, Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice;

    if-eqz v1, :cond_5

    .line 214
    sget-object v0, Lo/act;->j:Lo/act$Application;

    iget-object v4, p0, Lo/act;->i:Ljava/lang/String;

    invoke-static {v0, v4}, Lo/act$Application;->c(Lo/act$Application;Ljava/lang/String;)Lkotlin/Pair;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/Pair;->d()Ljava/lang/Object;

    move-result-object v4

    move-object v8, v4

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v0}, Lkotlin/Pair;->e()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Ljava/lang/String;

    .line 215
    invoke-virtual {p1, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 216
    iget-object p1, p0, Lo/act;->o:Lo/EditText;

    if-eqz p1, :cond_4

    invoke-virtual {p1, v2}, Lo/EditText;->c(Z)V

    .line 217
    :cond_4
    sget-object p1, Lo/acn;->d:Lo/acn;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice;->getLatestPlanID()I

    move-result v0

    invoke-virtual {p1, v0}, Lo/acn;->a(I)V

    .line 218
    invoke-virtual {p0}, Lo/act;->ac_()Lo/Am;

    move-result-object v5

    .line 219
    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice;->getLatestPlanID()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 220
    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice;->getLatestPriceTier()Ljava/lang/String;

    move-result-object v7

    .line 223
    new-instance p1, Lo/act$ActionBar;

    sget-object v0, Lo/act;->j:Lo/act$Application;

    invoke-virtual {v0}, Lo/act$Application;->getLogTag()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p0, v1, v0}, Lo/act$ActionBar;-><init>(Lo/act;Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice;Ljava/lang/String;)V

    move-object v10, p1

    check-cast v10, Lo/zU;

    .line 218
    invoke-virtual/range {v5 .. v10}, Lo/Am;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lo/zU;)V

    :cond_5
    return-void
.end method

.method public static final synthetic a(Lo/act;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lo/act;->v()V

    return-void
.end method

.method public static final synthetic b(Lo/act;)Lo/EditText;
    .locals 0

    .line 41
    iget-object p0, p0, Lo/act;->o:Lo/EditText;

    return-object p0
.end method

.method public static final synthetic b(Lo/act;Landroid/view/View;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lo/act;->a(Landroid/view/View;)V

    return-void
.end method

.method private final c(Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoiceResponse;)V
    .locals 2

    .line 193
    iget-object v0, p0, Lo/act;->o:Lo/EditText;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lo/EditText;->a(Z)V

    .line 194
    :cond_0
    invoke-direct {p0}, Lo/act;->y()Lcom/airbnb/epoxy/EpoxyRecyclerView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/airbnb/epoxy/EpoxyRecyclerView;->setVisibility(I)V

    .line 195
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoiceResponse;->choices()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lo/act;->k:Ljava/util/List;

    .line 197
    iget-object v0, p0, Lo/act;->p:Lcom/netflix/mediaclient/ui/ums/planselect/PlanSelectEpoxyController;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/ums/planselect/PlanSelectEpoxyController;->setData(Ljava/lang/Object;)V

    .line 198
    invoke-virtual {p0}, Lo/act;->c()V

    .line 200
    invoke-direct {p0}, Lo/act;->y()Lcom/airbnb/epoxy/EpoxyRecyclerView;

    move-result-object v0

    new-instance v1, Lo/act$StateListAnimator;

    invoke-direct {v1, p0, p1}, Lo/act$StateListAnimator;-><init>(Lo/act;Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoiceResponse;)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/airbnb/epoxy/EpoxyRecyclerView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static final synthetic c(Lo/act;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lo/act;->D()V

    return-void
.end method

.method public static final synthetic c(Lo/act;Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoiceResponse;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lo/act;->c(Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoiceResponse;)V

    return-void
.end method

.method public static final synthetic d(Lo/act;)Lio/reactivex/subjects/BehaviorSubject;
    .locals 0

    .line 41
    iget-object p0, p0, Lo/act;->l:Lio/reactivex/subjects/BehaviorSubject;

    return-object p0
.end method

.method private final d(Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoiceResponse;)V
    .locals 3

    .line 250
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoiceResponse;->choices()Ljava/util/List;

    move-result-object p1

    const-string v0, "productChoiceResponse.choices()"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice;

    const-string v2, "it"

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice;->isCurrent()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    check-cast v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice;

    if-eqz v0, :cond_2

    .line 252
    iget-object p1, p0, Lo/act;->l:Lio/reactivex/subjects/BehaviorSubject;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice;->getLatestPlanID()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public static final synthetic d(Lo/act;Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoiceResponse;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lo/act;->d(Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoiceResponse;)V

    return-void
.end method

.method public static final synthetic e(Lo/act;)I
    .locals 0

    .line 41
    iget p0, p0, Lo/act;->f:I

    return p0
.end method

.method private final e(Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice;)V
    .locals 4

    .line 261
    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->or:I

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice;->planName()Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {p0, v0, v2}, Lo/act;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 260
    invoke-static {p1, v1}, Lo/adk;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public static final synthetic e(Lo/act;Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lo/act;->e(Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice;)V

    return-void
.end method

.method public static final synthetic h(Lo/act;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lo/act;->x()V

    return-void
.end method

.method private final v()V
    .locals 2

    .line 245
    invoke-virtual {p0}, Lo/act;->requireActivity()Lo/Serializable;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lo/Serializable;->setResult(I)V

    .line 246
    invoke-virtual {p0}, Lo/act;->requireActivity()Lo/Serializable;

    move-result-object v0

    invoke-virtual {v0}, Lo/Serializable;->finish()V

    return-void
.end method

.method private final x()V
    .locals 7

    .line 170
    iget-object v0, p0, Lo/act;->o:Lo/EditText;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lo/EditText;->c(Z)V

    .line 171
    :cond_0
    iget-object v0, p0, Lo/act;->q:Lio/reactivex/subjects/ReplaySubject;

    move-object v1, v0

    check-cast v1, Lio/reactivex/Observable;

    .line 172
    new-instance v0, Lcom/netflix/mediaclient/ui/ums/planselect/PlanSelectFragment$fetchData$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/ums/planselect/PlanSelectFragment$fetchData$1;-><init>(Lo/act;)V

    move-object v4, v0

    check-cast v4, Lo/alA;

    const/4 v3, 0x0

    .line 188
    sget-object v0, Lcom/netflix/mediaclient/ui/ums/planselect/PlanSelectFragment$fetchData$2;->c:Lcom/netflix/mediaclient/ui/ums/planselect/PlanSelectFragment$fetchData$2;

    move-object v2, v0

    check-cast v2, Lo/alA;

    const/4 v5, 0x2

    const/4 v6, 0x0

    .line 171
    invoke-static/range {v1 .. v6}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Observable;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private final y()Lcom/airbnb/epoxy/EpoxyRecyclerView;
    .locals 3

    iget-object v0, p0, Lo/act;->m:Lo/ams;

    sget-object v1, Lo/act;->h:[Lo/amT;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/epoxy/EpoxyRecyclerView;

    return-object v0
.end method


# virtual methods
.method public ad_()Z
    .locals 4

    .line 129
    invoke-virtual {p0}, Lo/act;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "activity"

    .line 130
    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getNetflixActionBar()Lcom/netflix/mediaclient/android/widget/NetflixActionBar;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 131
    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getActionBarStateBuilder()Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;

    move-result-object v0

    .line 132
    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;->d(Z)Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;

    move-result-object v0

    .line 133
    sget-object v3, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$LogoType;->a:Lcom/netflix/mediaclient/android/widget/NetflixActionBar$LogoType;

    invoke-virtual {v0, v3}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;->c(Lcom/netflix/mediaclient/android/widget/NetflixActionBar$LogoType;)Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;

    move-result-object v0

    const-string v3, ""

    .line 134
    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;->c(Ljava/lang/CharSequence;)Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;

    move-result-object v0

    .line 135
    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;->b()Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity;

    move-result-object v0

    .line 130
    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->c(Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity;)V

    :cond_0
    return v2

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public b(Lo/OfPrimitive;)V
    .locals 5

    const-string v0, "$this$buildFooter"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lo/act;->p:Lcom/netflix/mediaclient/ui/ums/planselect/PlanSelectEpoxyController;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/ums/planselect/PlanSelectEpoxyController;->getCurrentData()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Lo/BiConsumer;

    const/4 v1, 0x0

    .line 115
    new-instance v2, Lo/acd;

    invoke-direct {v2}, Lo/acd;-><init>()V

    const-string v3, "confirm-button"

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Lo/acd;->a(Ljava/lang/CharSequence;)Lo/acd;

    move-result-object v2

    new-instance v3, Lcom/netflix/mediaclient/ui/ums/planselect/PlanSelectFragment$buildFooter$1;

    move-object v4, p0

    check-cast v4, Lo/act;

    invoke-direct {v3, v4}, Lcom/netflix/mediaclient/ui/ums/planselect/PlanSelectFragment$buildFooter$1;-><init>(Lo/act;)V

    check-cast v3, Lo/alA;

    new-instance v4, Lo/acv;

    invoke-direct {v4, v3}, Lo/acv;-><init>(Lo/alA;)V

    check-cast v4, Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v4}, Lo/acd;->b(Landroid/view/View$OnClickListener;)Lo/acd;

    move-result-object v2

    const-string v3, "ConfirmButtonModel_().id\u2026tener(::onConfirmClicked)"

    invoke-static {v2, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lo/BiConsumer;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 116
    new-instance v2, Lo/acm;

    invoke-direct {v2}, Lo/acm;-><init>()V

    const-string v3, "footer-text"

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Lo/acm;->a(Ljava/lang/CharSequence;)Lo/acm;

    move-result-object v2

    const-string v3, "FooterTextModel_().id(\"footer-text\")"

    invoke-static {v2, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lo/BiConsumer;

    aput-object v2, v0, v1

    .line 114
    invoke-static {v0}, Lo/akz;->e([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 266
    new-instance v1, Lo/acq;

    invoke-direct {v1, v0}, Lo/acq;-><init>(Ljava/util/List;)V

    .line 270
    move-object v0, v1

    check-cast v0, Lo/aco;

    .line 269
    invoke-virtual {v1, p1}, Lo/acq;->a(Lo/OfPrimitive;)V

    return-void
.end method

.method public d(Landroid/view/View;)V
    .locals 4

    const-string v0, "view"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 152
    iget v0, p0, Lo/act;->c:I

    .line 274
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    .line 276
    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    .line 277
    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    .line 279
    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method public g()V
    .locals 1

    iget-object v0, p0, Lo/act;->t:Ljava/util/HashMap;

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

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    invoke-super {p0, p1}, Lo/WebMessagePort;->onAttach(Landroid/content/Context;)V

    .line 125
    invoke-virtual {p0}, Lo/act;->getActivity()Lo/Serializable;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lo/Serializable;->setResult(I)V

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    sget p3, Lcom/netflix/mediaclient/ui/R$Dialog;->dE:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string p2, "inflater.inflate(R.layou\u2026t_frag, container, false)"

    invoke-static {p1, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 163
    invoke-super {p0}, Lo/WebMessagePort;->onDestroyView()V

    .line 164
    iget-object v0, p0, Lo/act;->l:Lio/reactivex/subjects/BehaviorSubject;

    invoke-virtual {v0}, Lio/reactivex/subjects/BehaviorSubject;->onComplete()V

    .line 165
    iget-object v0, p0, Lo/act;->q:Lio/reactivex/subjects/ReplaySubject;

    invoke-virtual {v0}, Lio/reactivex/subjects/ReplaySubject;->onComplete()V

    .line 166
    sget-object v0, Lo/acn;->d:Lo/acn;

    invoke-virtual {v0}, Lo/acn;->e()V

    .line 167
    invoke-virtual {p0}, Lo/act;->g()V

    return-void
.end method

.method public onManagerReady(Lo/Am;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    const-string v0, "manager"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "res"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 144
    invoke-super {p0, p1, p2}, Lo/WebMessagePort;->onManagerReady(Lo/Am;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 145
    iget-object p2, p0, Lo/act;->q:Lio/reactivex/subjects/ReplaySubject;

    invoke-virtual {p2, p1}, Lio/reactivex/subjects/ReplaySubject;->onNext(Ljava/lang/Object;)V

    .line 146
    iget-object p1, p0, Lo/act;->k:Ljava/util/List;

    if-nez p1, :cond_0

    .line 147
    invoke-direct {p0}, Lo/act;->x()V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "outState"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 156
    invoke-super {p0, p1}, Lo/WebMessagePort;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 157
    iget-object v0, p0, Lo/act;->l:Lio/reactivex/subjects/BehaviorSubject;

    invoke-virtual {v0}, Lio/reactivex/subjects/BehaviorSubject;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    const-string v1, "selectedValue"

    .line 158
    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v1, "LAST_SELECTED_PLAN_ID"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "view"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    invoke-super {p0, p1, p2}, Lo/WebMessagePort;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 95
    invoke-virtual {p0}, Lo/act;->ad_()Z

    .line 96
    new-instance v0, Lo/EditText;

    iget-object v1, p0, Lo/act;->n:Lo/DatePickerCalendarDelegate$Activity;

    invoke-direct {v0, p1, v1}, Lo/EditText;-><init>(Landroid/view/View;Lo/DatePickerCalendarDelegate$Activity;)V

    iput-object v0, p0, Lo/act;->o:Lo/EditText;

    .line 97
    invoke-direct {p0}, Lo/act;->y()Lcom/airbnb/epoxy/EpoxyRecyclerView;

    move-result-object p1

    iget-object v0, p0, Lo/act;->p:Lcom/netflix/mediaclient/ui/ums/planselect/PlanSelectEpoxyController;

    check-cast v0, Lo/OfPrimitive;

    invoke-virtual {p1, v0}, Lcom/airbnb/epoxy/EpoxyRecyclerView;->setController(Lo/OfPrimitive;)V

    .line 98
    invoke-virtual {p0}, Lo/act;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "EXTRA_MESSAGE_CTA_PARAMS"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lo/act;->i:Ljava/lang/String;

    const/4 p1, -0x1

    if-eqz p2, :cond_1

    const-string v0, "LAST_SELECTED_PLAN_ID"

    .line 99
    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    :cond_1
    iput p1, p0, Lo/act;->f:I

    .line 101
    iget-object p1, p0, Lo/act;->k:Ljava/util/List;

    if-nez p1, :cond_2

    .line 102
    iget-object p1, p0, Lo/act;->o:Lo/EditText;

    if-eqz p1, :cond_3

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lo/EditText;->c(Z)V

    goto :goto_1

    .line 104
    :cond_2
    invoke-direct {p0}, Lo/act;->y()Lcom/airbnb/epoxy/EpoxyRecyclerView;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/airbnb/epoxy/EpoxyRecyclerView;->setVisibility(I)V

    :cond_3
    :goto_1
    return-void
.end method
