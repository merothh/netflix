.class public Lo/YH;
.super Lo/VibrationEffect;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/YH$StateListAnimator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/VibrationEffect<",
        "Lo/YB;",
        ">;"
    }
.end annotation


# static fields
.field public static final c:Lo/YH$StateListAnimator;

.field static final synthetic e:[Lo/amT;

.field private static final o:Landroid/graphics/ColorMatrixColorFilter;


# instance fields
.field private final a:Landroid/view/ViewGroup;

.field private final b:Lo/aka;

.field private final d:Lo/ams;

.field private f:Lo/YI;

.field private g:Lio/reactivex/disposables/Disposable;

.field private final h:Landroid/content/Context;

.field private final i:Lo/ams;

.field private final j:Landroid/graphics/drawable/Drawable;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lo/YH;

    const/4 v1, 0x2

    new-array v1, v1, [Lo/amT;

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "boxArt"

    const-string v5, "getBoxArt()Lcom/netflix/mediaclient/android/widget/FitCenterTopImageView;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v0

    const-string v3, "titleTreatment"

    const-string v4, "getTitleTreatment()Lcom/netflix/mediaclient/android/widget/NetflixImageView;"

    invoke-direct {v2, v0, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v0

    check-cast v0, Lo/amT;

    const/4 v2, 0x1

    aput-object v0, v1, v2

    sput-object v1, Lo/YH;->e:[Lo/amT;

    new-instance v0, Lo/YH$StateListAnimator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/YH$StateListAnimator;-><init>(Lo/amc;)V

    sput-object v0, Lo/YH;->c:Lo/YH$StateListAnimator;

    .line 56
    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    new-instance v1, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v1, v0}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    sput-object v1, Lo/YH;->o:Landroid/graphics/ColorMatrixColorFilter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listItemView"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    move-object v0, p2

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v0}, Lo/VibrationEffect;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lo/YH;->h:Landroid/content/Context;

    .line 41
    iput-object p2, p0, Lo/YH;->a:Landroid/view/ViewGroup;

    .line 43
    new-instance p1, Lcom/netflix/mediaclient/ui/previews/lolomo/PreviewsListItemUIView$containerId$2;

    invoke-direct {p1, p0}, Lcom/netflix/mediaclient/ui/previews/lolomo/PreviewsListItemUIView$containerId$2;-><init>(Lo/YH;)V

    check-cast p1, Lo/alB;

    invoke-static {p1}, Lo/akd;->a(Lo/alB;)Lo/aka;

    move-result-object p1

    iput-object p1, p0, Lo/YH;->b:Lo/aka;

    .line 45
    sget p1, Lcom/netflix/mediaclient/ui/R$Fragment;->oJ:I

    invoke-static {p0, p1}, Lo/NfcV;->b(Lo/VibrationEffect;I)Lo/ams;

    move-result-object p1

    iput-object p1, p0, Lo/YH;->d:Lo/ams;

    .line 46
    sget p1, Lcom/netflix/mediaclient/ui/R$Fragment;->pa:I

    invoke-static {p0, p1}, Lo/NfcV;->b(Lo/VibrationEffect;I)Lo/ams;

    move-result-object p1

    iput-object p1, p0, Lo/YH;->i:Lo/ams;

    .line 51
    iget-object p1, p0, Lo/YH;->h:Landroid/content/Context;

    sget p2, Lcom/netflix/mediaclient/ui/R$Activity;->g:I

    invoke-static {p1, p2}, Lo/OnSystemUiVisibilityChangeListener;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lo/YH;->j:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;ILo/amc;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    .line 38
    sget p2, Lcom/netflix/mediaclient/ui/R$Dialog;->fc:I

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_0

    check-cast p2, Landroid/view/ViewGroup;

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    invoke-direct {p0, p1, p2}, Lo/YH;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;)V

    return-void
.end method

.method public static final synthetic a(Lo/YH;)Lo/GridView;
    .locals 0

    .line 36
    invoke-direct {p0}, Lo/YH;->k()Lo/GridView;

    move-result-object p0

    return-object p0
.end method

.method private final a(Lo/YN;)V
    .locals 5

    .line 165
    invoke-virtual {p0}, Lo/YH;->i()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {p1}, Lo/YN;->h()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 167
    invoke-virtual {p1}, Lo/YN;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 168
    invoke-virtual {p1}, Lo/YN;->c()Lcom/netflix/android/imageloader/api/ImageDataSource;

    move-result-object v1

    .line 169
    invoke-virtual {p1}, Lo/YN;->b()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 170
    invoke-virtual {p1}, Lo/YN;->g()Lcom/netflix/android/imageloader/api/ImageDataSource;

    move-result-object v3

    .line 171
    new-instance v4, Lcom/netflix/mediaclient/ui/previews/lolomo/PreviewsListItemUIView$render$1;

    invoke-direct {v4, p0, p1}, Lcom/netflix/mediaclient/ui/previews/lolomo/PreviewsListItemUIView$render$1;-><init>(Lo/YH;Lo/YN;)V

    check-cast v4, Lo/alS;

    .line 166
    invoke-static {v0, v1, v2, v3, v4}, Lo/NfcA;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lo/alS;)Ljava/lang/Object;

    return-void
