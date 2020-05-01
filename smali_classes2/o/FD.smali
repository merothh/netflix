.class public Lo/FD;
.super Lo/VibrationEffect;
.source ""

# interfaces
.implements Lcom/netflix/mediaclient/ui/details/uiView/ISeasonsSelectionUIView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/FD$Application;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/VibrationEffect<",
        "Lo/DG;",
        ">;",
        "Lcom/netflix/mediaclient/ui/details/uiView/ISeasonsSelectionUIView;"
    }
.end annotation


# static fields
.field public static final b:Lo/FD$Application;

.field private static final k:Lo/Fragment$StateListAnimator;


# instance fields
.field private final a:Lo/TA;

.field private final c:Landroid/view/View;

.field private final d:Lo/aka;

.field private final e:Lo/ImageSwitcher;

.field private final f:Lcom/netflix/mediaclient/ui/details/uiView/ISeasonsSelectionUIView$DisplayMode;

.field private final g:Lo/UpdateEngine;

.field private final h:Lo/aka;

.field private final i:Landroid/view/ViewGroup;

.field private final j:Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observable<",
            "Lo/DG;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lo/FD$Application;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/FD$Application;-><init>(Lo/amc;)V

    sput-object v0, Lo/FD;->b:Lo/FD$Application;

    .line 31
    new-instance v0, Lo/Fragment$StateListAnimator;

    const/4 v1, -0x2

    const v2, 0x800013

    invoke-direct {v0, v1, v1, v2}, Lo/Fragment$StateListAnimator;-><init>(III)V

    sput-object v0, Lo/FD;->k:Lo/Fragment$StateListAnimator;

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;Lo/UpdateEngine;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lo/FD;-><init>(Landroid/view/ViewGroup;Lo/UpdateEngine;Lcom/netflix/mediaclient/ui/details/uiView/ISeasonsSelectionUIView$DisplayMode;ILo/amc;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;Lo/UpdateEngine;Lcom/netflix/mediaclient/ui/details/uiView/ISeasonsSelectionUIView$DisplayMode;)V
    .locals 2

    const-string v0, "parent"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "displayMode"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    move-object v0, p1

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v0}, Lo/VibrationEffect;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lo/FD;->i:Landroid/view/ViewGroup;

    iput-object p2, p0, Lo/FD;->g:Lo/UpdateEngine;

    iput-object p3, p0, Lo/FD;->f:Lcom/netflix/mediaclient/ui/details/uiView/ISeasonsSelectionUIView$DisplayMode;

    .line 34
    new-instance p1, Lo/TA;

    invoke-direct {p1}, Lo/TA;-><init>()V

    iput-object p1, p0, Lo/FD;->a:Lo/TA;

    .line 37
    iget-object p1, p0, Lo/FD;->f:Lcom/netflix/mediaclient/ui/details/uiView/ISeasonsSelectionUIView$DisplayMode;

    sget-object p2, Lcom/netflix/mediaclient/ui/details/uiView/ISeasonsSelectionUIView$DisplayMode;->e:Lcom/netflix/mediaclient/ui/details/uiView/ISeasonsSelectionUIView$DisplayMode;

    const/4 p3, 0x0

    if-ne p1, p2, :cond_0

    .line 38
    iget-object p1, p0, Lo/FD;->i:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 39
    sget p2, Lcom/netflix/mediaclient/ui/R$Dialog;->fs:I

    .line 40
    iget-object v0, p0, Lo/FD;->i:Landroid/view/ViewGroup;

    .line 38
    invoke-virtual {p1, p2, v0, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string p2, "LayoutInflater.from(pare\u2026      false\n            )"

    invoke-static {p1, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 44
    :cond_0
    iget-object p1, p0, Lo/FD;->i:Landroid/view/ViewGroup;

    sget p2, Lcom/netflix/mediaclient/ui/R$Dialog;->fx:I

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {p1, p2, p3, v0, v1}, Lo/BatteryStats;->e(Landroid/view/ViewGroup;IIILjava/lang/Object;)Landroid/view/View;

    move-result-object p1

    .line 37
    :goto_0
    iput-object p1, p0, Lo/FD;->c:Landroid/view/View;

    .line 48
    iget-object p1, p0, Lo/FD;->f:Lcom/netflix/mediaclient/ui/details/uiView/ISeasonsSelectionUIView$DisplayMode;

    sget-object p2, Lcom/netflix/mediaclient/ui/details/uiView/ISeasonsSelectionUIView$DisplayMode;->e:Lcom/netflix/mediaclient/ui/details/uiView/ISeasonsSelectionUIView$DisplayMode;

    if-ne p1, p2, :cond_2

    .line 49
    iget-object p1, p0, Lo/FD;->c:Landroid/view/View;

    if-eqz p1, :cond_1

    check-cast p1, Lo/ImageSwitcher;

    goto :goto_1

    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type com.netflix.mediaclient.android.widget.NetflixTextView"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 51
    :cond_2
    iget-object p1, p0, Lo/FD;->c:Landroid/view/View;

    sget p2, Lcom/netflix/mediaclient/ui/R$Fragment;->qT:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "rootView.findViewById(R.id.season_name)"

    invoke-static {p1, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lo/ImageSwitcher;

    .line 48
    :goto_1
    iput-object p1, p0, Lo/FD;->e:Lo/ImageSwitcher;

    .line 53
    new-instance p1, Lcom/netflix/mediaclient/ui/details/uiView/SeasonsSelectionUIView$containerId$2;

    invoke-direct {p1, p0}, Lcom/netflix/mediaclient/ui/details/uiView/SeasonsSelectionUIView$containerId$2;-><init>(Lo/FD;)V

    check-cast p1, Lo/alB;

    invoke-static {p1}, Lo/akd;->a(Lo/alB;)Lo/aka;

    move-result-object p1

    iput-object p1, p0, Lo/FD;->d:Lo/aka;

    .line 56
    iget-object p1, p0, Lo/FD;->g:Lo/UpdateEngine;

    if-eqz p1, :cond_3

    const-class p2, Lo/DG;

    invoke-virtual {p1, p2}, Lo/UpdateEngine;->a(Ljava/lang/Class;)Lio/reactivex/Observable;

    move-result-object p1

    if-eqz p1, :cond_3

    goto :goto_2

    .line 57
    :cond_3
    invoke-super {p0}, Lo/VibrationEffect;->w()Lio/reactivex/Observable;

    move-result-object p1

    :goto_2
    iput-object p1, p0, Lo/FD;->j:Lio/reactivex/Observable;

    .line 59
    new-instance p1, Lcom/netflix/mediaclient/ui/details/uiView/SeasonsSelectionUIView$caret$2;

    invoke-direct {p1, p0}, Lcom/netflix/mediaclient/ui/details/uiView/SeasonsSelectionUIView$caret$2;-><init>(Lo/FD;)V

    check-cast p1, Lo/alB;

    invoke-static {p1}, Lo/akd;->a(Lo/alB;)Lo/aka;

    move-result-object p1

    iput-object p1, p0, Lo/FD;->h:Lo/aka;

    .line 64
    iget-object p1, p0, Lo/FD;->e:Lo/ImageSwitcher;

    new-instance p2, Lo/FD$4;

    invoke-direct {p2, p0}, Lo/FD$4;-><init>(Lo/FD;)V

    check-cast p2, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Lo/ImageSwitcher;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/view/ViewGroup;Lo/UpdateEngine;Lcom/netflix/mediaclient/ui/details/uiView/ISeasonsSelectionUIView$DisplayMode;ILo/amc;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    .line 26
    check-cast p2, Lo/UpdateEngine;

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 27
    sget-object p3, Lcom/netflix/mediaclient/ui/details/uiView/ISeasonsSelectionUIView$DisplayMode;->d:Lcom/netflix/mediaclient/ui/details/uiView/ISeasonsSelectionUIView$DisplayMode;

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lo/FD;-><init>(Landroid/view/ViewGroup;Lo/UpdateEngine;Lcom/netflix/mediaclient/ui/details/uiView/ISeasonsSelectionUIView$DisplayMode;)V

    return-void
.end method

.method private final h()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lo/FD;->h:Lo/aka;

    invoke-interface {v0}, Lo/aka;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget-object v0, p0, Lo/FD;->d:Lo/aka;

    invoke-interface {v0}, Lo/aka;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    const-string v0, "title"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lo/FD;->e:Lo/ImageSwitcher;

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Lo/ImageSwitcher;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public b()V
    .locals 3

    .line 101
    iget-object v0, p0, Lo/FD;->f:Lcom/netflix/mediaclient/ui/details/uiView/ISeasonsSelectionUIView$DisplayMode;

    sget-object v1, Lcom/netflix/mediaclient/ui/details/uiView/ISeasonsSelectionUIView$DisplayMode;->e:Lcom/netflix/mediaclient/ui/details/uiView/ISeasonsSelectionUIView$DisplayMode;

    if-ne v0, v1, :cond_0

    .line 102
    iget-object v0, p0, Lo/FD;->a:Lo/TA;

    iget-object v1, p0, Lo/FD;->e:Lo/ImageSwitcher;

    check-cast v1, Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lo/TA;->c(Landroid/view/View;Z)V

    goto :goto_0

    .line 104
    :cond_0
    iget-object v0, p0, Lo/FD;->e:Lo/ImageSwitcher;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lo/ImageSwitcher;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public b(Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;)V
    .locals 1

    const-string v0, "builder"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lo/FD;->e:Lo/ImageSwitcher;

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;->a(Landroid/view/View;)Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;

    move-result-object p1

    sget-object v0, Lo/FD;->k:Lo/Fragment$StateListAnimator;

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;->d(Lo/Fragment$StateListAnimator;)Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;

    return-void
.end method

.method public c()V
    .locals 4

    .line 109
    iget-object v0, p0, Lo/FD;->e:Lo/ImageSwitcher;

    const/4 v1, 0x1

    .line 110
    invoke-virtual {v0, v1}, Lo/ImageSwitcher;->setEnabled(Z)V

    .line 111
    invoke-direct {p0}, Lo/FD;->h()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0}, Lo/ImageSwitcher;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v2

    const-string v3, "view.textColors"

    invoke-static {v2, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/util/ViewUtils;->c(Landroid/graphics/drawable/Drawable;I)V

    .line 112
    invoke-direct {p0}, Lo/FD;->h()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v1, v2}, Lo/ImageSwitcher;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public synthetic d()Landroid/view/View;
    .locals 1

    .line 24
    invoke-virtual {p0}, Lo/FD;->i()Lo/ImageSwitcher;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public d(I)V
    .locals 7

    .line 126
    iget-object v0, p0, Lo/FD;->e:Lo/ImageSwitcher;

    invoke-virtual {v0}, Lo/ImageSwitcher;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 127
    iget-object v0, p0, Lo/FD;->g:Lo/UpdateEngine;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 128
    const-class v3, Lo/DG;

    .line 129
    new-instance v4, Lo/DG$StateListAnimator;

    .line 131
    iget-object v5, p0, Lo/FD;->f:Lcom/netflix/mediaclient/ui/details/uiView/ISeasonsSelectionUIView$DisplayMode;

    sget-object v6, Lcom/netflix/mediaclient/ui/details/uiView/ISeasonsSelectionUIView$DisplayMode;->e:Lcom/netflix/mediaclient/ui/details/uiView/ISeasonsSelectionUIView$DisplayMode;

    if-ne v5, v6, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 129
    :goto_0
    invoke-direct {v4, p1, v1}, Lo/DG$StateListAnimator;-><init>(IZ)V

    check-cast v4, Lo/VintfObject;

    .line 127
    invoke-virtual {v0, v3, v4}, Lo/UpdateEngine;->c(Ljava/lang/Class;Lo/VintfObject;)V

    goto :goto_2

    .line 133
    :cond_1
    move-object v0, p0

    check-cast v0, Lo/FD;

    .line 135
    new-instance v3, Lo/DG$StateListAnimator;

    .line 137
    iget-object v4, v0, Lo/FD;->f:Lcom/netflix/mediaclient/ui/details/uiView/ISeasonsSelectionUIView$DisplayMode;

    sget-object v5, Lcom/netflix/mediaclient/ui/details/uiView/ISeasonsSelectionUIView$DisplayMode;->e:Lcom/netflix/mediaclient/ui/details/uiView/ISeasonsSelectionUIView$DisplayMode;

    if-ne v4, v5, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    .line 135
    :goto_1
    invoke-direct {v3, p1, v1}, Lo/DG$StateListAnimator;-><init>(IZ)V

    .line 134
    invoke-virtual {v0, v3}, Lo/FD;->e(Ljava/lang/Object;)V

    :cond_3
    :goto_2
    return-void
.end method

.method public d(Lo/SimpleExpandableListAdapter;)V
    .locals 3

    .line 85
    iget-object v0, p0, Lo/FD;->e:Lo/ImageSwitcher;

    if-eqz p1, :cond_0

    .line 86
    invoke-virtual {v0}, Lo/ImageSwitcher;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 87
    new-instance v1, Lo/Spinner;

    invoke-virtual {v0}, Lo/ImageSwitcher;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "view.context"

    invoke-static {v0, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lo/SimpleAdapter;

    const/4 v2, 0x0

    invoke-direct {v1, v0, p1, v2}, Lo/Spinner;-><init>(Landroid/content/Context;Lo/SimpleAdapter;Lo/SlidingDrawer;)V

    invoke-virtual {v1}, Lo/Spinner;->show()V

    :cond_0
    return-void
.end method

.method public e()V
    .locals 3

    .line 93
    iget-object v0, p0, Lo/FD;->f:Lcom/netflix/mediaclient/ui/details/uiView/ISeasonsSelectionUIView$DisplayMode;

    sget-object v1, Lcom/netflix/mediaclient/ui/details/uiView/ISeasonsSelectionUIView$DisplayMode;->e:Lcom/netflix/mediaclient/ui/details/uiView/ISeasonsSelectionUIView$DisplayMode;

    if-ne v0, v1, :cond_0

    .line 94
    iget-object v0, p0, Lo/FD;->a:Lo/TA;

    iget-object v1, p0, Lo/FD;->e:Lo/ImageSwitcher;

    check-cast v1, Landroid/view/View;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lo/TA;->c(Landroid/view/View;Z)V

    goto :goto_0

    .line 96
    :cond_0
    iget-object v0, p0, Lo/FD;->e:Lo/ImageSwitcher;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/ImageSwitcher;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public f()Lcom/netflix/mediaclient/ui/details/uiView/ISeasonsSelectionUIView$DisplayMode;
    .locals 1

    .line 122
    iget-object v0, p0, Lo/FD;->f:Lcom/netflix/mediaclient/ui/details/uiView/ISeasonsSelectionUIView$DisplayMode;

    return-object v0
.end method

.method public g()V
    .locals 2

    .line 117
    iget-object v0, p0, Lo/FD;->e:Lo/ImageSwitcher;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/ImageSwitcher;->setEnabled(Z)V

    .line 118
    iget-object v0, p0, Lo/FD;->e:Lo/ImageSwitcher;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Lo/ImageSwitcher;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final i()Lo/ImageSwitcher;
    .locals 1

    .line 47
    iget-object v0, p0, Lo/FD;->e:Lo/ImageSwitcher;

    return-object v0
.end method

.method protected final j()Landroid/view/View;
    .locals 1

    .line 36
    iget-object v0, p0, Lo/FD;->c:Landroid/view/View;

    return-object v0
.end method

.method public final l()Lcom/netflix/mediaclient/ui/details/uiView/ISeasonsSelectionUIView$DisplayMode;
    .locals 1

    .line 27
    iget-object v0, p0, Lo/FD;->f:Lcom/netflix/mediaclient/ui/details/uiView/ISeasonsSelectionUIView$DisplayMode;

    return-object v0
.end method

.method public final m()Landroid/view/ViewGroup;
    .locals 1

    .line 25
    iget-object v0, p0, Lo/FD;->i:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public final o()Lo/UpdateEngine;
    .locals 1

    .line 26
    iget-object v0, p0, Lo/FD;->g:Lo/UpdateEngine;

    return-object v0
.end method

.method public w()Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lo/DG;",
            ">;"
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lo/FD;->j:Lio/reactivex/Observable;

    return-object v0
.end method
