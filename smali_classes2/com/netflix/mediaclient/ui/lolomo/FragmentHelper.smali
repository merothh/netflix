.class public final Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/Ih;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper$BackStackEntry;,
        Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper$TaskDescription;
    }
.end annotation


# static fields
.field public static final c:Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper$TaskDescription;

.field private static l:J


# instance fields
.field private final b:Lo/Kg;

.field private final d:Lo/DF;

.field private final e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lo/Il;",
            ">;"
        }
    .end annotation
.end field

.field private f:Landroid/view/ViewGroup;

.field private g:Landroid/animation/Animator;

.field private h:I

.field private i:I

.field private j:I

.field private k:Z

.field private final m:Z

.field private final n:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

.field private final o:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper$BackStackEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper$TaskDescription;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper$TaskDescription;-><init>(Lo/amc;)V

    sput-object v0, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper;->c:Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper$TaskDescription;

    const-wide/16 v0, -0x1

    .line 556
    sput-wide v0, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper;->l:J

    return-void
.end method

.method public constructor <init>(ZLcom/netflix/mediaclient/android/activity/NetflixActivity;Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "activity"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper;->m:Z

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper;->n:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    .line 68
    new-instance p1, Ljava/util/ArrayList;

    const/4 p2, 0x3

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper;->e:Ljava/util/ArrayList;

    .line 69
    new-instance p1, Lo/DF;

    iget-object p2, p0, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper;->n:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-direct {p1, p0, p2}, Lo/DF;-><init>(Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper;->d:Lo/DF;

    .line 70
    new-instance p1, Lo/Kg;

    iget-object p2, p0, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper;->n:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-direct {p1, p2, p0}, Lo/Kg;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper;)V

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper;->b:Lo/Kg;

    .line 79
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper;->o:Ljava/util/ArrayList;

    .line 97
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper;->p()V

    if-eqz p3, :cond_0

    .line 100
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 103
    :cond_0
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper;->e:Ljava/util/ArrayList;

    iget-object p2, p0, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper;->d:Lo/DF;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper;->e:Ljava/util/ArrayList;

    iget-object p2, p0, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper;->b:Lo/Kg;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper;->e:Ljava/util/ArrayList;

    sget-object p2, Lo/TextViewMetrics;->e:Lo/TextViewMetrics;

    .line 608
    const-class p2, Lo/v;

    invoke-static {p2}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lo/v;

    .line 105
    invoke-interface {p2}, Lo/v;->a()Lo/Il;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    invoke-static {}, Lo/ady;->e()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 107
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper;->e:Ljava/util/ArrayList;

    new-instance p2, Lo/Nt;

    move-object v0, p0

    check-cast v0, Lo/Ih;

    invoke-direct {p2, v0}, Lo/Nt;-><init>(Lo/Ih;)V

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    if-eqz p3, :cond_7

    .line 111
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper;->o:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    const-string p1, "fh_backstack"

    .line 112
    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_2

    check-cast p1, Ljava/lang/Iterable;

    .line 609
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper$BackStackEntry;

    .line 113
    invoke-virtual {p2}, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper$BackStackEntry;->b()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 114
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper;->o:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const-string p1, "fh_showing_actionbar_initially"

    .line 117
    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper;->k:Z

    .line 119
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper;->o()Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper$BackStackEntry;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 122
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p2

    .line 123
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "FH - restored - topFrag: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper;->k()Lcom/netflix/mediaclient/android/fragment/NetflixFrag;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    const-string v0, "none"

    :goto_1
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " intent: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper$BackStackEntry;->b()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 122
    invoke-interface {p2, p3}, Lo/SpinnerAdapter;->e(Ljava/lang/String;)V

    .line 127
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper;->k()Lcom/netflix/mediaclient/android/fragment/NetflixFrag;

    move-result-object p2

    instance-of p3, p2, Lo/DY;

    const/4 v0, 0x0

    if-nez p3, :cond_4

    move-object p2, v0

    :cond_4
    check-cast p2, Lo/DY;

    if-eqz p2, :cond_5

    .line 128
    iget-object p3, p0, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper;->d:Lo/DF;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper$BackStackEntry;->b()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p3, p2, v1}, Lo/DF;->a(Lo/DY;Landroid/content/Intent;)V

    .line 131
    :cond_5
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper;->q()V

    .line 132
    iget-object p2, p0, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper;->o:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 p3, 0x2

    if-ge p2, p3, :cond_6

    goto :goto_2

    .line 135
    :cond_6
    iget-object p2, p0, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper;->o:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, p3

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper$BackStackEntry;

    :goto_2
    const/4 p2, 0x0

    .line 137
    invoke-direct {p0, v0, p1, p2}, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper;->c(Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper$BackStackEntry;Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper$BackStackEntry;Z)V

    .line 140
    new-instance p1, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper$2;

    invoke-direct {p1, p0}, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper$2;-><init>(Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper;)V

    check-cast p1, Ljava/lang/Runnable;

    invoke-static {p1}, Lo/adX;->d(Ljava/lang/Runnable;)Z

    :cond_7
    return-void
