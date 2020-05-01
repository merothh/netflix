.class public final Lo/Je;
.super Lcom/netflix/mediaclient/android/fragment/NetflixFrag;
.source ""

# interfaces
.implements Lo/DL;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/Je$TaskDescription;
    }
.end annotation


# static fields
.field public static final b:Lo/Je$TaskDescription;


# instance fields
.field private f:I

.field private h:Lo/UpdateEngine;

.field private i:Ljava/lang/String;

.field private j:Lcom/netflix/mediaclient/ui/kids/character_details/CharacterController;

.field private m:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/Je$TaskDescription;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/Je$TaskDescription;-><init>(Lo/amc;)V

    sput-object v0, Lo/Je;->b:Lo/Je$TaskDescription;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;-><init>()V

    return-void
.end method

.method public static final c(Ljava/lang/String;I)Landroidx/fragment/app/Fragment;
    .locals 1

    sget-object v0, Lo/Je;->b:Lo/Je$TaskDescription;

    invoke-virtual {v0, p0, p1}, Lo/Je$TaskDescription;->b(Ljava/lang/String;I)Landroidx/fragment/app/Fragment;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public ad_()Z
    .locals 4

    .line 115
    invoke-virtual {p0}, Lo/Je;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "activity"

    .line 116
    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getNetflixActionBar()Lcom/netflix/mediaclient/android/widget/NetflixActionBar;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 117
    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getActionBarStateBuilder()Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;

    move-result-object v0

    const/4 v3, 0x1

    .line 118
    invoke-virtual {v0, v3}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;->e(Z)Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;

    move-result-object v0

    .line 119
    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;->a(Landroid/graphics/drawable/Drawable;)Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;

    move-result-object v0

    .line 121
    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;->b()Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->c(Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity;)V

    return v3

    .line 115
    :cond_0
    check-cast v2, Ljava/lang/Void;

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Lo/Je;->m:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public d(Landroid/view/View;)V
    .locals 4

    const-string v0, "view"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    iget v0, p0, Lo/Je;->d:I

    iget v1, p0, Lo/Je;->g:I

    .line 138
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    .line 140
    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    .line 143
    invoke-virtual {p1, v2, v0, v3, v1}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method public isLoadingData()Z
    .locals 1

    .line 56
    iget-object v0, p0, Lo/Je;->j:Lcom/netflix/mediaclient/ui/kids/character_details/CharacterController;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/kids/character_details/CharacterController;->getCurrentData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/IJ$ActionBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/IJ$ActionBar;->a()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 60
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->onCreate(Landroid/os/Bundle;)V

    .line 62
    invoke-virtual {p0}, Lo/Je;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v0, "extra_chararcter_id"

    .line 64
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/Je;->i:Ljava/lang/String;

    const-string v0, "extra_kids_color_id"

    .line 65
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lo/Je;->f:I

    .line 67
    iget-object p1, p0, Lo/Je;->i:Ljava/lang/String;

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Character ID can\'t be null"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 62
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Required value was null."

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string v0, "inflater"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    invoke-super {p0, p1, p2, p3}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 77
    sget p3, Lcom/netflix/mediaclient/ui/R$Dialog;->r:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 109
    invoke-super {p0}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->onDestroyView()V

    const/4 v0, 0x0

    .line 111
    check-cast v0, Lcom/netflix/mediaclient/ui/kids/character_details/CharacterController;

    iput-object v0, p0, Lo/Je;->j:Lcom/netflix/mediaclient/ui/kids/character_details/CharacterController;

    .line 112
    invoke-virtual {p0}, Lo/Je;->d()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "AutoDispose",
            "CheckResult"
        }
    .end annotation

    const-string v0, "view"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    invoke-super {p0, p1, p2}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 84
    sget-object p2, Lo/UpdateEngine;->e:Lo/UpdateEngine$TaskDescription;

    invoke-virtual {p0}, Lo/Je;->getViewLifecycleOwner()Lo/UnicodeScript;

    move-result-object v0

    const-string v1, "viewLifecycleOwner"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lo/UpdateEngine$TaskDescription;->d(Lo/UnicodeScript;)Lo/UpdateEngine;

    move-result-object p2

    iput-object p2, p0, Lo/Je;->h:Lo/UpdateEngine;

    .line 87
    invoke-virtual {p0}, Lo/Je;->ab_()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object p2

    const-string v0, "requireNetflixActivity()"

    invoke-static {p2, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lo/Je;->h:Lo/UpdateEngine;

    if-nez v0, :cond_0

    const-string v1, "eventBusFactory"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    .line 89
    :cond_0
    iget-object v1, p0, Lo/Je;->i:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 86
    new-instance v2, Lcom/netflix/mediaclient/ui/kids/character_details/CharacterController;

    invoke-direct {v2, p2, v0, v1}, Lcom/netflix/mediaclient/ui/kids/character_details/CharacterController;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/UpdateEngine;Ljava/lang/String;)V

    .line 92
    sget p2, Lcom/netflix/mediaclient/ui/R$Fragment;->ql:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 93
    new-instance p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$Fragment;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$Fragment;)V

    .line 94
    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/kids/character_details/CharacterController;->getAdapter()Lo/OfLong;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$Activity;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Activity;)V

    .line 99
    new-instance p1, Lo/Je$Activity;

    invoke-direct {p1}, Lo/Je$Activity;-><init>()V

    check-cast p1, Landroid/content/BroadcastReceiver;

    .line 104
    new-instance p2, Landroid/content/IntentFilter;

    const-string v0, "com.netflix.mediaclient.intent.action.DETAIL_PAGE_REFRESH"

    invoke-direct {p2, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p0, p1, p2}, Lo/Je;->d(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void

    .line 89
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Required value was null."

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/Je;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
