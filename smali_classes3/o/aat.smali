.class public final Lo/aat;
.super Lo/aaz;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/aat$Activity;
    }
.end annotation


# static fields
.field public static final k:Lo/aat$Activity;


# instance fields
.field private r:Lo/aaF;

.field private t:Z

.field private u:Ljava/util/HashMap;

.field private x:Lo/aaE;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/aat$Activity;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/aat$Activity;-><init>(Lo/amc;)V

    sput-object v0, Lo/aat;->k:Lo/aat$Activity;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Lo/aaz;-><init>()V

    .line 24
    new-instance v0, Lo/aaF;

    invoke-direct {v0}, Lo/aaF;-><init>()V

    iput-object v0, p0, Lo/aat;->r:Lo/aaF;

    return-void
.end method

.method private final W()V
    .locals 2

    const/4 v0, 0x0

    .line 135
    iput-boolean v0, p0, Lo/aat;->t:Z

    .line 136
    iget-object v0, p0, Lo/aat;->x:Lo/aaE;

    if-nez v0, :cond_0

    const-string v1, "searchQueryCompletionResultsView"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lo/aaE;->b()V

    return-void
.end method

.method public static final synthetic a(Lo/aat;)Lo/aaE;
    .locals 1

    .line 15
    iget-object p0, p0, Lo/aat;->x:Lo/aaE;

    if-nez p0, :cond_0

    const-string v0, "searchQueryCompletionResultsView"

    invoke-static {v0}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic a(Lo/aat;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .line 15
    invoke-virtual {p0, p1}, Lo/aat;->a(Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method public static final synthetic a(Lo/aat;Ljava/lang/String;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lo/aat;->e(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic b(Lo/aat;)Lo/aaF;
    .locals 0

    .line 15
    iget-object p0, p0, Lo/aat;->r:Lo/aaF;

    return-object p0
.end method

.method private final b(Ljava/lang/String;)V
    .locals 2

    .line 130
    sget-object v0, Lo/aat;->k:Lo/aat$Activity;

    check-cast v0, Lo/MessagePdu;

    .line 131
    iget-object v0, p0, Lo/aat;->f:Lo/OnDateChangedListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/OnDateChangedListener;->m()Landroid/widget/SearchView;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/CharSequence;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    :cond_0
    return-void
.end method

.method public static final synthetic b(Lo/aat;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;)V
    .locals 0

    .line 15
    invoke-virtual {p0, p1}, Lo/aat;->b(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;)V

    return-void
.end method

.method public static final synthetic b(Lo/aat;Z)V
    .locals 0

    .line 15
    invoke-virtual {p0, p1}, Lo/aat;->d(Z)V

    return-void
.end method

.method private final c(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    .line 73
    iput-boolean v0, p0, Lo/aat;->i:Z

    .line 74
    invoke-virtual {p0, v0}, Lo/aat;->b(Z)V

    .line 75
    invoke-virtual {p0}, Lo/aat;->getActivity()Lo/Serializable;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    new-instance v1, Lo/aat$Application;

    invoke-direct {v1, p0, p1}, Lo/aat$Application;-><init>(Lo/aat;Ljava/lang/String;)V

    check-cast v1, Lcom/netflix/mediaclient/android/activity/NetflixActivity$Application;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->runWhenManagerIsReady(Lcom/netflix/mediaclient/android/activity/NetflixActivity$Application;)V

    return-void

    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.netflix.mediaclient.android.activity.NetflixActivity"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static final synthetic c(Lo/aat;)V
    .locals 0

    .line 15
    invoke-virtual {p0}, Lo/aat;->I()V

    return-void
.end method

.method public static final synthetic c(Lo/aat;I)V
    .locals 0

    .line 15
    invoke-virtual {p0, p1}, Lo/aat;->e(I)V

    return-void
.end method

.method public static final synthetic c(Lo/aat;Ljava/lang/String;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lo/aat;->d(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic c(Lo/aat;Ljava/lang/String;Z)V
    .locals 0

    .line 15
    invoke-virtual {p0, p1, p2}, Lo/aat;->c(Ljava/lang/String;Z)V

    return-void
.end method

.method public static final synthetic c(Lo/aat;Z)V
    .locals 0

    .line 15
    iput-boolean p1, p0, Lo/aat;->i:Z

    return-void
.end method

.method private final d(Ljava/lang/String;)V
    .locals 2

    .line 54
    iget-object v0, p0, Lo/aat;->f:Lo/OnDateChangedListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/OnDateChangedListener;->m()Landroid/widget/SearchView;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/CharSequence;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    :cond_0
    return-void
.end method

.method public static final synthetic d(Lo/aat;Ljava/lang/String;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lo/aat;->c(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic d(Lo/aat;Z)V
    .locals 0

    .line 15
    invoke-virtual {p0, p1}, Lo/aat;->b(Z)V

    return-void
.end method

.method public static final synthetic d(Lo/aat;)Z
    .locals 0

    .line 15
    iget-boolean p0, p0, Lo/aat;->t:Z

    return p0
.end method

.method public static final synthetic e(Lo/aat;)Lo/OnDateChangedListener;
    .locals 0

    .line 15
    iget-object p0, p0, Lo/aat;->f:Lo/OnDateChangedListener;

    return-object p0
.end method

.method private final e(Ljava/lang/String;)V
    .locals 3

    .line 58
    sget-object v0, Lo/aat;->k:Lo/aat$Activity;

    check-cast v0, Lo/MessagePdu;

    .line 59
    iget-object v0, p0, Lo/aat;->x:Lo/aaE;

    if-nez v0, :cond_0

    const-string v1, "searchQueryCompletionResultsView"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lo/aaE;->b()V

    .line 60
    iget-object v0, p0, Lo/aat;->f:Lo/OnDateChangedListener;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lo/OnDateChangedListener;->m()Landroid/widget/SearchView;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/SearchView;->clearFocus()V

    :cond_1
    const/4 v0, 0x1

    .line 61
    invoke-virtual {p0, v0}, Lo/aat;->b(Z)V

    .line 62
    invoke-virtual {p0}, Lo/aat;->O()V

    .line 63
    iput-boolean v0, p0, Lo/aat;->i:Z

    .line 64
    invoke-virtual {p0}, Lo/aat;->U_()Lo/Am;

    move-result-object v0

    if-nez v0, :cond_2

    .line 66
    sget-object p1, Lo/aat;->k:Lo/aat$Activity;

    check-cast p1, Lo/MessagePdu;

    return-void

    .line 69
    :cond_2
    invoke-virtual {v0}, Lo/Am;->w()Lo/zG;

    move-result-object v0

    invoke-virtual {p0}, Lo/aat;->y()J

    move-result-wide v1

    invoke-virtual {p0, v0, p1, v1, v2}, Lo/aat;->e(Lo/zG;Ljava/lang/String;J)V

    return-void
.end method

.method public static final synthetic e(Lo/aat;Ljava/lang/String;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lo/aat;->b(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic e(Lo/aat;Z)V
    .locals 0

    .line 15
    iput-boolean p1, p0, Lo/aat;->t:Z

    return-void
.end method

.method public static final synthetic f(Lo/aat;)V
    .locals 0

    .line 15
    invoke-virtual {p0}, Lo/aat;->R()V

    return-void
.end method

.method public static final synthetic i(Lo/aat;)Lo/EditText;
    .locals 0

    .line 15
    iget-object p0, p0, Lo/aat;->b:Lo/EditText;

    return-object p0
.end method


# virtual methods
.method public B()V
    .locals 2

    .line 140
    iget-object v0, p0, Lo/aat;->x:Lo/aaE;

    if-nez v0, :cond_0

    const-string v1, "searchQueryCompletionResultsView"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lo/aaE;->b()V

    .line 141
    invoke-super {p0}, Lo/aaz;->B()V

    return-void
.end method

.method public J()V
    .locals 0

    .line 150
    invoke-direct {p0}, Lo/aat;->W()V

    .line 151
    invoke-super {p0}, Lo/aaz;->J()V

    return-void
.end method

.method public K()V
    .locals 0

    .line 155
    invoke-direct {p0}, Lo/aat;->W()V

    .line 156
    invoke-super {p0}, Lo/aaz;->K()V

    return-void
.end method

.method public L()Lio/reactivex/functions/Consumer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/functions/Consumer<",
            "Lo/ApfStats;",
            ">;"
        }
    .end annotation

    .line 174
    new-instance v0, Lo/aat$TaskDescription;

    invoke-direct {v0, p0}, Lo/aat$TaskDescription;-><init>(Lo/aat;)V

    check-cast v0, Lio/reactivex/functions/Consumer;

    return-object v0
.end method

.method public M()V
    .locals 0

    .line 145
    invoke-direct {p0}, Lo/aat;->W()V

    .line 146
    invoke-super {p0}, Lo/aaz;->M()V

    return-void
.end method

.method public V()V
    .locals 1

    iget-object v0, p0, Lo/aat;->u:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public c(Landroid/view/View;Landroid/view/LayoutInflater;)V
    .locals 4

    .line 36
    invoke-super {p0, p1, p2}, Lo/aaz;->c(Landroid/view/View;Landroid/view/LayoutInflater;)V

    if-nez p1, :cond_0

    .line 38
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p1

    const-string p2, "Can\'t create search query completion results ui, null parent"

    .line 39
    invoke-interface {p1, p2}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    return-void

    .line 42
    :cond_0
    new-instance p2, Lo/aaE;

    .line 44
    new-instance v0, Lo/aat$ActionBar;

    invoke-direct {v0, p0}, Lo/aat$ActionBar;-><init>(Lo/aat;)V

    check-cast v0, Landroid/view/View$OnTouchListener;

    .line 48
    new-instance v1, Lcom/netflix/mediaclient/ui/searchlite/LiteSearchResultsFrag$setupSearchResultsViews$2;

    move-object v2, p0

    check-cast v2, Lo/aat;

    invoke-direct {v1, v2}, Lcom/netflix/mediaclient/ui/searchlite/LiteSearchResultsFrag$setupSearchResultsViews$2;-><init>(Lo/aat;)V

    check-cast v1, Lo/alA;

    .line 49
    new-instance v3, Lcom/netflix/mediaclient/ui/searchlite/LiteSearchResultsFrag$setupSearchResultsViews$3;

    invoke-direct {v3, v2}, Lcom/netflix/mediaclient/ui/searchlite/LiteSearchResultsFrag$setupSearchResultsViews$3;-><init>(Lo/aat;)V

    check-cast v3, Lo/alA;

    .line 42
    invoke-direct {p2, p1, v0, v1, v3}, Lo/aaE;-><init>(Landroid/view/View;Landroid/view/View$OnTouchListener;Lo/alA;Lo/alA;)V

    iput-object p2, p0, Lo/aat;->x:Lo/aaE;

    return-void
.end method

.method public g()I
    .locals 2

    .line 31
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    const-string v1, "Using search_lite_search_results_frag_phone"

    invoke-interface {v0, v1}, Lo/SpinnerAdapter;->e(Ljava/lang/String;)V

    .line 32
    sget v0, Lo/aax$TaskDescription;->a:I

    return v0
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lo/aaz;->onDestroyView()V

    invoke-virtual {p0}, Lo/aat;->V()V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 160
    invoke-super {p0}, Lo/aaz;->onPause()V

    .line 161
    iget-object v0, p0, Lo/aat;->x:Lo/aaE;

    if-nez v0, :cond_0

    const-string v1, "searchQueryCompletionResultsView"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lo/aaE;->d(Z)V

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 165
    invoke-super {p0}, Lo/aaz;->onResume()V

    .line 166
    iget-object v0, p0, Lo/aat;->x:Lo/aaE;

    const-string v1, "searchQueryCompletionResultsView"

    if-nez v0, :cond_0

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lo/aaE;->f()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 167
    iget-object v0, p0, Lo/aat;->x:Lo/aaE;

    if-nez v0, :cond_1

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v0, v2}, Lo/aaE;->d(Z)V

    goto :goto_0

    .line 169
    :cond_2
    invoke-virtual {p0}, Lo/aat;->T()Lo/aaA;

    move-result-object v0

    invoke-virtual {v0, v2}, Lo/aaA;->e(Z)V

    :goto_0
    return-void
.end method