.end method

.method public synthetic constructor <init>(ZLcom/netflix/mediaclient/android/activity/NetflixActivity;Landroid/os/Bundle;ILo/amc;)V
    .locals 0

    and-int/lit8 p4, p4, 0x1

    if-eqz p4, :cond_0

    const/4 p1, 0x0

    .line 64
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper;-><init>(ZLcom/netflix/mediaclient/android/activity/NetflixActivity;Landroid/os/Bundle;)V

    return-void
.end method

.method private final a(Z)Z
    .locals 2

    .line 320
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper;->t()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 324
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper;->c:Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper$TaskDescription;

    check-cast v0, Lo/MessagePdu;

    .line 326
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper;->f()Lcom/netflix/mediaclient/android/fragment/NetflixFrag;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->i()Z

    move-result v0

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 329
    :cond_1
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper;->b(Z)Z

    move-result v1

    :goto_0
    return v1
.end method

.method public static final synthetic b(Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper;)Lo/Il;
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper;->n()Lo/Il;

    move-result-object p0

    return-object p0
.end method

.method private final b(Z)Z
    .locals 14

    .line 334
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper;->s()Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper$BackStackEntry;

    move-result-object v8

    if-eqz v8, :cond_8

    .line 336
    invoke-virtual {v8}, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper$BackStackEntry;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper;->e(Ljava/lang/String;)Lo/Il;

    move-result-object v3

    .line 337
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper;->o()Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper$BackStackEntry;

    move-result-object v9

    const/4 v10, 0x0

    .line 338
    move-object v0, v10

    check-cast v0, Lo/Il;

    const/4 v11, 0x1

    if-eqz v9, :cond_0

    .line 340
    invoke-virtual {v9}, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper$BackStackEntry;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper;->e(Ljava/lang/String;)Lo/Il;

    move-result-object v0

    goto :goto_0

    .line 342
    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper;->n:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getNetflixActionBar()Lcom/netflix/mediaclient/android/widget/NetflixActionBar;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 343
    iget-boolean v2, p0, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper;->k:Z

    if-nez v2, :cond_1

    .line 344
    invoke-virtual {v1, v11}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->d(I)Landroid/animation/Animator;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper;->g:Landroid/animation/Animator;

    :cond_1
    :goto_0
    move-object v12, v0

    if-eqz v12, :cond_5

    if-nez v9, :cond_2

    goto :goto_2

    .line 351
    :cond_2
    invoke-virtual {v9}, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper$BackStackEntry;->b()Landroid/content/Intent;

    move-result-object v0

    invoke-interface {v12, v0}, Lo/Il;->d(Landroid/content/Intent;)Lcom/netflix/mediaclient/android/fragment/NetflixFrag;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 352
    invoke-virtual {v9}, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper$BackStackEntry;->d()Landroidx/fragment/app/Fragment$SavedState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->setInitialSavedState(Landroidx/fragment/app/Fragment$SavedState;)V

    .line 353
    instance-of v1, v0, Lo/DT;

    if-nez v1, :cond_3

    move-object v1, v10

    goto :goto_1

    :cond_3
    move-object v1, v0

    :goto_1
    check-cast v1, Lo/DT;

    if-eqz v1, :cond_4

    invoke-virtual {v9}, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper$BackStackEntry;->e()Landroid/os/Parcelable;

    move-result-object v2

    invoke-interface {v1, v2}, Lo/DT;->c(Landroid/os/Parcelable;)V

    :cond_4
    move-object v13, v0

    goto :goto_3

    :cond_5
    :goto_2
    move-object v13, v10

    .line 361
    :goto_3
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper;->k()Lcom/netflix/mediaclient/android/fragment/NetflixFrag;

    move-result-object v4

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, v8

    move-object v2, v9

    move-object v5, v12

    move-object v6, v13

    .line 357
    invoke-direct/range {v0 .. v7}, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper;->c(Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper$BackStackEntry;Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper$BackStackEntry;Lo/Il;Lcom/netflix/mediaclient/android/fragment/NetflixFrag;Lo/Il;Lcom/netflix/mediaclient/android/fragment/NetflixFrag;Z)Z

    .line 367
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper;->q()V

    if-eqz v12, :cond_6

    if-eqz v9, :cond_6

    if-eqz v13, :cond_6

    .line 369
    invoke-virtual {v13}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->ad_()Z

    .line 371
    :cond_6
    invoke-direct {p0, v8, v9, v11}, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper;->c(Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper$BackStackEntry;Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper$BackStackEntry;Z)V

    if-eqz p1, :cond_7

    .line 373
    invoke-static {}, Lcom/netflix/mediaclient/NetflixApplication;->getInstance()Lcom/netflix/mediaclient/NetflixApplication;

    move-result-object p1

    const-string v0, "NetflixApplication.getInstance()"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/netflix/mediaclient/NetflixApplication;->M()Lo/afH;

    move-result-object p1

    invoke-virtual {p1}, Lo/afH;->d()V

    .line 376
    :cond_7
    check-cast v10, Landroid/animation/Animator;

    iput-object v10, p0, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper;->g:Landroid/animation/Animator;

    return v11

    :cond_8
    const/4 p1, 0x0

    return p1
