.class public final Lo/Fn;
.super Lo/VibrationEffect;
.source ""

# interfaces
.implements Lo/FA;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/Fn$ActionBar;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/VibrationEffect<",
        "Lo/DG;",
        ">;",
        "Lo/FA;"
    }
.end annotation


# static fields
.field static final synthetic a:[Lo/amT;

.field public static final c:Lo/Fn$ActionBar;


# instance fields
.field private final b:Landroid/view/ViewGroup;

.field private final d:I

.field private final e:Lo/ams;

.field private final i:Lo/ams;

.field private final j:Lo/ams;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lo/Fn;

    const/4 v1, 0x3

    new-array v1, v1, [Lo/amT;

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "imgGroup"

    const-string v5, "getImgGroup()Landroid/view/ViewGroup;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "horzDispImg"

    const-string v5, "getHorzDispImg()Lcom/netflix/mediaclient/android/widget/TopCropImageView;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v0

    const-string v3, "imageViewGradient"

    const-string v4, "getImageViewGradient()Landroid/widget/ImageView;"

    invoke-direct {v2, v0, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v0

    check-cast v0, Lo/amT;

    const/4 v2, 0x2

    aput-object v0, v1, v2

    sput-object v1, Lo/Fn;->a:[Lo/amT;

    new-instance v0, Lo/Fn$ActionBar;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/Fn$ActionBar;-><init>(Lo/amc;)V

    sput-object v0, Lo/Fn;->c:Lo/Fn$ActionBar;

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 4

    const-string v0, "parent"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    move-object v0, p1

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v0}, Lo/VibrationEffect;-><init>(Landroid/view/View;)V

    .line 26
    sget v0, Lcom/netflix/mediaclient/ui/R$Dialog;->O:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v2, v3}, Lo/BatteryStats;->e(Landroid/view/ViewGroup;IIILjava/lang/Object;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lo/Fn;->b:Landroid/view/ViewGroup;

    .line 28
    invoke-virtual {p0}, Lo/Fn;->j()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getId()I

    move-result v0

    iput v0, p0, Lo/Fn;->d:I

    .line 30
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->vz:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Lo/VibrationEffect;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lo/Fn;->e:Lo/ams;

    .line 32
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->vr:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Lo/VibrationEffect;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lo/Fn;->i:Lo/ams;

    .line 34
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->hA:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Lo/VibrationEffect;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lo/Fn;->j:Lo/ams;

    .line 38
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "parent.context"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lo/Fn;->a(Landroid/content/Context;)V

    .line 39
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lo/Fn$5;

    invoke-direct {v1, p0, p1}, Lo/Fn$5;-><init>(Lo/Fn;Landroid/view/ViewGroup;)V

    check-cast v1, Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void

    .line 26
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final a(Landroid/content/Context;)V
    .locals 1

    .line 90
    invoke-direct {p0}, Lo/Fn;->n()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v0

    if-gtz v0, :cond_0

    .line 92
    invoke-static {p1}, Lo/adq;->j(Landroid/content/Context;)I

    move-result v0

    :cond_0
    int-to-float p1, v0

    const/high16 v0, 0x3f100000    # 0.5625f

    mul-float p1, p1, v0

    float-to-int p1, p1

    .line 96
    sget-object v0, Lo/Fn;->c:Lo/Fn$ActionBar;

    check-cast v0, Lo/MessagePdu;

    .line 97
    invoke-direct {p0}, Lo/Fn;->l()Lo/RemoteViewsListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lo/RemoteViewsListAdapter;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    return-void
.end method

.method public static final synthetic e(Lo/Fn;Landroid/content/Context;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lo/Fn;->a(Landroid/content/Context;)V

    return-void
.end method

.method private final l()Lo/RemoteViewsListAdapter;
    .locals 3

    iget-object v0, p0, Lo/Fn;->i:Lo/ams;

    sget-object v1, Lo/Fn;->a:[Lo/amT;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/RemoteViewsListAdapter;

    return-object v0
.end method

.method private final m()Landroid/widget/ImageView;
    .locals 3

    iget-object v0, p0, Lo/Fn;->j:Lo/ams;

    sget-object v1, Lo/Fn;->a:[Lo/amT;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method

.method private final n()Landroid/view/ViewGroup;
    .locals 3

    iget-object v0, p0, Lo/Fn;->e:Lo/ams;

    sget-object v1, Lo/Fn;->a:[Lo/amT;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 28
    iget v0, p0, Lo/Fn;->d:I

    return v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "imageUrl"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoTitle"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    invoke-direct {p0}, Lo/Fn;->l()Lo/RemoteViewsListAdapter;

    move-result-object v0

    new-instance v1, Lcom/netflix/android/imageloader/api/ShowImageRequest;

    invoke-direct {v1}, Lcom/netflix/android/imageloader/api/ShowImageRequest;-><init>()V

    invoke-virtual {v1, p1}, Lcom/netflix/android/imageloader/api/ShowImageRequest;->c(Ljava/lang/String;)Lcom/netflix/android/imageloader/api/ShowImageRequest;

    move-result-object p1

    sget-object v1, Lcom/netflix/android/imageloader/api/ShowImageRequest$Priority;->c:Lcom/netflix/android/imageloader/api/ShowImageRequest$Priority;

    invoke-virtual {p1, v1}, Lcom/netflix/android/imageloader/api/ShowImageRequest;->e(Lcom/netflix/android/imageloader/api/ShowImageRequest$Priority;)Lcom/netflix/android/imageloader/api/ShowImageRequest;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo/RemoteViewsListAdapter;->c(Lcom/netflix/android/imageloader/api/ShowImageRequest;)V

    .line 68
    invoke-direct {p0}, Lo/Fn;->l()Lo/RemoteViewsListAdapter;

    move-result-object p1

    sget-object v0, Lo/amj;->c:Lo/amj;

    invoke-virtual {p0}, Lo/Fn;->j()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "uiView.context"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->i:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "uiView.context.resources\u2026.accesibility_play_video)"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    array-length p2, v1

    invoke-static {v1, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "java.lang.String.format(format, *args)"

    invoke-static {p2, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Lo/RemoteViewsListAdapter;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 70
    invoke-direct {p0}, Lo/Fn;->m()Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public b()V
    .locals 2

    .line 54
    invoke-virtual {p0}, Lo/Fn;->j()Landroid/view/ViewGroup;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public c()V
    .locals 2

    .line 58
    invoke-virtual {p0}, Lo/Fn;->j()Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setEnabled(Z)V

    return-void
.end method

.method public synthetic d()Landroid/view/View;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lo/Fn;->j()Landroid/view/ViewGroup;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public e()V
    .locals 2

    .line 50
    invoke-virtual {p0}, Lo/Fn;->j()Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public f()V
    .locals 1

    .line 78
    invoke-direct {p0}, Lo/Fn;->l()Lo/RemoteViewsListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lo/RemoteViewsListAdapter;->f()V

    return-void
.end method

.method public g()V
    .locals 2

    .line 62
    invoke-virtual {p0}, Lo/Fn;->j()Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setEnabled(Z)V

    return-void
.end method

.method public h()Landroid/view/View;
    .locals 1

    .line 74
    invoke-direct {p0}, Lo/Fn;->l()Lo/RemoteViewsListAdapter;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public i()V
    .locals 2

    .line 82
    new-instance v0, Lo/Fn$TaskDescription;

    invoke-direct {v0, p0}, Lo/Fn$TaskDescription;-><init>(Lo/Fn;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    .line 85
    invoke-direct {p0}, Lo/Fn;->l()Lo/RemoteViewsListAdapter;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-static {v1}, Lcom/netflix/mediaclient/util/ViewUtils;->e(Landroid/view/View;)V

    .line 86
    invoke-direct {p0}, Lo/Fn;->l()Lo/RemoteViewsListAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lo/RemoteViewsListAdapter;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public j()Landroid/view/ViewGroup;
    .locals 1

    .line 25
    iget-object v0, p0, Lo/Fn;->b:Landroid/view/ViewGroup;

    return-object v0
.end method
