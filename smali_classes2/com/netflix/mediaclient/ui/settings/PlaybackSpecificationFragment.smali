.class public final Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment;
.super Lcom/netflix/mediaclient/android/fragment/NetflixFrag;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$StateListAnimator;,
        Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$Application;,
        Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$VideoResolution;,
        Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$Activity;,
        Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$ActionBar;
    }
.end annotation


# instance fields
.field private final b:Ljava/lang/String;

.field private final f:I

.field private final h:I

.field private final i:I

.field private j:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;-><init>()V

    const-string v0, "PlaybackSpecificationFrag"

    .line 34
    iput-object v0, p0, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment;->b:Ljava/lang/String;

    const/4 v0, 0x1

    .line 36
    iput v0, p0, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment;->i:I

    const/4 v0, 0x2

    .line 37
    iput v0, p0, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment;->f:I

    return-void
.end method

.method public static final synthetic a(Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment;)I
    .locals 0

    .line 33
    iget p0, p0, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment;->h:I

    return p0
.end method

.method public static final synthetic a(Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment;Ljava/lang/String;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment;->b(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic b(Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment;)I
    .locals 0

    .line 33
    iget p0, p0, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment;->f:I

    return p0
.end method

.method private final b(Ljava/lang/String;)V
    .locals 3

    .line 314
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "Intent(Intent.ACTION_VIEW).setData(Uri.parse(url))"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 316
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 318
    :catch_0
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SPY-16740: Exception occurred when launching URL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 318
    invoke-interface {v0, p1}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static final synthetic e(Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment;)I
    .locals 0

    .line 33
    iget p0, p0, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment;->i:I

    return p0
.end method


# virtual methods
.method public ad_()Z
    .locals 4

    .line 295
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 297
    sget v2, Lcom/netflix/mediaclient/ui/R$AssistContent;->iR:I

    invoke-virtual {p0, v2}, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "getString(R.string.label_playback_specification)"

    invoke-static {v2, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "activity"

    .line 298
    invoke-static {v0, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 299
    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getNetflixActionBar()Lcom/netflix/mediaclient/android/widget/NetflixActionBar;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 301
    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getActionBarStateBuilder()Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;

    move-result-object v0

    .line 302
    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;->c(Ljava/lang/CharSequence;)Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;

    move-result-object v0

    const/4 v2, 0x1

    .line 303
    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;->a(Z)Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;

    move-result-object v0

    .line 304
    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;->d(Z)Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;

    move-result-object v0

    .line 305
    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;->b()Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity;

    move-result-object v0

    .line 300
    invoke-virtual {v3, v0}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->c(Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity;)V

    return v2

    :cond_0
    const/4 v0, 0x0

    .line 295
    check-cast v0, Ljava/lang/Void;

    :cond_1
    return v1
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment;->j:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment;->b:Ljava/lang/String;

    return-object v0
.end method

.method public d(Landroid/view/View;)V
    .locals 3

    const-string v0, "view"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 288
    iget v0, p0, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment;->c:I

    iget v1, p0, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment;->g:I

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0, v2, v1}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method public isLoadingData()Z
    .locals 2

    .line 54
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment;->U_()Lo/Am;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "it"

    .line 55
    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lo/Am;->c()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    sget p3, Lcom/netflix/mediaclient/ui/R$Dialog;->dG:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 41
    sget p2, Lcom/netflix/mediaclient/ui/R$Fragment;->mW:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    const-string p3, "recyclerView"

    .line 42
    invoke-static {p2, p3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p3, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment;->getActivity()Lo/Serializable;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-direct {p3, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    check-cast p3, Landroidx/recyclerview/widget/RecyclerView$Fragment;

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$Fragment;)V

    .line 43
    new-instance p3, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$ActionBar;

    invoke-direct {p3, p0}, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$ActionBar;-><init>(Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment;)V

    check-cast p3, Landroidx/recyclerview/widget/RecyclerView$Activity;

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Activity;)V

    .line 45
    sget p2, Lcom/netflix/mediaclient/ui/R$Fragment;->hC:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    .line 46
    new-instance p3, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$TaskDescription;

    invoke-direct {p3, p0}, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$TaskDescription;-><init>(Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment;)V

    check-cast p3, Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->onDestroyView()V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment;->c()V

    return-void
.end method
