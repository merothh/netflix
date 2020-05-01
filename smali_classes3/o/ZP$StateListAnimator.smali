.class public final Lo/ZP$StateListAnimator;
.super Landroidx/recyclerview/widget/RecyclerView$Intent;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ZP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "StateListAnimator"
.end annotation


# static fields
.field static final synthetic d:[Lo/amT;


# instance fields
.field private final a:Lo/ams;

.field final synthetic b:Lo/ZP;

.field private final c:Lo/ams;

.field private final e:Lo/ams;

.field private final i:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lo/ZP$StateListAnimator;

    const/4 v1, 0x3

    new-array v1, v1, [Lo/amT;

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "artwork"

    const-string v5, "getArtwork()Lcom/netflix/mediaclient/android/widget/AdvancedImageView;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "title"

    const-string v5, "getTitle()Landroid/widget/TextView;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v0

    const-string v3, "playIcon"

    const-string v4, "getPlayIcon()Landroid/widget/ImageView;"

    invoke-direct {v2, v0, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v0

    check-cast v0, Lo/amT;

    const/4 v2, 0x2

    aput-object v0, v1, v2

    sput-object v1, Lo/ZP$StateListAnimator;->d:[Lo/amT;

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

    .line 239
    iput-object p1, p0, Lo/ZP$StateListAnimator;->b:Lo/ZP;

    .line 240
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$Intent;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lo/ZP$StateListAnimator;->i:Landroid/view/View;

    .line 241
    sget p2, Lo/Zt$Application;->b:I

    invoke-static {p0, p2}, Lo/NfcV;->d(Landroidx/recyclerview/widget/RecyclerView$Intent;I)Lo/ams;

    move-result-object p2

    iput-object p2, p0, Lo/ZP$StateListAnimator;->a:Lo/ams;

    .line 242
    sget p2, Lo/Zt$Application;->g:I

    invoke-static {p0, p2}, Lo/NfcV;->d(Landroidx/recyclerview/widget/RecyclerView$Intent;I)Lo/ams;

    move-result-object p2

    iput-object p2, p0, Lo/ZP$StateListAnimator;->e:Lo/ams;

    .line 243
    sget p2, Lo/Zt$Application;->j:I

    invoke-static {p0, p2}, Lo/NfcV;->d(Landroidx/recyclerview/widget/RecyclerView$Intent;I)Lo/ams;

    move-result-object p2

    iput-object p2, p0, Lo/ZP$StateListAnimator;->c:Lo/ams;

    .line 248
    iget-object p2, p0, Lo/ZP$StateListAnimator;->i:Landroid/view/View;

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

    .line 250
    invoke-virtual {p0}, Lo/ZP$StateListAnimator;->b()Lo/BaseAdapter;

    move-result-object p1

    .line 251
    invoke-virtual {p1}, Lo/BaseAdapter;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    float-to-int v1, p2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 252
    invoke-virtual {p1}, Lo/BaseAdapter;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lo/ZP$StateListAnimator;->b:Lo/ZP;

    invoke-static {v1}, Lo/ZP;->c(Lo/ZP;)F

    move-result v1

    mul-float p2, p2, v1

    float-to-int p2, p2

    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 253
    invoke-virtual {p1}, Lo/BaseAdapter;->requestLayout()V

    .line 257
    invoke-virtual {p0}, Lo/ZP$StateListAnimator;->a()Landroid/widget/ImageView;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    .line 258
    sget-object p2, Lo/ZP;->c:Lo/ZP$Activity;

    invoke-virtual {p2}, Lo/ZP$Activity;->c()I

    move-result p2

    .line 259
    sget-object v0, Lo/ZP;->c:Lo/ZP$Activity;

    invoke-virtual {v0}, Lo/ZP$Activity;->c()I

    move-result v0

    .line 260
    sget-object v1, Lo/ZP;->c:Lo/ZP$Activity;

    invoke-virtual {v1}, Lo/ZP$Activity;->c()I

    move-result v1

    .line 261
    sget-object v2, Lo/ZP;->c:Lo/ZP$Activity;

    invoke-virtual {v2}, Lo/ZP$Activity;->c()I

    move-result v2

    .line 256
    invoke-static {p1, p2, v0, v1, v2}, Lo/RemoteException;->d(Landroid/view/View;IIII)V

    .line 264
    invoke-virtual {p0}, Lo/ZP$StateListAnimator;->a()Landroid/widget/ImageView;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    .line 310
    invoke-static {p1}, Lo/SSLCertificateSocketFactory;->b(Landroid/view/View;)Lio/reactivex/Observable;

    move-result-object p1

    sget-object p2, Lo/SSLSessionCache;->d:Lo/SSLSessionCache;

    check-cast p2, Lio/reactivex/functions/Function;

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "RxView.clicks(this).map(AnyToUnit)"

    invoke-static {p1, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 265
    new-instance v0, Lo/ZP$StateListAnimator$2;

    invoke-direct {v0, p0}, Lo/ZP$StateListAnimator$2;-><init>(Lo/ZP$StateListAnimator;)V

    check-cast v0, Lio/reactivex/functions/Consumer;

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    .line 269
    iget-object p1, p0, Lo/ZP$StateListAnimator;->i:Landroid/view/View;

    .line 311
    invoke-static {p1}, Lo/SSLCertificateSocketFactory;->b(Landroid/view/View;)Lio/reactivex/Observable;

    move-result-object p1

    sget-object v0, Lo/SSLSessionCache;->d:Lo/SSLSessionCache;

    check-cast v0, Lio/reactivex/functions/Function;

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    invoke-static {p1, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 270
    new-instance p2, Lo/ZP$StateListAnimator$1;

    invoke-direct {p2, p0}, Lo/ZP$StateListAnimator$1;-><init>(Lo/ZP$StateListAnimator;)V

    check-cast p2, Lio/reactivex/functions/Consumer;

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method


# virtual methods
.method public final a()Landroid/widget/ImageView;
    .locals 3

    iget-object v0, p0, Lo/ZP$StateListAnimator;->c:Lo/ams;

    sget-object v1, Lo/ZP$StateListAnimator;->d:[Lo/amT;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method

.method public final b()Lo/BaseAdapter;
    .locals 3

    iget-object v0, p0, Lo/ZP$StateListAnimator;->a:Lo/ams;

    sget-object v1, Lo/ZP$StateListAnimator;->d:[Lo/amT;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/BaseAdapter;

    return-object v0
.end method

.method public final e()Landroid/widget/TextView;
    .locals 3

    iget-object v0, p0, Lo/ZP$StateListAnimator;->e:Lo/ams;

    sget-object v1, Lo/ZP$StateListAnimator;->d:[Lo/amT;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method