.end method

.method public static final synthetic c(Lo/YH;)Landroid/content/Context;
    .locals 0

    .line 36
    iget-object p0, p0, Lo/YH;->h:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic c(Lo/YH;ILo/Yn;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    if-nez p6, :cond_1

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    .line 86
    check-cast p4, Ljava/lang/String;

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lo/YH;->e(ILo/Yn;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 0
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: addSlideshowClickListener"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final synthetic d(Lo/YH;)Lo/YI;
    .locals 0

    .line 36
    iget-object p0, p0, Lo/YH;->f:Lo/YI;

    return-object p0
.end method

.method public static final synthetic d(Lo/YH;Lo/YI;ILo/Yn;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 36
    invoke-direct/range {p0 .. p5}, Lo/YH;->d(Lo/YI;ILo/Yn;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final d(Lo/YI;ILo/Yn;Ljava/lang/String;Ljava/lang/String;)V
    .locals 15

    move-object v0, p0

    .line 116
    sget-object v1, Lo/YE;->a:Lo/YE;

    move-object/from16 v2, p1

    invoke-virtual {v1, v2}, Lo/YE;->e(Lo/YI;)V

    .line 117
    sget-object v1, Lo/Yi;->e:Lo/Yi;

    invoke-virtual/range {p3 .. p3}, Lo/Yn;->i()Z

    move-result v2

    move-object/from16 v3, p3

    invoke-virtual {v1, v3, v2}, Lo/Yi;->c(Lo/Yn;Z)V

    .line 118
    sget-object v1, Lo/YE;->a:Lo/YE;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lo/YE;->a(Ljava/lang/Integer;)V

    const/4 v1, 0x2

    new-array v2, v1, [I

    .line 121
    invoke-direct {p0}, Lo/YH;->m()Lo/DayPickerPagerAdapter;

    move-result-object v4

    invoke-virtual {v4, v2}, Lo/DayPickerPagerAdapter;->getLocationOnScreen([I)V

    .line 123
    new-instance v4, Lcom/netflix/mediaclient/ui/previews/lolomo/PreviewsLolomoViewData;

    const/4 v12, 0x0

    .line 125
    aget v7, v2, v12

    const/4 v13, 0x1

    .line 126
    aget v8, v2, v13

    .line 127
    invoke-direct {p0}, Lo/YH;->m()Lo/DayPickerPagerAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lo/DayPickerPagerAdapter;->getWidth()I

    move-result v9

    .line 128
    invoke-direct {p0}, Lo/YH;->m()Lo/DayPickerPagerAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lo/DayPickerPagerAdapter;->getHeight()I

    move-result v10

    .line 129
    invoke-virtual/range {p3 .. p3}, Lo/Yn;->getPanelArtUrl()Ljava/lang/String;

    move-result-object v2

    const-string v14, ""

    if-eqz v2, :cond_0

    move-object v11, v2

    goto :goto_0

    :cond_0
    move-object v11, v14

    :goto_0
    move-object v5, v4

    move-object/from16 v6, p4

    .line 123
    invoke-direct/range {v5 .. v11}, Lcom/netflix/mediaclient/ui/previews/lolomo/PreviewsLolomoViewData;-><init>(Ljava/lang/String;IIIILjava/lang/String;)V

    new-array v1, v1, [I

    .line 133
    invoke-direct {p0}, Lo/YH;->k()Lo/GridView;

    move-result-object v2

    invoke-virtual {v2, v1}, Lo/GridView;->getLocationOnScreen([I)V

    .line 135
    new-instance v2, Lcom/netflix/mediaclient/ui/previews/lolomo/PreviewsLolomoViewData;

    .line 137
    aget v7, v1, v12

    .line 138
    aget v8, v1, v13

    .line 139
    invoke-direct {p0}, Lo/YH;->k()Lo/GridView;

    move-result-object v1

    invoke-virtual {v1}, Lo/GridView;->getWidth()I

    move-result v9

    .line 140
    invoke-direct {p0}, Lo/YH;->k()Lo/GridView;

    move-result-object v1

    invoke-virtual {v1}, Lo/GridView;->getHeight()I

    move-result v10

    .line 141
    invoke-virtual/range {p3 .. p3}, Lo/Yn;->getTitleTreatmentUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    move-object v11, v1

    goto :goto_1

    :cond_1
    move-object v11, v14

    :goto_1
    move-object v5, v2

    move-object/from16 v6, p4

    .line 135
    invoke-direct/range {v5 .. v11}, Lcom/netflix/mediaclient/ui/previews/lolomo/PreviewsLolomoViewData;-><init>(Ljava/lang/String;IIIILjava/lang/String;)V

    .line 144
    new-instance v1, Landroid/content/Intent;

    iget-object v5, v0, Lo/YH;->h:Landroid/content/Context;

    const-class v6, Lo/Yr;

    invoke-direct {v1, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 145
    check-cast v4, Landroid/os/Parcelable;

    const-string v5, "previews_lolomo_view_boxart_data"

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 146
    check-cast v2, Landroid/os/Parcelable;

    const-string v4, "previews_lolomo_view_title_treatment_data"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 147
    invoke-virtual/range {p3 .. p3}, Lo/Yn;->f()Lcom/netflix/mediaclient/ui/common/PlayContextImp;

    move-result-object v2

    check-cast v2, Landroid/os/Parcelable;

    const-string v3, "PLAY_CONTEXT"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 149
    invoke-static/range {p4 .. p4}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static/range {p5 .. p5}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 150
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v1

    const-string v2, "SPY-17510 - lomoId is empty. Previews filtered listId is not getting set correctly. Can\'t create Previews Slideshow UI"

    .line 151
    invoke-interface {v1, v2}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    .line 152
    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->oV:I

    invoke-static {v1, v12}, Lo/adk;->c(II)V

    goto :goto_2

    .line 154
    :cond_2
    iget-object v2, v0, Lo/YH;->h:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 155
    iget-object v1, v0, Lo/YH;->h:Landroid/content/Context;

    .line 194
    const-class v2, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v1, v2}, Lo/TagTechnology;->d(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    .line 155
    invoke-virtual {v1, v12, v12}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->overridePendingTransition(II)V

    :goto_2
    return-void
.end method

.method public static final synthetic e(Lo/YH;)Lo/DayPickerPagerAdapter;
    .locals 0

    .line 36
    invoke-direct {p0}, Lo/YH;->m()Lo/DayPickerPagerAdapter;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic e(Lo/YH;Lo/YI;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lo/YH;->f:Lo/YI;

    return-void
.end method

.method private final k()Lo/GridView;
    .locals 3

    iget-object v0, p0, Lo/YH;->i:Lo/ams;

    sget-object v1, Lo/YH;->e:[Lo/amT;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/GridView;

    return-object v0
.end method

.method private final m()Lo/DayPickerPagerAdapter;
    .locals 3

    iget-object v0, p0, Lo/YH;->d:Lo/ams;

    sget-object v1, Lo/YH;->e:[Lo/amT;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/DayPickerPagerAdapter;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget-object v0, p0, Lo/YH;->b:Lo/aka;

    invoke-interface {v0}, Lo/aka;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public synthetic d()Landroid/view/View;
    .locals 1

    .line 36
    invoke-virtual {p0}, Lo/YH;->i()Landroid/view/ViewGroup;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public d(Landroid/graphics/ColorMatrixColorFilter;)V
    .locals 1

    const-string v0, "greyFilter"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 160
    invoke-direct {p0}, Lo/YH;->m()Lo/DayPickerPagerAdapter;

    move-result-object v0

    check-cast p1, Landroid/graphics/ColorFilter;

    invoke-virtual {v0, p1}, Lo/DayPickerPagerAdapter;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 161
    invoke-direct {p0}, Lo/YH;->k()Lo/GridView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/GridView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method public d(Lo/YN;)V
    .locals 1

    const-string v0, "stateEvent"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    invoke-virtual {p1}, Lo/YN;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    sget-object v0, Lo/YH;->o:Landroid/graphics/ColorMatrixColorFilter;

    invoke-virtual {p0, v0}, Lo/YH;->d(Landroid/graphics/ColorMatrixColorFilter;)V

    .line 64
    :cond_0
    invoke-direct {p0, p1}, Lo/YH;->a(Lo/YN;)V

    return-void
.end method

.method public e(ILo/Yn;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const-string v0, "feedItemModel"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lomoId"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    invoke-virtual {p0}, Lo/YH;->i()Landroid/view/ViewGroup;

    move-result-object v0

    new-instance v7, Lo/YH$TaskDescription;

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lo/YH$TaskDescription;-><init>(Lo/YH;ILo/Yn;Ljava/lang/String;Ljava/lang/String;)V

    check-cast v7, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final f()I
    .locals 1

    .line 80
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->oP:I

    return v0
.end method

.method public h()V
    .locals 3

    .line 68
    iget-object v0, p0, Lo/YH;->g:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 69
    :cond_0
    invoke-direct {p0}, Lo/YH;->m()Lo/DayPickerPagerAdapter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/DayPickerPagerAdapter;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 70
    invoke-direct {p0}, Lo/YH;->m()Lo/DayPickerPagerAdapter;

    move-result-object v0

    iget-object v2, p0, Lo/YH;->j:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Lo/DayPickerPagerAdapter;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 71
    invoke-direct {p0}, Lo/YH;->k()Lo/GridView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lo/GridView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 72
    iget-object v0, p0, Lo/YH;->f:Lo/YI;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lo/YI;->d()V

    .line 73
    :cond_1
    move-object v0, v1

    check-cast v0, Lo/YI;

    iput-object v0, p0, Lo/YH;->f:Lo/YI;

    .line 76
    invoke-direct {p0}, Lo/YH;->m()Lo/DayPickerPagerAdapter;

    move-result-object v0

    check-cast v1, Landroid/graphics/ColorFilter;

    invoke-virtual {v0, v1}, Lo/DayPickerPagerAdapter;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 77
    invoke-direct {p0}, Lo/YH;->k()Lo/GridView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lo/GridView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method public i()Landroid/view/ViewGroup;
    .locals 1

    .line 41
    iget-object v0, p0, Lo/YH;->a:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public final j()Lio/reactivex/disposables/Disposable;
    .locals 1

    .line 53
    iget-object v0, p0, Lo/YH;->g:Lio/reactivex/disposables/Disposable;

    return-object v0
.end method

.method public final n()Z
    .locals 1

    .line 190
    iget-object v0, p0, Lo/YH;->f:Lo/YI;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
