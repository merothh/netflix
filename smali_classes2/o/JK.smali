.class public final Lo/JK;
.super Lcom/netflix/android/widgetry/lolomo/BaseVerticalRecyclerViewAdapter$StateListAnimator;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/JK$Application;
    }
.end annotation


# static fields
.field public static final b:Lo/JK$Application;

.field static final synthetic c:[Lo/amT;


# instance fields
.field private final a:Lo/ams;

.field private final e:Lo/ECPrivateKeySpec;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lo/amT;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lo/JK;

    invoke-static {v2}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v2

    const-string v3, "rowLoadingAnimationView"

    const-string v4, "getRowLoadingAnimationView()Landroid/view/View;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v1

    check-cast v1, Lo/amT;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lo/JK;->c:[Lo/amT;

    new-instance v0, Lo/JK$Application;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/JK$Application;-><init>(Lo/amc;)V

    sput-object v0, Lo/JK;->b:Lo/JK$Application;

    return-void
.end method

.method private constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 19
    invoke-direct {p0, p1}, Lcom/netflix/android/widgetry/lolomo/BaseVerticalRecyclerViewAdapter$StateListAnimator;-><init>(Landroid/view/View;)V

    .line 38
    sget p1, Lcom/netflix/mediaclient/ui/R$Fragment;->jV:I

    invoke-static {p0, p1}, Lo/NfcV;->d(Landroidx/recyclerview/widget/RecyclerView$Intent;I)Lo/ams;

    move-result-object p1

    iput-object p1, p0, Lo/JK;->a:Lo/ams;

    .line 43
    invoke-direct {p0}, Lo/JK;->e()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/netflix/mediaclient/ui/R$Activity;->m:I

    invoke-static {p1, v0}, Lo/ECPrivateKeySpec;->b(Landroid/content/Context;I)Lo/ECPrivateKeySpec;

    move-result-object p1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lo/JK;->e:Lo/ECPrivateKeySpec;

    .line 44
    invoke-direct {p0}, Lo/JK;->e()Landroid/view/View;

    move-result-object p1

    new-instance v0, Lo/JK$4;

    invoke-direct {v0, p0}, Lo/JK$4;-><init>(Lo/JK;)V

    check-cast v0, Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void

    .line 43
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type androidx.vectordrawable.graphics.drawable.AnimatedVectorDrawableCompat"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic constructor <init>(Landroid/view/View;Lo/amc;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lo/JK;-><init>(Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic c(Lo/JK;)Landroid/view/View;
    .locals 0

    .line 19
    invoke-direct {p0}, Lo/JK;->e()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic d(Lo/JK;)Lo/ECPrivateKeySpec;
    .locals 0

    .line 19
    iget-object p0, p0, Lo/JK;->e:Lo/ECPrivateKeySpec;

    return-object p0
.end method

.method private final d()V
    .locals 3

    .line 64
    invoke-static {}, Lo/adu;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 70
    :cond_0
    :try_start_0
    iget-object v0, p0, Lo/JK;->e:Lo/ECPrivateKeySpec;

    invoke-virtual {v0}, Lo/ECPrivateKeySpec;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    .line 71
    invoke-direct {p0}, Lo/JK;->e()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lo/JK;->e:Lo/ECPrivateKeySpec;

    check-cast v1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 72
    iget-object v0, p0, Lo/JK;->e:Lo/ECPrivateKeySpec;

    invoke-virtual {v0}, Lo/ECPrivateKeySpec;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 76
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v1

    check-cast v0, Ljava/lang/Throwable;

    const-string v2, "Unable to load avd_lolomo_single_row_loading_more_skeleton"

    invoke-interface {v1, v2, v0}, Lo/SpinnerAdapter;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private final e()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lo/JK;->a:Lo/ams;

    sget-object v1, Lo/JK;->c:[Lo/amT;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public static final e(Landroid/view/ViewGroup;)Lo/JK;
    .locals 1

    sget-object v0, Lo/JK;->b:Lo/JK$Application;

    invoke-virtual {v0, p0}, Lo/JK$Application;->e(Landroid/view/ViewGroup;)Lo/JK;

    move-result-object p0

    return-object p0
.end method

.method private final h()V
    .locals 2

    .line 81
    invoke-static {}, Lo/adu;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 85
    :cond_0
    invoke-direct {p0}, Lo/JK;->e()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 86
    instance-of v1, v0, Lo/ECPrivateKeySpec;

    if-eqz v1, :cond_1

    .line 87
    check-cast v0, Lo/ECPrivateKeySpec;

    invoke-virtual {v0}, Lo/ECPrivateKeySpec;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 88
    invoke-virtual {v0}, Lo/ECPrivateKeySpec;->stop()V

    .line 92
    :cond_1
    invoke-direct {p0}, Lo/JK;->e()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    check-cast v1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .line 59
    invoke-direct {p0}, Lo/JK;->h()V

    .line 60
    invoke-super {p0}, Lcom/netflix/android/widgetry/lolomo/BaseVerticalRecyclerViewAdapter$StateListAnimator;->a()V

    return-void
.end method

.method public c()V
    .locals 0

    .line 54
    invoke-direct {p0}, Lo/JK;->d()V

    .line 55
    invoke-super {p0}, Lcom/netflix/android/widgetry/lolomo/BaseVerticalRecyclerViewAdapter$StateListAnimator;->c()V

    return-void
.end method
