.class public final Lo/Registrant;
.super Landroid/widget/LinearLayout;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/Registrant$StateListAnimator;,
        Lo/Registrant$Activity;,
        Lo/Registrant$TaskDescription;
    }
.end annotation


# static fields
.field public static final a:Lo/Registrant$TaskDescription;

.field static final synthetic e:[Lo/amT;


# instance fields
.field private B:Ljava/lang/String;

.field private final C:Lo/Registrant$Dialog;

.field private final b:Lo/ams;

.field private final c:Lo/ams;

.field private final d:Lo/ams;

.field private final f:Lo/ams;

.field private final g:Lo/ams;

.field private final h:Lo/ams;

.field private final i:Lo/ams;

.field private final j:Lo/ams;

.field private final k:Lo/ams;

.field private final l:Lo/ams;

.field private final m:Lo/ams;

.field private final n:Lo/ams;

.field private final o:Lo/ams;

.field private final p:Landroid/view/animation/Interpolator;

.field private final q:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lo/Registrant$StateListAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private final r:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lo/Registrant$StateListAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private s:Lo/Registrant$StateListAnimator;

.field private t:Lo/Registrant$StateListAnimator;

.field private u:Lo/alB;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/alB<",
            "Lo/akj;",
            ">;"
        }
    .end annotation
.end field

.field private v:J

.field private w:I

.field private x:Z

.field private final y:Landroid/animation/LayoutTransition;

