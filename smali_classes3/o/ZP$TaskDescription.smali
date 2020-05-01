.class public final Lo/ZP$TaskDescription;
.super Landroidx/recyclerview/widget/RecyclerView$Intent;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ZP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "TaskDescription"
.end annotation


# static fields
.field static final synthetic c:[Lo/amT;


# instance fields
.field private final a:Landroid/view/View;

.field private final b:Lo/ams;

.field final synthetic d:Lo/ZP;

.field private final e:Lo/ams;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lo/ZP$TaskDescription;

    const/4 v1, 0x2

    new-array v1, v1, [Lo/amT;

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "stackView"

    const-string v5, "getStackView()Lcom/netflix/mediaclient/android/widget/ImageStackView;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v0

    const-string v3, "title"

    const-string v4, "getTitle()Landroid/widget/TextView;"

    invoke-direct {v2, v0, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v0

    check-cast v0, Lo/amT;

    const/4 v2, 0x1

    aput-object v0, v1, v2

    sput-object v1, Lo/ZP$TaskDescription;->c:[Lo/amT;

    return-void
.end method

.method public constructor <init>(Lo/ZP;Landroid/view/View;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    const-string v0, "view"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 276
    iput-object p1, p0, Lo/ZP$TaskDescription;->d:Lo/ZP;

    .line 277
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$Intent;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lo/ZP$TaskDescription;->a:Landroid/view/View;

    .line 278
    sget p2, Lo/Zt$Application;->h:I

    invoke-static {p0, p2}, Lo/NfcV;->d(Landroidx/recyclerview/widget/RecyclerView$Intent;I)Lo/ams;

    move-result-object p2

    iput-object p2, p0, Lo/ZP$TaskDescription;->b:Lo/ams;

    .line 279
    sget p2, Lo/Zt$Application;->c:I

    invoke-static {p0, p2}, Lo/NfcV;->d(Landroidx/recyclerview/widget/RecyclerView$Intent;I)Lo/ams;

    move-result-object p2

    iput-object p2, p0, Lo/ZP$TaskDescription;->e:Lo/ams;

    .line 283
    iget-object p2, p0, Lo/ZP$TaskDescription;->a:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string v0, "view.context"

    invoke-static {p2, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const-string v0, "view.context.resources"

    invoke-static {p2, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float p2, p2

    invoke-static {p1}, Lo/ZP;->b(Lo/ZP;)F

    move-result p1

    mul-float p2, p2, p1

    .line 284
    invoke-virtual {p0}, Lo/ZP$TaskDescription;->e()Lo/DropDownListView;

    move-result-object p1

    .line 285
    invoke-virtual {p1}, Lo/DropDownListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    float-to-int v1, p2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 286
    invoke-virtual {p1}, Lo/DropDownListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lo/ZP$TaskDescription;->d:Lo/ZP;

    invoke-static {v1}, Lo/ZP;->c(Lo/ZP;)F

    move-result v1

    mul-float p2, p2, v1

    float-to-int p2, p2

    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 288
    invoke-virtual {p1}, Lo/DropDownListView;->d()Lo/BaseAdapter;

    move-result-object p2

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p1}, Lo/DropDownListView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lo/Zt$StateListAnimator;->d:I

    invoke-static {v1, v2}, Lo/OnSystemUiVisibilityChangeListener;->d(Landroid/content/Context;I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, v0}, Lo/BaseAdapter;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 289
    invoke-virtual {p1}, Lo/DropDownListView;->requestLayout()V

    .line 292
    iget-object p1, p0, Lo/ZP$TaskDescription;->a:Landroid/view/View;

    .line 310
    invoke-static {p1}, Lo/SSLCertificateSocketFactory;->b(Landroid/view/View;)Lio/reactivex/Observable;

    move-result-object p1

    sget-object p2, Lo/SSLSessionCache;->d:Lo/SSLSessionCache;

    check-cast p2, Lio/reactivex/functions/Function;

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "RxView.clicks(this).map(AnyToUnit)"

    invoke-static {p1, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 293
    new-instance p2, Lo/ZP$TaskDescription$4;

    invoke-direct {p2, p0}, Lo/ZP$TaskDescription$4;-><init>(Lo/ZP$TaskDescription;)V

    check-cast p2, Lio/reactivex/functions/Consumer;

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method


# virtual methods
.method public final a()Landroid/widget/TextView;
    .locals 3

    iget-object v0, p0, Lo/ZP$TaskDescription;->e:Lo/ams;

    sget-object v1, Lo/ZP$TaskDescription;->c:[Lo/amT;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public final e()Lo/DropDownListView;
    .locals 3

    iget-object v0, p0, Lo/ZP$TaskDescription;->b:Lo/ams;

    sget-object v1, Lo/ZP$TaskDescription;->c:[Lo/amT;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/DropDownListView;

    return-object v0
.end method
