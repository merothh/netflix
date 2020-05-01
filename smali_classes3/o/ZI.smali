.class public final Lo/ZI;
.super Lcom/netflix/mediaclient/android/fragment/NetflixFrag;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ZI$TaskDescription;
    }
.end annotation


# static fields
.field public static final b:Lo/ZI$TaskDescription;


# instance fields
.field private f:Lcom/netflix/mediaclient/ui/search/ab22078/SearchUIView_Ab22078;

.field private h:Lo/ZS;

.field private i:Lcom/netflix/cl/model/AppView;

.field private j:Z

.field private k:Ljava/lang/String;

.field private final l:Lo/UpdateEngine;

.field private m:Ljava/util/HashMap;

.field private n:Lo/ZJ;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/ZI$TaskDescription;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/ZI$TaskDescription;-><init>(Lo/amc;)V

    sput-object v0, Lo/ZI;->b:Lo/ZI$TaskDescription;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 23
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;-><init>()V

    const/4 v0, 0x1

    .line 42
    iput-boolean v0, p0, Lo/ZI;->j:Z

    .line 43
    sget-object v0, Lcom/netflix/cl/model/AppView;->searchSuggestionTitleResults:Lcom/netflix/cl/model/AppView;

    iput-object v0, p0, Lo/ZI;->i:Lcom/netflix/cl/model/AppView;

    .line 48
    sget-object v0, Lo/UpdateEngine;->e:Lo/UpdateEngine$TaskDescription;

    move-object v1, p0

    check-cast v1, Lo/UnicodeScript;

    invoke-virtual {v0, v1}, Lo/UpdateEngine$TaskDescription;->d(Lo/UnicodeScript;)Lo/UpdateEngine;

    move-result-object v0

    iput-object v0, p0, Lo/ZI;->l:Lo/UpdateEngine;

    return-void
.end method

.method public static final synthetic a(Lo/ZI;)Lo/ZS;
    .locals 1

    .line 23
    iget-object p0, p0, Lo/ZI;->h:Lo/ZS;

    if-nez p0, :cond_0

    const-string v0, "uiRepo"

    invoke-static {v0}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic b(Lo/ZI;)Lo/UpdateEngine;
    .locals 0

    .line 23
    iget-object p0, p0, Lo/ZI;->l:Lo/UpdateEngine;

    return-object p0
.end method