.end method

.method private final c(Landroid/content/Intent;Lo/Il;Landroidx/fragment/app/Fragment$SavedState;Landroid/os/Parcelable;)Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper$BackStackEntry;
    .locals 9

    .line 517
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper;->o:Ljava/util/ArrayList;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 518
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper;->s()Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper$BackStackEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 520
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper;->o:Ljava/util/ArrayList;

    .line 521
    new-instance v8, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper$BackStackEntry;

    .line 522
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper$BackStackEntry;->a()Ljava/lang/String;

    move-result-object v3

    .line 523
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper$BackStackEntry;->b()Landroid/content/Intent;

    move-result-object v4

    .line 524
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper$BackStackEntry;->c()Lcom/netflix/cl/model/AppView;

    move-result-object v5

    move-object v2, v8

    move-object v6, p3

    move-object v7, p4

    .line 521
    invoke-direct/range {v2 .. v7}, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper$BackStackEntry;-><init>(Ljava/lang/String;Landroid/content/Intent;Lcom/netflix/cl/model/AppView;Landroidx/fragment/app/Fragment$SavedState;Landroid/os/Parcelable;)V

    .line 520
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 532
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    :goto_0
    move-object v1, p3

    const-string p3, "host.javaClass.canonical\u2026me ?: host.javaClass.name"

    invoke-static {v1, p3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 533
    new-instance p3, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper$BackStackEntry;

    invoke-interface {p2, p1}, Lo/Il;->b(Landroid/content/Intent;)Lcom/netflix/cl/model/AppView;

    move-result-object v3

    const-string p2, "host.getAppView(intent)"

    invoke-static {v3, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p3

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper$BackStackEntry;-><init>(Ljava/lang/String;Landroid/content/Intent;Lcom/netflix/cl/model/AppView;Landroidx/fragment/app/Fragment$SavedState;Landroid/os/Parcelable;)V

    .line 534
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper;->o:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p3
.end method

.method private final c(Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper$BackStackEntry;Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper$BackStackEntry;Z)V
    .locals 1

    .line 285
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper;->m:Z

    if-nez v0, :cond_0

    .line 286
    invoke-direct {p0, p1, p2, p3}, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper;->e(Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper$BackStackEntry;Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper$BackStackEntry;Z)V

    .line 289
    :cond_0
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper;->n:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->invalidateOptionsMenu()V

    return-void
.end method

.method private final c(Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper$BackStackEntry;Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper$BackStackEntry;Lo/Il;Lcom/netflix/mediaclient/android/fragment/NetflixFrag;Lo/Il;Lcom/netflix/mediaclient/android/fragment/NetflixFrag;Z)Z
    .locals 6

    if-eqz p6, :cond_0

    .line 238
    iget v0, p0, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper;->h:I

    iget v1, p0, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper;->i:I

    iget v2, p0, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper;->j:I

    invoke-virtual {p6, v0, v1, v2}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->e(III)V

    .line 240
    :cond_0
    move-object v0, p4

    check-cast v0, Landroidx/fragment/app/Fragment;

    move-object v1, p6

    check-cast v1, Landroidx/fragment/app/Fragment;

    invoke-direct {p0, v0, v1, p7}, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper;->e(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;Z)V

    .line 242
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper;->n:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getSupportFragmentManager()Lo/SerializablePermission;

    move-result-object v0

    invoke-virtual {v0}, Lo/SerializablePermission;->e()Lo/UnsupportedEncodingException;

    move-result-object v0

    const-string v1, "activity.supportFragmentManager.beginTransaction()"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    const-string v2, "NetflixApplication.getInstance()"

    const/4 v3, 0x1

    if-eqz p3, :cond_3

    if-eqz p4, :cond_3

    if-eqz p1, :cond_3

    .line 246
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper$BackStackEntry;->b()Landroid/content/Intent;

    move-result-object v1

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper$BackStackEntry;->b()Landroid/content/Intent;

    move-result-object v4

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    invoke-interface {p3, v1, p4, v4, p7}, Lo/Il;->a(Landroid/content/Intent;Lcom/netflix/mediaclient/android/fragment/NetflixFrag;Landroid/content/Intent;Z)V

    .line 247
    move-object v1, p4

    check-cast v1, Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v1}, Lo/UnsupportedEncodingException;->b(Landroidx/fragment/app/Fragment;)Lo/UnsupportedEncodingException;

    if-eqz p7, :cond_2

    .line 249
    invoke-static {}, Lcom/netflix/mediaclient/NetflixApplication;->getInstance()Lcom/netflix/mediaclient/NetflixApplication;

    move-result-object v1

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/netflix/mediaclient/NetflixApplication;->M()Lo/afH;

    move-result-object v1

    .line 250
    iget-object v4, p0, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper;->n:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper$BackStackEntry;->c()Lcom/netflix/cl/model/AppView;

    move-result-object v5

    invoke-virtual {v1, v4, v5, v3}, Lo/afH;->e(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/cl/model/AppView;Z)V

    .line 251
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper$BackStackEntry;->b()Landroid/content/Intent;

    move-result-object p1

    invoke-interface {p3, p1, p4}, Lo/Il;->c(Landroid/content/Intent;Lcom/netflix/mediaclient/android/fragment/NetflixFrag;)V

    goto :goto_1

    .line 253
    :cond_2
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper$BackStackEntry;->b()Landroid/content/Intent;

    move-result-object p1

    invoke-interface {p3, p1, v1}, Lo/Il;->d(Landroid/content/Intent;Landroidx/fragment/app/Fragment;)V

    :goto_1
    const/4 v1, 0x1

    :cond_3
    if-eqz p5, :cond_5

    if-eqz p6, :cond_5

    if-eqz p2, :cond_5

    .line 259
    invoke-virtual {p2}, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper$BackStackEntry;->b()Landroid/content/Intent;

    move-result-object p1

    invoke-interface {p5, p1, p6, p7}, Lo/Il;->c(Landroid/content/Intent;Lcom/netflix/mediaclient/android/fragment/NetflixFrag;Z)V

    .line 260
    sget p1, Lcom/netflix/mediaclient/ui/R$Fragment;->sd:I

    move-object p3, p6

    check-cast p3, Landroidx/fragment/app/Fragment;

    const-string p4, "fh_main_fragment"

    invoke-virtual {v0, p1, p3, p4}, Lo/UnsupportedEncodingException;->c(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Lo/UnsupportedEncodingException;

    if-nez p7, :cond_4

    .line 262
    invoke-static {}, Lcom/netflix/mediaclient/NetflixApplication;->getInstance()Lcom/netflix/mediaclient/NetflixApplication;

    move-result-object p1

    invoke-static {p1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/netflix/mediaclient/NetflixApplication;->M()Lo/afH;

    move-result-object p1

    .line 264
    iget-object p3, p0, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper;->n:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper$BackStackEntry;->b()Landroid/content/Intent;

    move-result-object p4

    invoke-interface {p5, p4}, Lo/Il;->b(Landroid/content/Intent;)Lcom/netflix/cl/model/AppView;

    move-result-object p4

    const-string v1, "nextHost.getAppView(nextEntry.intent)"

    invoke-static {p4, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 265
    invoke-virtual {p2}, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper$BackStackEntry;->b()Landroid/content/Intent;

    move-result-object v1

    invoke-interface {p5, v1}, Lo/Il;->a(Landroid/content/Intent;)Lcom/netflix/cl/model/TrackingInfo;

    move-result-object p5

    .line 263
    invoke-virtual {p1, p3, p4, p5}, Lo/afH;->a(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/cl/model/AppView;Lcom/netflix/cl/model/TrackingInfo;)V

    :cond_4
    const/4 v1, 0x1

    :cond_5
    if-eqz v1, :cond_6

    .line 272
    invoke-virtual {v0}, Lo/UnsupportedEncodingException;->e()V

    .line 275
    :cond_6
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p1

    .line 276
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "FH-isBack: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p4, " nextFrag: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "none"

    if-eqz p6, :cond_7

    .line 277
    invoke-virtual {p6}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->toString()Ljava/lang/String;

    move-result-object p5

    if-eqz p5, :cond_7

    goto :goto_2

    :cond_7
    move-object p5, p4

    :goto_2
    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p5, " intent: "

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_8

    .line 278
    invoke-virtual {p2}, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper$BackStackEntry;->b()Landroid/content/Intent;

    move-result-object p2

    if-eqz p2, :cond_8

    goto :goto_3

    :cond_8
    move-object p2, p4

    :goto_3
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 275
    invoke-interface {p1, p2}, Lo/SpinnerAdapter;->e(Ljava/lang/String;)V

    return v1
.end method

.method public static final synthetic e(Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper;)Lcom/netflix/mediaclient/android/fragment/NetflixFrag;
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper;->k()Lcom/netflix/mediaclient/android/fragment/NetflixFrag;

    move-result-object p0

    return-object p0
.end method

.method private final e(Landroid/content/Intent;)Lo/Il;
    .locals 3

    .line 170
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/Il;

    .line 171
    invoke-interface {v1, p1}, Lo/Il;->e(Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private final e(Ljava/lang/String;)Lo/Il;
    .locals 3

    .line 298
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/Il;

    .line 299
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public static final synthetic e(J)V
    .locals 0

    .line 63
    sput-wide p0, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper;->l:J

    return-void
.end method

.method private final e(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;Z)V
    .locals 3

    .line 493
    new-instance v0, Lo/afV;

    invoke-static {}, Lo/adq;->d()Z

    move-result v1

    invoke-direct {v0, v1}, Lo/afV;-><init>(Z)V

    .line 494
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper;->n:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    check-cast v1, Landroid/app/Activity;

    const v2, 0x1010054

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->b(Landroid/app/Activity;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lo/afV;->a(I)Lo/CharsetDecoder;

    .line 495
    sget-object v1, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper;->c:Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper$TaskDescription;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper$TaskDescription;->e()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lo/afV;->setDuration(J)Lo/CharsetDecoder;

    .line 496
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper;->g:Landroid/animation/Animator;

    if-eqz v1, :cond_1

    if-eqz p3, :cond_0

    .line 498
    invoke-virtual {v0, v1}, Lo/afV;->b(Landroid/animation/Animator;)V

    goto :goto_0

    .line 500
    :cond_0
    invoke-virtual {v0, v1}, Lo/afV;->a(Landroid/animation/Animator;)V

    :cond_1
    :goto_0
    if-eqz p2, :cond_3

    if-eqz p3, :cond_2

    .line 504
    new-instance v1, Lo/CharBuffer;

    invoke-direct {v1}, Lo/CharBuffer;-><init>()V

    check-cast v1, Lo/ECField;

    goto :goto_1

    :cond_2
    move-object v1, v0

    check-cast v1, Lo/ECField;

    :goto_1
    invoke-virtual {p2, v1}, Landroidx/fragment/app/Fragment;->setEnterTransition(Ljava/lang/Object;)V

    :cond_3
    if-eqz p1, :cond_5

    if-eqz p3, :cond_4

    .line 507
    check-cast v0, Lo/ECField;

    goto :goto_2

    :cond_4
    new-instance p2, Lo/CharBuffer;

    invoke-direct {p2}, Lo/CharBuffer;-><init>()V

    move-object v0, p2

    check-cast v0, Lo/ECField;

    :goto_2
    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->setExitTransition(Ljava/lang/Object;)V

    :cond_5
    return-void
.end method

.method private final e(Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper$BackStackEntry;Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper$BackStackEntry;Z)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "mainContainer"

    if-nez p2, :cond_5

    if-nez p3, :cond_1

    if-eqz p1, :cond_1

    .line 468
    iget-object p2, p0, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper;->b:Lo/Kg;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper$BackStackEntry;->b()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p2, p1}, Lo/Kg;->c(Landroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper;->f:Landroid/view/ViewGroup;

    if-nez p1, :cond_0

    invoke-static {v2}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 470
    :goto_0
    sget-object p1, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper;->c:Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper$TaskDescription;

    iget-object p2, p0, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper;->f:Landroid/view/ViewGroup;

    if-nez p2, :cond_2

    invoke-static {v2}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_2
    check-cast p2, Landroid/view/View;

    const/4 p3, 0x4

    if-eqz v0, :cond_3

    sget-wide v2, Lo/afW;->b:J

    goto :goto_1

    :cond_3
    sget-object v2, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper;->c:Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper$TaskDescription;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper$TaskDescription;->e()J

    move-result-wide v2

    :goto_1
    invoke-static {p1, p2, p3, v2, v3}, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper$TaskDescription;->b(Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper$TaskDescription;Landroid/view/View;IJ)V

    .line 471
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper;->n:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    if-eqz v0, :cond_4

    new-instance p2, Lo/afW;

    invoke-static {}, Lo/adq;->d()Z

    move-result p3

    invoke-direct {p2, p3}, Lo/afW;-><init>(Z)V

    goto :goto_2

    :cond_4
    new-instance p2, Lo/CharBuffer;

    invoke-direct {p2}, Lo/CharBuffer;-><init>()V

    :goto_2
    check-cast p2, Lo/ECField;

    check-cast p2, Lo/CharsetDecoder;

    invoke-virtual {p1, v1, p2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->setFragmentsHiddenState(ZLo/CharsetDecoder;)V

    goto :goto_4

    .line 473
    :cond_5
    iget-object p3, p0, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper;->f:Landroid/view/ViewGroup;

    if-nez p3, :cond_6

    invoke-static {v2}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_6
    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {p3, v3}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 474
    iget-object p3, p0, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper;->f:Landroid/view/ViewGroup;

    if-nez p3, :cond_7

    invoke-static {v2}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_7
    invoke-virtual {p3, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    if-nez p1, :cond_9

    .line 477
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper;->n()Lo/Il;

    move-result-object p1

    iget-object p3, p0, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper;->b:Lo/Kg;

    if-ne p1, p3, :cond_8

    invoke-virtual {p2}, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper$BackStackEntry;->b()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p3, p1}, Lo/Kg;->c(Landroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 478
    new-instance p1, Lo/afW;

    invoke-static {}, Lo/adq;->d()Z

    move-result p2

    invoke-direct {p1, p2}, Lo/afW;-><init>(Z)V

    check-cast p1, Lo/CharsetDecoder;

    goto :goto_3

    .line 480
    :cond_8
    new-instance p1, Lo/CharBuffer;

    invoke-direct {p1}, Lo/CharBuffer;-><init>()V

    const-wide/16 p2, 0x12c

    invoke-virtual {p1, p2, p3}, Lo/CharBuffer;->setDuration(J)Lo/CharsetDecoder;

    move-result-object p1

    const-string p2, "Fade().setDuration(300)"

    invoke-static {p1, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 482
    :goto_3
    iget-object p2, p0, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper;->n:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {p2, v0, p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->setFragmentsHiddenState(ZLo/CharsetDecoder;)V

    :cond_9
    :goto_4
    return-void
.end method

.method private final k()Lcom/netflix/mediaclient/android/fragment/NetflixFrag;
    .locals 2

    .line 89
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper;->n:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getSupportFragmentManager()Lo/SerializablePermission;

    move-result-object v0

    const-string v1, "fh_main_fragment"

    invoke-virtual {v0, v1}, Lo/SerializablePermission;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v1, v0, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    check-cast v0, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;

    return-object v0
.end method

.method public static final synthetic l()J
    .locals 2

    .line 63
    sget-wide v0, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper;->l:J

    return-wide v0
.end method

.method public static final m()J
    .locals 2

    sget-object v0, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper;->c:Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper$TaskDescription;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper$TaskDescription;->e()J

    move-result-wide v0

    return-wide v0
.end method

.method private final n()Lo/Il;
    .locals 1

    .line 83
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper;->o()Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper$BackStackEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 85
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper$BackStackEntry;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper;->e(Ljava/lang/String;)Lo/Il;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private final o()Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper$BackStackEntry;
    .locals 2

    .line 92
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper;->o:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper;->o:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper$BackStackEntry;

    :goto_0
    return-object v0
.end method

.method private final p()V
    .locals 3

    .line 401
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper;->n:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    sget v1, Lcom/netflix/mediaclient/ui/R$Fragment;->sd:I

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 402
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper;->n:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    sget v1, Lcom/netflix/mediaclient/ui/R$Fragment;->sd:I

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "activity.findViewById(R.\u2026cked_fragments_container)"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper;->f:Landroid/view/ViewGroup;

    .line 403
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper;->m:Z

    if-eqz v0, :cond_2

    .line 404
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper;->f:Landroid/view/ViewGroup;

    const-string v1, "mainContainer"

    if-nez v0, :cond_0

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 405
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper;->f:Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_2
    return-void

    .line 408
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "stacked_fragments_container missing"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method private final q()V
    .locals 2

    .line 417
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper;->n:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    new-instance v1, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper$Activity;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper$Activity;-><init>(Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper;)V

    check-cast v1, Lcom/netflix/mediaclient/android/activity/NetflixActivity$Application;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->runWhenManagerIsReady(Lcom/netflix/mediaclient/android/activity/NetflixActivity$Application;)V

    return-void
.end method

.method private final s()Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper$BackStackEntry;
    .locals 2

    .line 539
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper;->o:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 541
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper;->o:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper$BackStackEntry;

    :goto_0
    return-object v0
.end method

.method private final t()Z
    .locals 2

    .line 294
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper;->n:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getSupportFragmentManager()Lo/SerializablePermission;

    move-result-object v0

    const-string v1, "activity.supportFragmentManager"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lo/SerializablePermission;->j()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 413
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper;->o:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public a(Landroid/content/Intent;)Z
    .locals 13

    .line 180
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper;->t()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    if-nez p1, :cond_0

    goto/16 :goto_4

    .line 184
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper;->c:Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper$TaskDescription;

    check-cast v0, Lo/MessagePdu;

    .line 186
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper;->n:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const-string v2, "activity.window"

    invoke-static {v0, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/Window;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    .line 188
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper;->a()Z

    move-result v2

    if-nez v2, :cond_2

    .line 189
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper;->n:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getNetflixActionBar()Lcom/netflix/mediaclient/android/widget/NetflixActionBar;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->j()Z

    move-result v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper;->k:Z

    .line 192
    :cond_2
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper;->e(Landroid/content/Intent;)Lo/Il;

    move-result-object v8

    const/4 v2, 0x0

    if-eqz v8, :cond_9

    .line 194
    instance-of v3, v0, Landroid/widget/EditText;

    if-eqz v3, :cond_3

    .line 195
    iget-object v3, p0, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper;->n:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    check-cast v3, Landroid/app/Activity;

    check-cast v0, Landroid/widget/EditText;

    invoke-static {v3, v0}, Lo/adq;->d(Landroid/app/Activity;Landroid/widget/EditText;)V

    .line 198
    :cond_3
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper;->a()Z

    move-result v0

    const/4 v11, 0x1

    if-nez v0, :cond_4

    .line 199
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper;->n:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getNetflixActionBar()Lcom/netflix/mediaclient/android/widget/NetflixActionBar;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 200
    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->j()Z

    move-result v3

    if-nez v3, :cond_4

    .line 201
    invoke-virtual {v0, v11}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->c(I)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper;->g:Landroid/animation/Animator;

    .line 205
    :cond_4
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper;->n()Lo/Il;

    move-result-object v6

    .line 206
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper;->k()Lcom/netflix/mediaclient/android/fragment/NetflixFrag;

    move-result-object v7

    .line 207
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper;->o()Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper$BackStackEntry;

    move-result-object v0

    .line 208
    instance-of v3, v7, Lo/DT;

    if-nez v3, :cond_5

    move-object v3, v2

    goto :goto_1

    :cond_5
    move-object v3, v7

    :goto_1
    check-cast v3, Lo/DT;

    if-eqz v3, :cond_6

    invoke-interface {v3}, Lo/DT;->d()Landroid/os/Parcelable;

    move-result-object v3

    goto :goto_2

    :cond_6
    move-object v3, v2

    :goto_2
    if-eqz v7, :cond_7

    .line 210
    iget-object v4, p0, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper;->n:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v4}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getSupportFragmentManager()Lo/SerializablePermission;

    move-result-object v4

    move-object v5, v7

    check-cast v5, Landroidx/fragment/app/Fragment;

    invoke-virtual {v4, v5}, Lo/SerializablePermission;->c(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/Fragment$SavedState;

    move-result-object v4

    goto :goto_3

    :cond_7
    move-object v4, v2

    .line 213
    :goto_3
    invoke-interface {v8, p1}, Lo/Il;->d(Landroid/content/Intent;)Lcom/netflix/mediaclient/android/fragment/NetflixFrag;

    move-result-object v12

    if-eqz v12, :cond_8

    .line 215
    invoke-direct {p0, p1, v8, v4, v3}, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper;->c(Landroid/content/Intent;Lo/Il;Landroidx/fragment/app/Fragment$SavedState;Landroid/os/Parcelable;)Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper$BackStackEntry;

    move-result-object p1

    const/4 v10, 0x0

    move-object v3, p0

    move-object v4, v0

    move-object v5, p1

    move-object v9, v12

    .line 216
    invoke-direct/range {v3 .. v10}, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper;->c(Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper$BackStackEntry;Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper$BackStackEntry;Lo/Il;Lcom/netflix/mediaclient/android/fragment/NetflixFrag;Lo/Il;Lcom/netflix/mediaclient/android/fragment/NetflixFrag;Z)Z

    .line 217
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper;->q()V

    .line 219
    invoke-virtual {v12}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->ad_()Z

    .line 220
    invoke-direct {p0, v0, p1, v1}, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper;->c(Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper$BackStackEntry;Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper$BackStackEntry;Z)V

    const/4 v1, 0x1

    .line 224
    :cond_8
    invoke-static {}, Lcom/netflix/mediaclient/NetflixApplication;->getInstance()Lcom/netflix/mediaclient/NetflixApplication;

    move-result-object p1

    const-string v0, "NetflixApplication.getInstance()"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/netflix/mediaclient/NetflixApplication;->M()Lo/afH;

    move-result-object p1

    invoke-virtual {p1}, Lo/afH;->d()V

    .line 227
    :cond_9
    check-cast v2, Landroid/animation/Animator;

    iput-object v2, p0, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper;->g:Landroid/animation/Animator;

    :cond_a
    :goto_4
    return v1
.end method

.method public b(Lo/Il;)V
    .locals 1

    const-string v0, "creator"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 164
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public b()Z
    .locals 1

    .line 462
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper;->m:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper;->e(I)Z

    move-result v0

    return v0
.end method

.method public c(III)V
    .locals 1

    .line 392
    iput p1, p0, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper;->h:I

    .line 393
    iput p2, p0, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper;->i:I

    .line 394
    iput p3, p0, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper;->j:I

    .line 396
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper;->k()Lcom/netflix/mediaclient/android/fragment/NetflixFrag;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->e(III)V

    :cond_0
    return-void
.end method

.method public c(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "outState"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 152
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper;->a()Z

    move-result v0

    const-string v1, "fh_showing_fragment"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 153
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper;->k:Z

    const-string v1, "fh_showing_actionbar_initially"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 154
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper;->o:Ljava/util/ArrayList;

    const-string v1, "fh_backstack"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method public c()Z
    .locals 1

    const/4 v0, 0x1

    .line 316
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper;->a(Z)Z

    move-result v0

    return v0
.end method

.method public d()Lcom/netflix/mediaclient/servicemgr/PlayContext;
    .locals 3

    .line 488
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper;->k()Lcom/netflix/mediaclient/android/fragment/NetflixFrag;

    move-result-object v0

    instance-of v1, v0, Lo/DY;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    check-cast v0, Lo/DY;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lo/DY;->c()Lcom/netflix/mediaclient/ui/details/VideoInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/VideoInfo;->b()Lcom/netflix/mediaclient/servicemgr/PlayContext;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 489
    :cond_1
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/EmptyPlayContext;

    sget-object v1, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper;->c:Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper$TaskDescription;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper$TaskDescription;->getLogTag()Ljava/lang/String;

    move-result-object v1

    const/16 v2, -0x186

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/servicemgr/EmptyPlayContext;-><init>(Ljava/lang/String;I)V

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/PlayContext;

    :goto_0
    return-object v0
.end method

.method public e()Z
    .locals 2

    .line 309
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper;->k()Lcom/netflix/mediaclient/android/fragment/NetflixFrag;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->n()Z

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 310
    :cond_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper;->n()Lo/Il;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lo/Il;->a()Z

    move-result v0

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 311
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper;->b()Z

    move-result v1

    :goto_0
    return v1
.end method

.method public e(I)Z
    .locals 6

    .line 433
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper;->t()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, -0x1

    const/4 v2, 0x1

    if-ne p1, v0, :cond_1

    .line 438
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper;->o:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v2, :cond_1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper;->k:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/4 v3, 0x0

    .line 441
    :goto_1
    iget-object v4, p0, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper;->o:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper;->o:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v5, p1, 0x1

    if-le v4, v5, :cond_3

    .line 442
    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper;->b(Z)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_2

    :cond_2
    const/4 v3, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    if-eqz v3, :cond_4

    .line 448
    invoke-static {}, Lcom/netflix/mediaclient/NetflixApplication;->getInstance()Lcom/netflix/mediaclient/NetflixApplication;

    move-result-object p1

    const-string v2, "NetflixApplication.getInstance()"

    invoke-static {p1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/netflix/mediaclient/NetflixApplication;->M()Lo/afH;

    move-result-object p1

    invoke-virtual {p1}, Lo/afH;->d()V

    :cond_4
    if-eqz v0, :cond_5

    .line 451
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper;->n:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->requireNetflixActionBar()Lcom/netflix/mediaclient/android/widget/NetflixActionBar;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->e(Z)V

    :cond_5
    return v3
.end method

.method public f()Lcom/netflix/mediaclient/android/fragment/NetflixFrag;
    .locals 1

    .line 425
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper;->k()Lcom/netflix/mediaclient/android/fragment/NetflixFrag;

    move-result-object v0

    return-object v0
.end method

.method public final g()Lcom/netflix/mediaclient/android/activity/NetflixActivity;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper;->n:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    return-object v0
.end method

.method public h()Z
    .locals 1

    .line 421
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper;->n()Lo/Il;

    move-result-object v0

    instance-of v0, v0, Lo/DF;

    return v0
.end method

.method public i()Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;
    .locals 3

    .line 385
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper;->n:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getNetflixActionBar()Lcom/netflix/mediaclient/android/widget/NetflixActionBar;

    move-result-object v0

    .line 386
    iget-boolean v1, p0, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper;->m:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper;->j()I

    move-result v1

    if-le v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-eqz v0, :cond_2

    .line 387
    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->i()Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;->e(Z)Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;->e(I)Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 388
    sget-object v1, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$LogoType;->e:Lcom/netflix/mediaclient/android/widget/NetflixActionBar$LogoType;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;->c(Lcom/netflix/mediaclient/android/widget/NetflixActionBar$LogoType;)Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;

    move-result-object v0

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    return-object v0
.end method

.method public j()I
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper;->o:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
