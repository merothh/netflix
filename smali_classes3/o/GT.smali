.class public final Lo/GT;
.super Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/GT$Activity;
    }
.end annotation


# static fields
.field public static final h:Lo/GT$Activity;


# instance fields
.field private final i:Lo/aka;

.field private final j:Lo/GN;

.field private final k:Lo/Id;

.field private m:Ljava/util/HashMap;

.field private final n:Lo/GL;

.field private final o:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/GT$Activity;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/GT$Activity;-><init>(Lo/amc;)V

    sput-object v0, Lo/GT;->h:Lo/GT$Activity;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 24
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;-><init>()V

    .line 28
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->b:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lcom/netflix/mediaclient/ui/extras/ExtrasPostFragment$extrasFeedViewModel$2;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/extras/ExtrasPostFragment$extrasFeedViewModel$2;-><init>(Lo/GT;)V

    check-cast v1, Lo/alB;

    invoke-static {v0, v1}, Lo/akd;->c(Lkotlin/LazyThreadSafetyMode;Lo/alB;)Lo/aka;

    move-result-object v0

    iput-object v0, p0, Lo/GT;->i:Lo/aka;

    .line 37
    sget v0, Lo/GS$FragmentManager;->n:I

    iput v0, p0, Lo/GT;->o:I

    return-void
.end method

.method private final d(Ljava/lang/String;)V
    .locals 3

    .line 52
    invoke-virtual {p0}, Lo/GT;->C()Lo/GQ;

    move-result-object v0

    invoke-virtual {p0}, Lo/GT;->ab_()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v1

    const-string v2, "requireNetflixActivity()"

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcom/netflix/mediaclient/ui/extras/ExtrasPostFragment$loadSupplementalInPlayer$1;

    invoke-direct {v2, p0}, Lcom/netflix/mediaclient/ui/extras/ExtrasPostFragment$loadSupplementalInPlayer$1;-><init>(Lo/GT;)V

    check-cast v2, Lo/alA;

    invoke-virtual {v0, v1, p1, v2}, Lo/GQ;->a(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/String;Lo/alA;)V

    return-void
.end method


# virtual methods
.method protected C()Lo/GQ;
    .locals 1

    iget-object v0, p0, Lo/GT;->i:Lo/aka;

    invoke-interface {v0}, Lo/aka;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/GQ;

    return-object v0
.end method

.method public a(Lo/If;Lo/UnicodeScript;)Lo/Ic;
    .locals 1

    const-string v0, "extrasRecyclerView"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "lifecycleOwner"

    invoke-static {p2, p1}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public synthetic c()Lo/GK;
    .locals 1

    .line 24
    invoke-virtual {p0}, Lo/GT;->C()Lo/GQ;

    move-result-object v0

    check-cast v0, Lo/GK;

    return-object v0
.end method

.method public final c(Ljava/lang/String;)V
    .locals 2

    const-string v0, "postId"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-virtual {p0}, Lo/GT;->requireActivity()Lo/Serializable;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 107
    invoke-static {v0}, Lo/TagTechnology;->a(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 109
    const-class v1, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0, v1}, Lo/TagTechnology;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 108
    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    .line 41
    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lo/aek;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    invoke-direct {p0, p1}, Lo/GT;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 46
    :cond_0
    invoke-virtual {p0}, Lo/GT;->C()Lo/GQ;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/GQ;->a(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public d(Landroid/view/View;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public g()Lo/GN;
    .locals 1

    .line 32
    iget-object v0, p0, Lo/GT;->j:Lo/GN;

    return-object v0
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;->onDestroyView()V

    invoke-virtual {p0}, Lo/GT;->z()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    invoke-super {p0, p1, p2}, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 99
    invoke-virtual {p0}, Lo/GT;->d()Lo/If;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lo/If;->setScrollingLocked(Z)V

    return-void
.end method

.method public v()Lo/GL;
    .locals 1

    .line 35
    iget-object v0, p0, Lo/GT;->n:Lo/GL;

    return-object v0
.end method

.method public x()Lo/Id;
    .locals 1

    .line 87
    iget-object v0, p0, Lo/GT;->k:Lo/Id;

    return-object v0
.end method

.method public y()I
    .locals 1

    .line 37
    iget v0, p0, Lo/GT;->o:I

    return v0
.end method

.method public z()V
    .locals 1

    iget-object v0, p0, Lo/GT;->m:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method