.field private final z:Lo/Registrant$FragmentManager;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lo/Registrant;

    const/16 v1, 0xd

    new-array v1, v1, [Lo/amT;

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "base"

    const-string v5, "getBase()Landroid/view/ViewGroup;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "carat"

    const-string v5, "getCarat()Landroid/widget/ImageView;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "logoIcon"

    const-string v5, "getLogoIcon()Landroid/widget/ImageView;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "subCategory"

    const-string v5, "getSubCategory()Landroid/widget/TextView;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "subCategoryCarat"

    const-string v5, "getSubCategoryCarat()Landroid/view/View;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x4

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "spacer0"

    const-string v5, "getSpacer0()Landroid/view/View;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x5

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "spacer1"

    const-string v5, "getSpacer1()Landroid/view/View;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x6

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "spacer2"

    const-string v5, "getSpacer2()Landroid/view/View;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x7

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "spacer3"

    const-string v5, "getSpacer3()Landroid/view/View;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/16 v3, 0x8

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "text0"

    const-string v5, "getText0()Lcom/netflix/mediaclient/android/widget/NetflixTextView;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/16 v3, 0x9

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "text1"

    const-string v5, "getText1()Lcom/netflix/mediaclient/android/widget/NetflixTextView;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/16 v3, 0xa

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "text2"

    const-string v5, "getText2()Lcom/netflix/mediaclient/android/widget/NetflixTextView;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/16 v3, 0xb

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v0

    const-string v3, "text3"

    const-string v4, "getText3()Lcom/netflix/mediaclient/android/widget/NetflixTextView;"

    invoke-direct {v2, v0, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v0

    check-cast v0, Lo/amT;

    const/16 v2, 0xc

    aput-object v0, v1, v2

    sput-object v1, Lo/Registrant;->e:[Lo/amT;

    new-instance v0, Lo/Registrant$TaskDescription;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/Registrant$TaskDescription;-><init>(Lo/amc;)V

    sput-object v0, Lo/Registrant;->a:Lo/Registrant$TaskDescription;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lo/Registrant;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILo/amc;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lo/Registrant;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILo/amc;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    sget p1, Lo/IHwInterface$FragmentManager;->e:I

    invoke-static {p0, p1}, Lo/NfcV;->a(Landroid/view/View;I)Lo/ams;

    move-result-object p1

    iput-object p1, p0, Lo/Registrant;->b:Lo/ams;

    .line 44
    sget p1, Lo/IHwInterface$FragmentManager;->a:I

    invoke-static {p0, p1}, Lo/NfcV;->a(Landroid/view/View;I)Lo/ams;

    move-result-object p1

    iput-object p1, p0, Lo/Registrant;->d:Lo/ams;

    .line 45
    sget p1, Lo/IHwInterface$FragmentManager;->t:I

    invoke-static {p0, p1}, Lo/NfcV;->a(Landroid/view/View;I)Lo/ams;

    move-result-object p1

    iput-object p1, p0, Lo/Registrant;->c:Lo/ams;

    .line 46
    sget p1, Lo/IHwInterface$FragmentManager;->A:I

    invoke-static {p0, p1}, Lo/NfcV;->a(Landroid/view/View;I)Lo/ams;

    move-result-object p1

    iput-object p1, p0, Lo/Registrant;->h:Lo/ams;

    .line 47
    sget p1, Lo/IHwInterface$FragmentManager;->z:I

    invoke-static {p0, p1}, Lo/NfcV;->a(Landroid/view/View;I)Lo/ams;

    move-result-object p1

    iput-object p1, p0, Lo/Registrant;->j:Lo/ams;

    .line 48
    sget p1, Lo/IHwInterface$FragmentManager;->x:I

    invoke-static {p0, p1}, Lo/NfcV;->a(Landroid/view/View;I)Lo/ams;

    move-result-object p1

    iput-object p1, p0, Lo/Registrant;->g:Lo/ams;

    .line 49
    sget p1, Lo/IHwInterface$FragmentManager;->v:I

    invoke-static {p0, p1}, Lo/NfcV;->a(Landroid/view/View;I)Lo/ams;

    move-result-object p1

    iput-object p1, p0, Lo/Registrant;->f:Lo/ams;

    .line 50
    sget p1, Lo/IHwInterface$FragmentManager;->C:I

    invoke-static {p0, p1}, Lo/NfcV;->a(Landroid/view/View;I)Lo/ams;

    move-result-object p1

    iput-object p1, p0, Lo/Registrant;->i:Lo/ams;

    .line 51
    sget p1, Lo/IHwInterface$FragmentManager;->D:I

    invoke-static {p0, p1}, Lo/NfcV;->a(Landroid/view/View;I)Lo/ams;

    move-result-object p1

    iput-object p1, p0, Lo/Registrant;->k:Lo/ams;

    .line 52
    sget p1, Lo/IHwInterface$FragmentManager;->I:I

    invoke-static {p0, p1}, Lo/NfcV;->a(Landroid/view/View;I)Lo/ams;

    move-result-object p1

    iput-object p1, p0, Lo/Registrant;->l:Lo/ams;

    .line 53
    sget p1, Lo/IHwInterface$FragmentManager;->F:I

    invoke-static {p0, p1}, Lo/NfcV;->a(Landroid/view/View;I)Lo/ams;

    move-result-object p1

    iput-object p1, p0, Lo/Registrant;->n:Lo/ams;

    .line 54
    sget p1, Lo/IHwInterface$FragmentManager;->E:I

    invoke-static {p0, p1}, Lo/NfcV;->a(Landroid/view/View;I)Lo/ams;

    move-result-object p1

    iput-object p1, p0, Lo/Registrant;->o:Lo/ams;

    .line 55
    sget p1, Lo/IHwInterface$FragmentManager;->G:I

    invoke-static {p0, p1}, Lo/NfcV;->a(Landroid/view/View;I)Lo/ams;

    move-result-object p1

    iput-object p1, p0, Lo/Registrant;->m:Lo/ams;

    const p1, 0x3f2e147b    # 0.68f

    const/4 p2, 0x0

    const p3, 0x3e87ae14    # 0.265f

    const v0, 0x3f933333    # 1.15f

    .line 56
    invoke-static {p1, p2, p3, v0}, Lo/ObjectOutput;->e(FFFF)Landroid/view/animation/Interpolator;

    move-result-object p1

    iput-object p1, p0, Lo/Registrant;->p:Landroid/view/animation/Interpolator;

    .line 58
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lo/Registrant;->r:Ljava/util/ArrayList;

    .line 59
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lo/Registrant;->q:Ljava/util/HashMap;

    const-wide/16 p1, 0x64

    .line 62
    iput-wide p1, p0, Lo/Registrant;->v:J

    .line 63
    new-instance p1, Landroid/animation/LayoutTransition;

    invoke-direct {p1}, Landroid/animation/LayoutTransition;-><init>()V

    iput-object p1, p0, Lo/Registrant;->y:Landroid/animation/LayoutTransition;

    const-string p1, ""

    .line 67
    iput-object p1, p0, Lo/Registrant;->B:Ljava/lang/String;

    .line 69
    new-instance p1, Lo/Registrant$Dialog;

    invoke-direct {p1, p0}, Lo/Registrant$Dialog;-><init>(Lo/Registrant;)V

    iput-object p1, p0, Lo/Registrant;->C:Lo/Registrant$Dialog;

    .line 75
    new-instance p1, Lo/Registrant$FragmentManager;

    invoke-direct {p1, p0}, Lo/Registrant$FragmentManager;-><init>(Lo/Registrant;)V

    iput-object p1, p0, Lo/Registrant;->z:Lo/Registrant$FragmentManager;

    const/4 p1, 0x0

    .line 92
    invoke-virtual {p0, p1}, Lo/Registrant;->setOrientation(I)V

    .line 93
    invoke-virtual {p0, p1}, Lo/Registrant;->setClipChildren(Z)V

    .line 95
    invoke-virtual {p0}, Lo/Registrant;->getContext()Landroid/content/Context;

    move-result-object p2

    sget p3, Lo/IHwInterface$LoaderManager;->a:I

    move-object v0, p0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-static {p2, p3, v0}, Landroid/widget/LinearLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 97
    iget-object p2, p0, Lo/Registrant;->r:Ljava/util/ArrayList;

    check-cast p2, Ljava/util/Collection;

    new-instance p3, Lo/Registrant$StateListAnimator;

    invoke-direct {p0}, Lo/Registrant;->i()Landroid/view/View;

    move-result-object v1

    invoke-direct {p0}, Lo/Registrant;->m()Lo/ImageSwitcher;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p3

    invoke-direct/range {v0 .. v5}, Lo/Registrant$StateListAnimator;-><init>(Landroid/view/View;Lo/ImageSwitcher;ZILo/amc;)V

    invoke-interface {p2, p3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 98
    iget-object p2, p0, Lo/Registrant;->r:Ljava/util/ArrayList;

    check-cast p2, Ljava/util/Collection;

    new-instance p3, Lo/Registrant$StateListAnimator;

    invoke-direct {p0}, Lo/Registrant;->j()Landroid/view/View;

    move-result-object v1

    invoke-direct {p0}, Lo/Registrant;->k()Lo/ImageSwitcher;

    move-result-object v2

    move-object v0, p3

    invoke-direct/range {v0 .. v5}, Lo/Registrant$StateListAnimator;-><init>(Landroid/view/View;Lo/ImageSwitcher;ZILo/amc;)V

    invoke-interface {p2, p3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 99
    iget-object p2, p0, Lo/Registrant;->r:Ljava/util/ArrayList;

    check-cast p2, Ljava/util/Collection;

    new-instance p3, Lo/Registrant$StateListAnimator;

    invoke-direct {p0}, Lo/Registrant;->g()Landroid/view/View;

    move-result-object v1

    invoke-direct {p0}, Lo/Registrant;->n()Lo/ImageSwitcher;

    move-result-object v2

    move-object v0, p3

    invoke-direct/range {v0 .. v5}, Lo/Registrant$StateListAnimator;-><init>(Landroid/view/View;Lo/ImageSwitcher;ZILo/amc;)V

    invoke-interface {p2, p3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 100
    iget-object p2, p0, Lo/Registrant;->r:Ljava/util/ArrayList;

    check-cast p2, Ljava/util/Collection;

    new-instance p3, Lo/Registrant$StateListAnimator;

    invoke-direct {p0}, Lo/Registrant;->h()Landroid/view/View;

    move-result-object v1

    invoke-direct {p0}, Lo/Registrant;->o()Lo/ImageSwitcher;

    move-result-object v2

    move-object v0, p3

    invoke-direct/range {v0 .. v5}, Lo/Registrant$StateListAnimator;-><init>(Landroid/view/View;Lo/ImageSwitcher;ZILo/amc;)V

    invoke-interface {p2, p3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 102
    iget-object p2, p0, Lo/Registrant;->r:Ljava/util/ArrayList;

    check-cast p2, Ljava/lang/Iterable;

    .line 484
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lo/Registrant$StateListAnimator;

    .line 103
    invoke-virtual {p3}, Lo/Registrant$StateListAnimator;->a()Lo/ImageSwitcher;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lo/ImageSwitcher;->setVisibility(I)V

    .line 104
    invoke-virtual {p3}, Lo/Registrant$StateListAnimator;->b()Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 107
    :cond_0
    iget-object p2, p0, Lo/Registrant;->y:Landroid/animation/LayoutTransition;

    const-wide/16 v0, 0x0

    const/4 p3, 0x1

    invoke-virtual {p2, p3, v0, v1}, Landroid/animation/LayoutTransition;->setStartDelay(IJ)V

    .line 108
    iget-object p2, p0, Lo/Registrant;->y:Landroid/animation/LayoutTransition;

    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    .line 109
    iget-object p2, p0, Lo/Registrant;->y:Landroid/animation/LayoutTransition;

    const/4 v0, 0x3

    invoke-virtual {p2, v0}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    .line 110
    iget-object p2, p0, Lo/Registrant;->y:Landroid/animation/LayoutTransition;

    iget-object v0, p0, Lo/Registrant;->p:Landroid/view/animation/Interpolator;

    check-cast v0, Landroid/animation/TimeInterpolator;

    invoke-virtual {p2, p3, v0}, Landroid/animation/LayoutTransition;->setInterpolator(ILandroid/animation/TimeInterpolator;)V

    .line 111
    iget-object p2, p0, Lo/Registrant;->y:Landroid/animation/LayoutTransition;

    iget-object p3, p0, Lo/Registrant;->p:Landroid/view/animation/Interpolator;

    check-cast p3, Landroid/animation/TimeInterpolator;

    invoke-virtual {p2, p1, p3}, Landroid/animation/LayoutTransition;->setInterpolator(ILandroid/animation/TimeInterpolator;)V

    .line 112
    iget-object p1, p0, Lo/Registrant;->y:Landroid/animation/LayoutTransition;

    .line 113
    new-instance p2, Lo/Registrant$4;

    invoke-direct {p2, p0}, Lo/Registrant$4;-><init>(Lo/Registrant;)V

    check-cast p2, Landroid/animation/LayoutTransition$TransitionListener;

    .line 112
    invoke-virtual {p1, p2}, Landroid/animation/LayoutTransition;->addTransitionListener(Landroid/animation/LayoutTransition$TransitionListener;)V

    .line 131
    invoke-direct {p0}, Lo/Registrant;->d()Landroid/view/ViewGroup;

    move-result-object p1

    iget-object p2, p0, Lo/Registrant;->y:Landroid/animation/LayoutTransition;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILo/amc;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    .line 34
    check-cast p2, Landroid/util/AttributeSet;

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lo/Registrant;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private final a()Landroid/widget/ImageView;
    .locals 3

    iget-object v0, p0, Lo/Registrant;->c:Lo/ams;

    sget-object v1, Lo/Registrant;->e:[Lo/amT;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method

.method public static final synthetic a(Lo/Registrant;)Lo/alB;
    .locals 0

    .line 34
    iget-object p0, p0, Lo/Registrant;->u:Lo/alB;

    return-object p0
.end method

.method private final a(Lo/Registrant$StateListAnimator;)V
    .locals 12

    .line 287
    iget-object v0, p0, Lo/Registrant;->s:Lo/Registrant$StateListAnimator;

    const/4 v1, 0x0

    const/16 v2, 0x8

    const v3, 0x3f933333    # 1.15f

    const/4 v4, 0x0

    if-eqz v0, :cond_2

    .line 288
    invoke-direct {p0, v4}, Lo/Registrant;->a(Z)V

    .line 289
    iget-object v0, p0, Lo/Registrant;->s:Lo/Registrant$StateListAnimator;

    const/high16 v5, 0x3f800000    # 1.0f

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/Registrant$StateListAnimator;->a()Lo/ImageSwitcher;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 290
    move-object v6, v0

    check-cast v6, Landroid/view/View;

    invoke-direct {p0, v6, v5}, Lo/Registrant;->e(Landroid/view/View;F)V

    .line 291
    invoke-virtual {v0, v1}, Lo/ImageSwitcher;->setTranslationX(F)V

    .line 292
    invoke-static {v6, v4, v4}, Lo/RemoteException;->c(Landroid/view/View;II)V

    .line 294
    :cond_0
    iget-object v0, p0, Lo/Registrant;->s:Lo/Registrant$StateListAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lo/Registrant$StateListAnimator;->a()Lo/ImageSwitcher;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v2}, Lo/ImageSwitcher;->setVisibility(I)V

    .line 295
    :cond_1
    iput-object p1, p0, Lo/Registrant;->t:Lo/Registrant$StateListAnimator;

    .line 296
    iput-object p1, p0, Lo/Registrant;->s:Lo/Registrant$StateListAnimator;

    .line 297
    invoke-virtual {p1}, Lo/Registrant$StateListAnimator;->a()Lo/ImageSwitcher;

    move-result-object v0

    invoke-virtual {v0, v4}, Lo/ImageSwitcher;->setVisibility(I)V

    .line 298
    invoke-virtual {p1}, Lo/Registrant$StateListAnimator;->a()Lo/ImageSwitcher;

    move-result-object v0

    invoke-virtual {v0, v5}, Lo/ImageSwitcher;->setAlpha(F)V

    .line 299
    invoke-virtual {p1}, Lo/Registrant$StateListAnimator;->a()Lo/ImageSwitcher;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v0, v3}, Lo/Registrant;->e(Landroid/view/View;F)V

    .line 300
    invoke-virtual {p1}, Lo/Registrant$StateListAnimator;->a()Lo/ImageSwitcher;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget v1, p0, Lo/Registrant;->w:I

    invoke-static {v0, v4, v1}, Lo/RemoteException;->c(Landroid/view/View;II)V

    .line 301
    invoke-direct {p0, p1}, Lo/Registrant;->b(Lo/Registrant$StateListAnimator;)F

    move-result v0

    .line 302
    invoke-virtual {p1}, Lo/Registrant$StateListAnimator;->a()Lo/ImageSwitcher;

    move-result-object p1

    invoke-virtual {p1, v0}, Lo/ImageSwitcher;->setTranslationX(F)V

    .line 303
    invoke-direct {p0}, Lo/Registrant;->b()Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setTranslationX(F)V

    goto/16 :goto_2

    :cond_2
    const/4 v0, 0x1

    .line 305
    invoke-direct {p0, v0}, Lo/Registrant;->a(Z)V

    .line 306
    iput-object p1, p0, Lo/Registrant;->t:Lo/Registrant$StateListAnimator;

    .line 307
    iput-object p1, p0, Lo/Registrant;->s:Lo/Registrant$StateListAnimator;

    .line 309
    invoke-virtual {p0}, Lo/Registrant;->isLaidOut()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 311
    invoke-virtual {p1}, Lo/Registrant$StateListAnimator;->a()Lo/ImageSwitcher;

    move-result-object v5

    invoke-virtual {v5}, Lo/ImageSwitcher;->getVisibility()I

    move-result v5

    const-wide/16 v6, 0x0

    if-ne v5, v2, :cond_3

    move-wide v8, v6

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lo/Registrant;->r:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v2, v0

    int-to-long v8, v2

    const-wide/16 v10, 0x96

    mul-long v8, v8, v10

    add-long/2addr v8, v10

    :goto_0
    iput-wide v8, p0, Lo/Registrant;->v:J

    .line 312
    iget-object v2, p0, Lo/Registrant;->y:Landroid/animation/LayoutTransition;

    iget-wide v8, p0, Lo/Registrant;->v:J

    invoke-virtual {v2, v4, v8, v9}, Landroid/animation/LayoutTransition;->setDuration(IJ)V

    .line 313
    iget-object v2, p0, Lo/Registrant;->y:Landroid/animation/LayoutTransition;

    iget-wide v8, p0, Lo/Registrant;->v:J

    invoke-virtual {v2, v0, v8, v9}, Landroid/animation/LayoutTransition;->setDuration(IJ)V

    .line 315
    iput-boolean v4, p0, Lo/Registrant;->x:Z

    .line 316
    invoke-virtual {p1}, Lo/Registrant$StateListAnimator;->a()Lo/ImageSwitcher;

    move-result-object v2

    invoke-virtual {v2}, Lo/ImageSwitcher;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 318
    invoke-direct {p0, p1}, Lo/Registrant;->b(Lo/Registrant$StateListAnimator;)F

    move-result v2

    const-wide/16 v4, 0x32

    .line 320
    invoke-virtual {p1}, Lo/Registrant$StateListAnimator;->a()Lo/ImageSwitcher;

    move-result-object p1

    invoke-virtual {p1}, Lo/ImageSwitcher;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 321
    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 322
    invoke-virtual {p1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object v3, p0, Lo/Registrant;->z:Lo/Registrant$FragmentManager;

    check-cast v3, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {p1, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 324
    invoke-direct {p0}, Lo/Registrant;->b()Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 326
    iget-object p1, p0, Lo/Registrant;->r:Ljava/util/ArrayList;

    check-cast p1, Ljava/lang/Iterable;

    .line 463
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/Registrant$StateListAnimator;

    .line 327
    iget-object v3, p0, Lo/Registrant;->s:Lo/Registrant$StateListAnimator;

    invoke-static {v2, v3}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    xor-int/2addr v3, v0

    if-eqz v3, :cond_4

    .line 328
    invoke-virtual {v2}, Lo/Registrant$StateListAnimator;->a()Lo/ImageSwitcher;

    move-result-object v3

    invoke-virtual {v3}, Lo/ImageSwitcher;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 329
    invoke-virtual {v2}, Lo/Registrant$StateListAnimator;->a()Lo/ImageSwitcher;

    move-result-object v2

    invoke-virtual {v2}, Lo/ImageSwitcher;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 330
    invoke-virtual {v2, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_1

    .line 334
    :cond_5
    invoke-virtual {p1}, Lo/Registrant$StateListAnimator;->a()Lo/ImageSwitcher;

    move-result-object v0

    invoke-virtual {v0, v3}, Lo/ImageSwitcher;->setScaleX(F)V

    .line 335
    invoke-virtual {p1}, Lo/Registrant$StateListAnimator;->a()Lo/ImageSwitcher;

    move-result-object p1

    invoke-virtual {p1, v3}, Lo/ImageSwitcher;->setScaleY(F)V

    .line 336
    invoke-direct {p0}, Lo/Registrant;->p()V

    :cond_6
    :goto_2
    return-void
.end method

.method private final a(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 279
    invoke-direct {p0}, Lo/Registrant;->d()Landroid/view/ViewGroup;

    move-result-object p1

    iget-object v0, p0, Lo/Registrant;->y:Landroid/animation/LayoutTransition;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    goto :goto_0

    .line 281
    :cond_0
    invoke-direct {p0}, Lo/Registrant;->d()Landroid/view/ViewGroup;

    move-result-object p1

    const/4 v0, 0x0

    check-cast v0, Landroid/animation/LayoutTransition;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    :goto_0
    return-void
.end method

.method private final b(Lo/Registrant$StateListAnimator;)F
    .locals 3

    .line 343
    invoke-virtual {p1}, Lo/Registrant$StateListAnimator;->a()Lo/ImageSwitcher;

    move-result-object v0

    invoke-virtual {v0}, Lo/ImageSwitcher;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Lo/Registrant$StateListAnimator;->a()Lo/ImageSwitcher;

    move-result-object v1

    invoke-virtual {v1}, Lo/ImageSwitcher;->getPaddingStart()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const v1, 0x3e199998    # 0.14999998f

    mul-float v0, v0, v1

    const/4 v1, 0x2

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 344
    iget v1, p0, Lo/Registrant;->w:I

    invoke-virtual {p1}, Lo/Registrant$StateListAnimator;->a()Lo/ImageSwitcher;

    move-result-object v2

    invoke-virtual {v2}, Lo/ImageSwitcher;->getPaddingStart()I

    move-result v2

    sub-int/2addr v1, v2

    .line 345
    invoke-virtual {p1}, Lo/Registrant$StateListAnimator;->a()Lo/ImageSwitcher;

    move-result-object v2

    invoke-virtual {v2}, Lo/ImageSwitcher;->getX()F

    move-result v2

    sub-float/2addr v2, v0

    int-to-float v1, v1

    cmpg-float v2, v2, v1

    if-gez v2, :cond_0

    .line 346
    invoke-virtual {p1}, Lo/Registrant$StateListAnimator;->a()Lo/ImageSwitcher;

    move-result-object p1

    invoke-virtual {p1}, Lo/ImageSwitcher;->getX()F

    move-result p1

    sub-float/2addr p1, v0

    sub-float/2addr v1, p1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private final b()Landroid/widget/ImageView;
    .locals 3

    iget-object v0, p0, Lo/Registrant;->d:Lo/ams;

    sget-object v1, Lo/Registrant;->e:[Lo/amT;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method

.method public static final synthetic b(Lo/Registrant;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lo/Registrant;->p()V

    return-void
.end method

.method private final c()Landroid/widget/TextView;
    .locals 3

    iget-object v0, p0, Lo/Registrant;->h:Lo/ams;

    sget-object v1, Lo/Registrant;->e:[Lo/amT;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public static final synthetic c(Lo/Registrant;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lo/Registrant;->q()V

    return-void
.end method

.method public static final synthetic c(Lo/Registrant;Lo/alB;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lo/Registrant;->u:Lo/alB;

    return-void
.end method

.method private final d()Landroid/view/ViewGroup;
    .locals 3

    iget-object v0, p0, Lo/Registrant;->b:Lo/ams;

    sget-object v1, Lo/Registrant;->e:[Lo/amT;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method

.method public static final synthetic d(Lo/Registrant;)Ljava/util/ArrayList;
    .locals 0

    .line 34
    iget-object p0, p0, Lo/Registrant;->r:Ljava/util/ArrayList;

    return-object p0
.end method

.method private final d(I)V
    .locals 2

    .line 241
    iget-object v0, p0, Lo/Registrant;->r:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 242
    iget-object v0, p0, Lo/Registrant;->r:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "holders[index]"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lo/Registrant$StateListAnimator;

    .line 243
    iget-object v1, p0, Lo/Registrant;->r:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 244
    invoke-virtual {v0}, Lo/Registrant$StateListAnimator;->b()Landroid/view/View;

    move-result-object p1

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 245
    invoke-virtual {v0}, Lo/Registrant$StateListAnimator;->a()Lo/ImageSwitcher;

    move-result-object p1

    invoke-virtual {p1, v1}, Lo/ImageSwitcher;->setVisibility(I)V

    .line 246
    invoke-virtual {v0}, Lo/Registrant$StateListAnimator;->a()Lo/ImageSwitcher;

    move-result-object p1

    sget-object v0, Lo/Registrant$ActionBar;->d:Lo/Registrant$ActionBar;

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Lo/ImageSwitcher;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method private final e(Landroid/view/View;F)V
    .locals 0

    .line 385
    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleX(F)V

    .line 386
    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method

.method public static final synthetic e(Lo/Registrant;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lo/Registrant;->s()V

    return-void
.end method

.method public static final synthetic e(Lo/Registrant;I)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lo/Registrant;->d(I)V

    return-void
.end method

.method private final f()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lo/Registrant;->j:Lo/ams;

    sget-object v1, Lo/Registrant;->e:[Lo/amT;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method private final g()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lo/Registrant;->i:Lo/ams;

    sget-object v1, Lo/Registrant;->e:[Lo/amT;

    const/4 v2, 0x7

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method private final h()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lo/Registrant;->k:Lo/ams;

    sget-object v1, Lo/Registrant;->e:[Lo/amT;

    const/16 v2, 0x8

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method private final i()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lo/Registrant;->g:Lo/ams;

    sget-object v1, Lo/Registrant;->e:[Lo/amT;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method private final j()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lo/Registrant;->f:Lo/ams;

    sget-object v1, Lo/Registrant;->e:[Lo/amT;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method private final k()Lo/ImageSwitcher;
    .locals 3

    iget-object v0, p0, Lo/Registrant;->n:Lo/ams;

    sget-object v1, Lo/Registrant;->e:[Lo/amT;

    const/16 v2, 0xa

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ImageSwitcher;

    return-object v0
.end method

.method private final l()Z
    .locals 1

    .line 163
    invoke-direct {p0}, Lo/Registrant;->c()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final m()Lo/ImageSwitcher;
    .locals 3

    iget-object v0, p0, Lo/Registrant;->l:Lo/ams;

    sget-object v1, Lo/Registrant;->e:[Lo/amT;

    const/16 v2, 0x9

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ImageSwitcher;

    return-object v0
.end method

.method private final n()Lo/ImageSwitcher;
    .locals 3

    iget-object v0, p0, Lo/Registrant;->o:Lo/ams;

    sget-object v1, Lo/Registrant;->e:[Lo/amT;

    const/16 v2, 0xb

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ImageSwitcher;

    return-object v0
.end method

.method private final o()Lo/ImageSwitcher;
    .locals 3

    iget-object v0, p0, Lo/Registrant;->m:Lo/ams;

    sget-object v1, Lo/Registrant;->e:[Lo/amT;

    const/16 v2, 0xc

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ImageSwitcher;

    return-object v0
.end method

.method private final p()V
    .locals 6

    .line 390
    sget-object v0, Lo/Registrant;->a:Lo/Registrant$TaskDescription;

    check-cast v0, Lo/MessagePdu;

    const/4 v0, 0x1

    .line 391
    invoke-direct {p0, v0}, Lo/Registrant;->a(Z)V

    .line 393
    iget-object v1, p0, Lo/Registrant;->s:Lo/Registrant$StateListAnimator;

    if-eqz v1, :cond_4

    .line 394
    invoke-virtual {v1}, Lo/Registrant$StateListAnimator;->a()Lo/ImageSwitcher;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    iget v3, p0, Lo/Registrant;->w:I

    const/4 v4, 0x0

    invoke-static {v2, v4, v3}, Lo/RemoteException;->c(Landroid/view/View;II)V

    .line 395
    invoke-direct {p0}, Lo/Registrant;->b()Landroid/widget/ImageView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 396
    invoke-direct {p0}, Lo/Registrant;->b()Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 397
    invoke-virtual {v1}, Lo/Registrant$StateListAnimator;->c()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 398
    invoke-direct {p0}, Lo/Registrant;->c()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setAlpha(F)V

    .line 399
    invoke-direct {p0}, Lo/Registrant;->c()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 400
    invoke-direct {p0}, Lo/Registrant;->f()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 401
    invoke-direct {p0}, Lo/Registrant;->f()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 404
    :cond_0
    iget-object v2, p0, Lo/Registrant;->r:Ljava/util/ArrayList;

    check-cast v2, Ljava/lang/Iterable;

    .line 477
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/Registrant$StateListAnimator;

    .line 405
    invoke-virtual {v3}, Lo/Registrant$StateListAnimator;->b()Landroid/view/View;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 406
    invoke-static {v3, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    xor-int/2addr v4, v0

    if-eqz v4, :cond_1

    .line 407
    invoke-virtual {v3}, Lo/Registrant$StateListAnimator;->a()Lo/ImageSwitcher;

    move-result-object v3

    invoke-virtual {v3, v5}, Lo/ImageSwitcher;->setVisibility(I)V

    goto :goto_0

    .line 410
    :cond_2
    invoke-virtual {p0}, Lo/Registrant;->isLaidOut()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 411
    new-instance v0, Lcom/netflix/android/widgetry/widget/AroRibbon$changeLayoutForSubcategory$$inlined$let$lambda$1;

    invoke-direct {v0, p0}, Lcom/netflix/android/widgetry/widget/AroRibbon$changeLayoutForSubcategory$$inlined$let$lambda$1;-><init>(Lo/Registrant;)V

    check-cast v0, Lo/alB;

    iput-object v0, p0, Lo/Registrant;->u:Lo/alB;

    goto :goto_1

    .line 413
    :cond_3
    invoke-direct {p0}, Lo/Registrant;->q()V

    :cond_4
    :goto_1
    return-void
.end method

.method private final q()V
    .locals 5

    const/4 v0, 0x1

    .line 419
    iput-boolean v0, p0, Lo/Registrant;->x:Z

    .line 420
    sget-object v0, Lo/Registrant;->a:Lo/Registrant$TaskDescription;

    check-cast v0, Lo/MessagePdu;

    .line 421
    iget-object v0, p0, Lo/Registrant;->s:Lo/Registrant$StateListAnimator;

    if-eqz v0, :cond_3

    .line 422
    invoke-virtual {v0}, Lo/Registrant$StateListAnimator;->c()Z

    move-result v0

    const-wide/16 v1, 0xc8

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v0, :cond_1

    .line 423
    invoke-virtual {p0}, Lo/Registrant;->isLaidOut()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 424
    invoke-direct {p0}, Lo/Registrant;->c()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 425
    invoke-direct {p0}, Lo/Registrant;->c()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 426
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 427
    iget-object v4, p0, Lo/Registrant;->p:Landroid/view/animation/Interpolator;

    check-cast v4, Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v4, 0x0

    .line 428
    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 429
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 430
    invoke-direct {p0}, Lo/Registrant;->f()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 431
    invoke-direct {p0}, Lo/Registrant;->f()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 432
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 433
    iget-object v4, p0, Lo/Registrant;->p:Landroid/view/animation/Interpolator;

    check-cast v4, Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 434
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    .line 436
    :cond_0
    invoke-direct {p0}, Lo/Registrant;->c()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setAlpha(F)V

    .line 437
    invoke-direct {p0}, Lo/Registrant;->f()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 440
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lo/Registrant;->isLaidOut()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 441
    invoke-direct {p0}, Lo/Registrant;->b()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 442
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 443
    iget-object v1, p0, Lo/Registrant;->p:Landroid/view/animation/Interpolator;

    check-cast v1, Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 444
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_1

    .line 446
    :cond_2
    invoke-direct {p0}, Lo/Registrant;->b()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    :cond_3
    :goto_1
    return-void
.end method

.method private final s()V
    .locals 9

    .line 357
    sget-object v0, Lo/Registrant;->a:Lo/Registrant$TaskDescription;

    check-cast v0, Lo/MessagePdu;

    const/4 v0, 0x1

    .line 358
    invoke-direct {p0, v0}, Lo/Registrant;->a(Z)V

    .line 360
    iget-object v1, p0, Lo/Registrant;->s:Lo/Registrant$StateListAnimator;

    if-eqz v1, :cond_3

    .line 361
    invoke-direct {p0}, Lo/Registrant;->c()Landroid/widget/TextView;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 362
    invoke-direct {p0}, Lo/Registrant;->f()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 363
    invoke-direct {p0}, Lo/Registrant;->b()Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 365
    iget-object v2, p0, Lo/Registrant;->r:Ljava/util/ArrayList;

    check-cast v2, Ljava/lang/Iterable;

    .line 470
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/Registrant$StateListAnimator;

    .line 366
    invoke-virtual {v3}, Lo/Registrant$StateListAnimator;->a()Lo/ImageSwitcher;

    move-result-object v5

    invoke-virtual {v5}, Lo/ImageSwitcher;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    const-string v6, "holder.text.text"

    invoke-static {v5, v6}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    const/4 v6, 0x0

    if-nez v5, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    if-nez v5, :cond_0

    .line 367
    invoke-virtual {v3}, Lo/Registrant$StateListAnimator;->a()Lo/ImageSwitcher;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-static {v5, v6, v6}, Lo/RemoteException;->c(Landroid/view/View;II)V

    .line 368
    invoke-virtual {v3}, Lo/Registrant$StateListAnimator;->b()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 369
    invoke-virtual {v3}, Lo/Registrant$StateListAnimator;->a()Lo/ImageSwitcher;

    move-result-object v5

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Lo/ImageSwitcher;->setTranslationX(F)V

    .line 370
    invoke-static {v3, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    xor-int/2addr v5, v0

    if-eqz v5, :cond_0

    .line 371
    invoke-virtual {v3}, Lo/Registrant$StateListAnimator;->a()Lo/ImageSwitcher;

    move-result-object v5

    invoke-virtual {v5, v7}, Lo/ImageSwitcher;->setAlpha(F)V

    .line 372
    invoke-virtual {v3}, Lo/Registrant$StateListAnimator;->a()Lo/ImageSwitcher;

    move-result-object v5

    invoke-virtual {v5, v6}, Lo/ImageSwitcher;->setVisibility(I)V

    .line 373
    invoke-virtual {v3}, Lo/Registrant$StateListAnimator;->a()Lo/ImageSwitcher;

    move-result-object v5

    invoke-virtual {v5}, Lo/ImageSwitcher;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    const-wide/16 v6, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 374
    invoke-virtual {v3}, Lo/Registrant$StateListAnimator;->a()Lo/ImageSwitcher;

    move-result-object v3

    invoke-virtual {v3}, Lo/ImageSwitcher;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v3, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 375
    iget-wide v5, p0, Lo/Registrant;->v:J

    const/16 v7, 0x64

    int-to-long v7, v7

    sub-long/2addr v5, v7

    invoke-virtual {v3, v5, v6}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const-wide/16 v5, 0xc8

    invoke-virtual {v3, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 376
    iget-object v5, p0, Lo/Registrant;->p:Landroid/view/animation/Interpolator;

    check-cast v5, Landroid/animation/TimeInterpolator;

    invoke-virtual {v3, v5}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->start()V

    goto/16 :goto_0

    .line 380
    :cond_2
    check-cast v4, Lo/Registrant$StateListAnimator;

    iput-object v4, p0, Lo/Registrant;->s:Lo/Registrant$StateListAnimator;

    :cond_3
    return-void
.end method


# virtual methods
.method public final e()V
    .locals 7

    .line 254
    iget-object v0, p0, Lo/Registrant;->s:Lo/Registrant$StateListAnimator;

    if-eqz v0, :cond_0

    .line 255
    invoke-virtual {v0}, Lo/Registrant$StateListAnimator;->a()Lo/ImageSwitcher;

    move-result-object v1

    invoke-virtual {v1}, Lo/ImageSwitcher;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 256
    invoke-virtual {v0}, Lo/Registrant$StateListAnimator;->a()Lo/ImageSwitcher;

    move-result-object v0

    invoke-virtual {v0}, Lo/ImageSwitcher;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v4, 0xc8

    .line 257
    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v6, p0, Lo/Registrant;->p:Landroid/view/animation/Interpolator;

    check-cast v6, Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v6}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 258
    invoke-direct {p0}, Lo/Registrant;->c()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 259
    invoke-direct {p0}, Lo/Registrant;->c()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v6, p0, Lo/Registrant;->p:Landroid/view/animation/Interpolator;

    check-cast v6, Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v6}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v6, p0, Lo/Registrant;->C:Lo/Registrant$Dialog;

    check-cast v6, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v6}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 260
    invoke-direct {p0}, Lo/Registrant;->f()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 261
    invoke-direct {p0}, Lo/Registrant;->f()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v6, p0, Lo/Registrant;->p:Landroid/view/animation/Interpolator;

    check-cast v6, Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v6}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 262
    invoke-direct {p0}, Lo/Registrant;->b()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 263
    invoke-direct {p0}, Lo/Registrant;->b()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lo/Registrant;->p:Landroid/view/animation/Interpolator;

    check-cast v1, Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_0
    return-void
.end method

.method public isLaidOut()Z
    .locals 1

    .line 353
    invoke-virtual {p0}, Lo/Registrant;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lo/Registrant;->getHeight()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onMeasure(II)V
    .locals 3

    .line 171
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 173
    invoke-direct {p0}, Lo/Registrant;->l()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 174
    iget-object p2, p0, Lo/Registrant;->s:Lo/Registrant$StateListAnimator;

    if-eqz p2, :cond_4

    .line 176
    invoke-direct {p0}, Lo/Registrant;->c()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lo/MenuInflater$StateListAnimator;

    .line 177
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-direct {p0}, Lo/Registrant;->a()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr p1, v1

    invoke-direct {p0}, Lo/Registrant;->b()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr p1, v1

    invoke-direct {p0}, Lo/Registrant;->f()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr p1, v1

    invoke-virtual {v0}, Lo/MenuInflater$StateListAnimator;->getMarginStart()I

    move-result v1

    sub-int/2addr p1, v1

    invoke-virtual {v0}, Lo/MenuInflater$StateListAnimator;->getMarginEnd()I

    move-result v0

    sub-int/2addr p1, v0

    .line 178
    invoke-direct {p0}, Lo/Registrant;->c()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p2}, Lo/Registrant$StateListAnimator;->a()Lo/ImageSwitcher;

    move-result-object p2

    invoke-virtual {p2}, Lo/ImageSwitcher;->getMeasuredWidth()I

    move-result p2

    sub-int/2addr p1, p2

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setMaxWidth(I)V

    goto :goto_2

    .line 176
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 182
    :cond_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-direct {p0}, Lo/Registrant;->a()Landroid/widget/ImageView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result p2

    sub-int/2addr p1, p2

    .line 183
    iget-object p2, p0, Lo/Registrant;->r:Ljava/util/ArrayList;

    check-cast p2, Ljava/lang/Iterable;

    const/4 v0, 0x0

    .line 457
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/Registrant$StateListAnimator;

    .line 183
    invoke-virtual {v1}, Lo/Registrant$StateListAnimator;->a()Lo/ImageSwitcher;

    move-result-object v1

    invoke-virtual {v1}, Lo/ImageSwitcher;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_2
    if-le v0, p1, :cond_4

    .line 186
    iget-object p2, p0, Lo/Registrant;->r:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 v1, 0x2

    if-le p2, v1, :cond_3

    .line 459
    new-instance p2, Lo/Registrant$Application;

    invoke-direct {p2, p0}, Lo/Registrant$Application;-><init>(Lo/Registrant;)V

    check-cast p2, Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {p0, p2}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 197
    :cond_3
    iget-object p2, p0, Lo/Registrant;->r:Ljava/util/ArrayList;

    check-cast p2, Ljava/lang/Iterable;

    .line 461
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/Registrant$StateListAnimator;

    .line 198
    invoke-virtual {v1}, Lo/Registrant$StateListAnimator;->a()Lo/ImageSwitcher;

    move-result-object v2

    invoke-virtual {v1}, Lo/Registrant$StateListAnimator;->a()Lo/ImageSwitcher;

    move-result-object v1

    invoke-virtual {v1}, Lo/ImageSwitcher;->getMeasuredWidth()I

    move-result v1

    mul-int v1, v1, p1

    div-int/2addr v1, v0

    invoke-virtual {v2, v1}, Lo/ImageSwitcher;->setMaxWidth(I)V

    goto :goto_1

    :cond_4
    :goto_2
    return-void
.end method

.method public final setLogoClickListener(Lo/alA;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/alA<",
            "-",
            "Landroid/view/View;",
            "Lo/akj;",
            ">;)V"
        }
    .end annotation

    const-string v0, "clickListener"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 226
    invoke-direct {p0}, Lo/Registrant;->a()Landroid/widget/ImageView;

    move-result-object v0

    new-instance v1, Lo/SELinux;

    invoke-direct {v1, p1}, Lo/SELinux;-><init>(Lo/alA;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final setMainCaratClickListener(Lo/alA;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/alA<",
            "-",
            "Landroid/view/View;",
            "Lo/akj;",
            ">;)V"
        }
    .end annotation

    const-string v0, "clickListener"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 234
    invoke-direct {p0}, Lo/Registrant;->b()Landroid/widget/ImageView;

    move-result-object v0

    new-instance v1, Lo/SELinux;

    invoke-direct {v1, p1}, Lo/SELinux;-><init>(Lo/alA;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final setSelectedPrimaryGenre(Ljava/lang/String;)V
    .locals 1

    const-string v0, "genreId"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 271
    iget-object v0, p0, Lo/Registrant;->q:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/Registrant$StateListAnimator;

    if-eqz p1, :cond_0

    .line 272
    iget-object v0, p0, Lo/Registrant;->s:Lo/Registrant$StateListAnimator;

    invoke-static {p1, v0}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 273
    invoke-direct {p0, p1}, Lo/Registrant;->a(Lo/Registrant$StateListAnimator;)V

    :cond_0
    return-void
.end method

.method public final setSubCategoryClickListener(Lo/alA;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/alA<",
            "-",
            "Landroid/view/View;",
            "Lo/akj;",
            ">;)V"
        }
    .end annotation

    const-string v0, "clickListener"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 221
    invoke-direct {p0}, Lo/Registrant;->c()Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Lo/SELinux;

    invoke-direct {v1, p1}, Lo/SELinux;-><init>(Lo/alA;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 222
    invoke-direct {p0}, Lo/Registrant;->f()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lo/SELinux;

    invoke-direct {v1, p1}, Lo/SELinux;-><init>(Lo/alA;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final setSubCategoryLabel(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "label"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "genreId"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 214
    invoke-direct {p0}, Lo/Registrant;->c()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0, p1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lo/Registrant;->B:Ljava/lang/String;

    invoke-static {v0, p2}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 215
    :cond_0
    invoke-direct {p0}, Lo/Registrant;->c()Landroid/widget/TextView;

    move-result-object v0

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 216
    iput-object p2, p0, Lo/Registrant;->B:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public final setSubCategoryVisibility(I)V
    .locals 1

    .line 206
    invoke-direct {p0}, Lo/Registrant;->c()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 207
    invoke-direct {p0}, Lo/Registrant;->f()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    if-nez p1, :cond_0

    .line 208
    invoke-virtual {p0}, Lo/Registrant;->isLaidOut()Z

    move-result p1

    if-nez p1, :cond_0

    .line 209
    invoke-direct {p0}, Lo/Registrant;->q()V

    :cond_0
    return-void
.end method

.method public final setTablet(Z)V
    .locals 5

    const-string v0, "Lookup.get<Context>().resources"

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 137
    invoke-direct {p0}, Lo/Registrant;->a()Landroid/widget/ImageView;

    move-result-object p1

    sget v3, Lo/IHwInterface$TaskDescription;->b:I

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 138
    invoke-direct {p0}, Lo/Registrant;->a()Landroid/widget/ImageView;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    const/16 v3, 0x28

    int-to-float v3, v3

    .line 452
    sget-object v4, Lo/TextViewMetrics;->e:Lo/TextViewMetrics;

    .line 453
    const-class v4, Landroid/content/Context;

    invoke-static {v4}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v4, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 452
    invoke-static {v1, v3, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    .line 138
    invoke-static {p1, v2, v0}, Lo/RemoteException;->e(Landroid/view/View;II)V

    goto :goto_0

    .line 140
    :cond_0
    invoke-direct {p0}, Lo/Registrant;->a()Landroid/widget/ImageView;

    move-result-object p1

    sget v3, Lo/IHwInterface$TaskDescription;->o:I

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 141
    invoke-direct {p0}, Lo/Registrant;->a()Landroid/widget/ImageView;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    const/16 v3, 0x14

    int-to-float v3, v3

    .line 454
    sget-object v4, Lo/TextViewMetrics;->e:Lo/TextViewMetrics;

    .line 455
    const-class v4, Landroid/content/Context;

    invoke-static {v4}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v4, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 454
    invoke-static {v1, v3, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    .line 141
    invoke-static {p1, v2, v0}, Lo/RemoteException;->e(Landroid/view/View;II)V

    .line 143
    :goto_0
    invoke-direct {p0}, Lo/Registrant;->a()Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ImageView;->getPaddingStart()I

    move-result p1

    iput p1, p0, Lo/Registrant;->w:I

    return-void
.end method

.method public final setupHolder(ILjava/lang/String;Ljava/lang/String;ZLo/alA;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lo/alA<",
            "-",
            "Landroid/view/View;",
            "Lo/akj;",
            ">;)V"
        }
    .end annotation

    const-string v0, "label"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "genreId"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clickListener"

    invoke-static {p5, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lo/Registrant;->r:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 151
    iget-object v0, p0, Lo/Registrant;->r:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "holders[index]"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lo/Registrant$StateListAnimator;

    .line 152
    invoke-virtual {p1, p4}, Lo/Registrant$StateListAnimator;->e(Z)V

    .line 153
    invoke-virtual {p1}, Lo/Registrant$StateListAnimator;->a()Lo/ImageSwitcher;

    move-result-object p4

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p4, p2}, Lo/ImageSwitcher;->setText(Ljava/lang/CharSequence;)V

    .line 154
    invoke-virtual {p1}, Lo/Registrant$StateListAnimator;->a()Lo/ImageSwitcher;

    move-result-object p2

    sget p4, Lo/IHwInterface$FragmentManager;->d:I

    new-instance v0, Lo/Registrant$Activity;

    invoke-direct {v0, p3}, Lo/Registrant$Activity;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p4, v0}, Lo/ImageSwitcher;->setTag(ILjava/lang/Object;)V

    .line 155
    invoke-virtual {p1}, Lo/Registrant$StateListAnimator;->a()Lo/ImageSwitcher;

    move-result-object p2

    new-instance p4, Lo/SELinux;

    invoke-direct {p4, p5}, Lo/SELinux;-><init>(Lo/alA;)V

    check-cast p4, Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p4}, Lo/ImageSwitcher;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    invoke-virtual {p1}, Lo/Registrant$StateListAnimator;->a()Lo/ImageSwitcher;

    move-result-object p2

    const/4 p4, 0x0

    invoke-virtual {p2, p4}, Lo/ImageSwitcher;->setVisibility(I)V

    .line 157
    invoke-virtual {p1}, Lo/Registrant$StateListAnimator;->b()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p4}, Landroid/view/View;->setVisibility(I)V

    .line 159
    iget-object p2, p0, Lo/Registrant;->q:Ljava/util/HashMap;

    check-cast p2, Ljava/util/Map;

    invoke-interface {p2, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