.method public static final synthetic b(Lo/ZI;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lo/ZI;->a(Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method public static final synthetic c(Lo/ZI;Lo/ZJ;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lo/ZI;->n:Lo/ZJ;

    return-void
.end method

.method public static final synthetic c(Lo/ZI;Z)V
    .locals 0

    .line 23
    iput-boolean p1, p0, Lo/ZI;->j:Z

    return-void
.end method

.method public static final synthetic d(Lo/ZI;)Lcom/netflix/mediaclient/ui/search/ab22078/SearchUIView_Ab22078;
    .locals 1

    .line 23
    iget-object p0, p0, Lo/ZI;->f:Lcom/netflix/mediaclient/ui/search/ab22078/SearchUIView_Ab22078;

    if-nez p0, :cond_0

    const-string v0, "uiView"

    invoke-static {v0}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method


# virtual methods
.method public ad_()Z
    .locals 3

    .line 146
    invoke-virtual {p0}, Lo/ZI;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getNetflixActionBar()Lcom/netflix/mediaclient/android/widget/NetflixActionBar;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 148
    invoke-virtual {p0}, Lo/ZI;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getActionBarStateBuilder()Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 151
    invoke-virtual {v2, v1}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;->d(Z)Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;

    move-result-object v1

    .line 152
    iget-object v2, p0, Lo/ZI;->k:Ljava/lang/String;

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;->c(Ljava/lang/CharSequence;)Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;

    move-result-object v1

    .line 153
    invoke-virtual {v1}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;->b()Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity;

    move-result-object v1

    .line 149
    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->c(Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity;)V

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    return v1
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Lo/ZI;->m:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public isLoadingData()Z
    .locals 1

    .line 51
    iget-boolean v0, p0, Lo/ZI;->j:Z

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    invoke-virtual {p0}, Lo/ZI;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const/4 p3, 0x0

    if-eqz p1, :cond_0

    const-string v0, "EntityId"

    .line 56
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p3

    :goto_0
    if-eqz p1, :cond_1

    const-string v1, "SuggestionType"

    .line 57
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object v1, p3

    :goto_1
    if-eqz p1, :cond_2

    const-string v2, "SearchResultType"

    .line 58
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_2
    move-object v2, p3

    :goto_2
    if-eqz p1, :cond_3

    const-string v3, "Title"

    .line 59
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_3
    move-object p1, p3

    :goto_3
    iput-object p1, p0, Lo/ZI;->k:Ljava/lang/String;

    .line 60
    move-object p1, v2

    check-cast p1, Ljava/lang/CharSequence;

    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_4

    goto :goto_4

    :cond_4
    const/4 p1, 0x0

    goto :goto_5

    :cond_5
    :goto_4
    const/4 p1, 0x1

    :goto_5
    if-eqz p1, :cond_6

    .line 61
    sget-object p1, Lcom/netflix/cl/model/AppView;->searchSuggestionTitleResults:Lcom/netflix/cl/model/AppView;

    goto :goto_6

    .line 64
    :cond_6
    :try_start_0
    invoke-static {v2}, Lcom/netflix/cl/model/AppView;->valueOf(Ljava/lang/String;)Lcom/netflix/cl/model/AppView;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    .line 66
    :catch_0
    sget-object p1, Lo/ZI;->b:Lo/ZI$TaskDescription;

    check-cast p1, Lo/MessagePdu;

    .line 67
    sget-object p1, Lcom/netflix/cl/model/AppView;->searchSuggestionTitleResults:Lcom/netflix/cl/model/AppView;

    .line 60
    :goto_6
    iput-object p1, p0, Lo/ZI;->i:Lcom/netflix/cl/model/AppView;

    if-nez p2, :cond_7

    .line 72
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p1

    const-string p2, "onCreateView container is null in SearchResultsFrag_Ab22078"

    .line 73
    invoke-interface {p1, p2}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    return-object p3

    .line 76
    :cond_7
    new-instance p1, Lcom/netflix/mediaclient/ui/search/ab22078/SearchUIView_Ab22078;

    sget-object p3, Lcom/netflix/cl/model/AppView;->searchSuggestionTitleResults:Lcom/netflix/cl/model/AppView;

    iget-object v2, p0, Lo/ZI;->l:Lo/UpdateEngine;

    invoke-direct {p1, p2, p3, v2}, Lcom/netflix/mediaclient/ui/search/ab22078/SearchUIView_Ab22078;-><init>(Landroid/view/ViewGroup;Lcom/netflix/cl/model/AppView;Lo/UpdateEngine;)V

    iput-object p1, p0, Lo/ZI;->f:Lcom/netflix/mediaclient/ui/search/ab22078/SearchUIView_Ab22078;

    .line 77
    iget-object p1, p0, Lo/ZI;->f:Lcom/netflix/mediaclient/ui/search/ab22078/SearchUIView_Ab22078;

    const-string p2, "uiView"

    if-nez p1, :cond_8

    invoke-static {p2}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_8
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/search/ab22078/SearchUIView_Ab22078;->w()Lio/reactivex/Observable;

    move-result-object p1

    .line 78
    iget-object p3, p0, Lo/ZI;->l:Lo/UpdateEngine;

    invoke-virtual {p3}, Lo/UpdateEngine;->e()Lio/reactivex/Observable;

    move-result-object p3

    check-cast p3, Lio/reactivex/ObservableSource;

    invoke-virtual {p1, p3}, Lio/reactivex/Observable;->takeUntil(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object p1

    .line 79
    new-instance p3, Lo/ZI$ActionBar;

    invoke-direct {p3, p0}, Lo/ZI$ActionBar;-><init>(Lo/ZI;)V

    check-cast p3, Lio/reactivex/functions/Consumer;

    invoke-virtual {p1, p3}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    .line 117
    new-instance p1, Lo/ZS;

    invoke-virtual {p0}, Lo/ZI;->ab_()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object p3

    const-string v2, "requireNetflixActivity()"

    invoke-static {p3, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lo/ZI;->l:Lo/UpdateEngine;

    invoke-virtual {v2}, Lo/UpdateEngine;->e()Lio/reactivex/Observable;

    move-result-object v2

    invoke-direct {p1, p3, v2}, Lo/ZS;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lio/reactivex/Observable;)V

    iput-object p1, p0, Lo/ZI;->h:Lo/ZS;

    .line 118
    new-instance p1, Lcom/netflix/mediaclient/ui/search/ab22078/SearchSuggestionFragment_Ab22078$onCreateView$3;

    invoke-direct {p1, p0}, Lcom/netflix/mediaclient/ui/search/ab22078/SearchSuggestionFragment_Ab22078$onCreateView$3;-><init>(Lo/ZI;)V

    check-cast p1, Lo/alN;

    invoke-static {v0, v1, p1}, Lo/NfcA;->c(Ljava/lang/Object;Ljava/lang/Object;Lo/alN;)Ljava/lang/Object;

    if-eqz v0, :cond_9

    if-nez v1, :cond_b

    .line 132
    :cond_9
    iget-object p1, p0, Lo/ZI;->f:Lcom/netflix/mediaclient/ui/search/ab22078/SearchUIView_Ab22078;

    if-nez p1, :cond_a

    invoke-static {p2}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_a
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/search/ab22078/SearchUIView_Ab22078;->f()V

    .line 134
    :cond_b
    iget-object p1, p0, Lo/ZI;->f:Lcom/netflix/mediaclient/ui/search/ab22078/SearchUIView_Ab22078;

    if-nez p1, :cond_c

    invoke-static {p2}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_c
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/search/ab22078/SearchUIView_Ab22078;->l()Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->onDestroyView()V

    invoke-virtual {p0}, Lo/ZI;->d()V

    return-void
.end method

.method public t()Lcom/netflix/cl/model/AppView;
    .locals 1

    .line 138
    iget-object v0, p0, Lo/ZI;->i:Lcom/netflix/cl/model/AppView;

    return-object v0
.end method

.method public u()Z
    .locals 1

    .line 142
    sget-object v0, Lo/gG;->c:Lo/gG$Application;

    invoke-virtual {v0}, Lo/gG$Application;->e()Z

    move-result v0

    return v0
.end method
