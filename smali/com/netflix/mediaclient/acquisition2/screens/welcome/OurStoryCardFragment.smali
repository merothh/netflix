.class public final Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryCardFragment;
.super Lo/AutofillManager;
.source ""

# interfaces
.implements Lo/TranslateXAnimation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryCardFragment$Activity;,
        Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryCardFragment$StateListAnimator;
    }
.end annotation


# static fields
.field public static final i:Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryCardFragment$StateListAnimator;


# instance fields
.field public a:Landroid/widget/TextView;

.field public b:Landroid/view/View;

.field public d:Landroid/widget/TextView;

.field public e:Lo/BaseAdapter;

.field private f:I

.field public g:Ljava/lang/String;

.field private h:Z

.field public j:Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryCard;

.field private l:Ljava/util/HashMap;

.field public nmhpEventListener:Lo/ScaleAnimation;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public serviceManagerRunner:Lo/SpellCheckerSubtype;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public showImageRequestFactory:Lo/TextSelection;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryCardFragment$StateListAnimator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryCardFragment$StateListAnimator;-><init>(Lo/amc;)V

    sput-object v0, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryCardFragment;->i:Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryCardFragment$StateListAnimator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lo/AutofillManager;-><init>()V

    return-void
.end method

.method private final b(Ljava/lang/String;)Lcom/netflix/android/imageloader/api/ShowImageRequest;
    .locals 3

    .line 199
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryCardFragment;->f()I

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryCardFragment$Activity;

    iget-object v1, p0, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryCardFragment;->nmhpEventListener:Lo/ScaleAnimation;

    if-nez v1, :cond_0

    const-string v2, "nmhpEventListener"

    invoke-static {v2}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryCardFragment$Activity;-><init>(Lo/ScaleAnimation;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 202
    :goto_0
    iget-object v1, p0, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryCardFragment;->showImageRequestFactory:Lo/TextSelection;

    if-nez v1, :cond_2

    const-string v2, "showImageRequestFactory"

    invoke-static {v2}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v1}, Lo/TextSelection;->a()Lcom/netflix/android/imageloader/api/ShowImageRequest;

    move-result-object v1

    .line 203
    check-cast v0, Lio/reactivex/SingleObserver;

    invoke-virtual {v1, v0}, Lcom/netflix/android/imageloader/api/ShowImageRequest;->e(Lio/reactivex/SingleObserver;)Lcom/netflix/android/imageloader/api/ShowImageRequest;

    move-result-object v0

    .line 204
    invoke-virtual {v0, p1}, Lcom/netflix/android/imageloader/api/ShowImageRequest;->c(Ljava/lang/String;)Lcom/netflix/android/imageloader/api/ShowImageRequest;

    move-result-object p1

    const/4 v0, 0x1

    .line 205
    invoke-virtual {p1, v0}, Lcom/netflix/android/imageloader/api/ShowImageRequest;->a(Z)Lcom/netflix/android/imageloader/api/ShowImageRequest;

    move-result-object p1

    .line 206
    move-object v0, p0

    check-cast v0, Landroidx/fragment/app/Fragment;

    invoke-virtual {p1, v0}, Lcom/netflix/android/imageloader/api/ShowImageRequest;->d(Landroidx/fragment/app/Fragment;)Lcom/netflix/android/imageloader/api/ShowImageRequest;

    move-result-object p1

    return-object p1
.end method

.method private final b(Landroid/view/View;Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryCard;)V
    .locals 3

    .line 172
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->ts:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "cardView.findViewById(R.id.titleCardHeadingView)"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryCardFragment;->d:Landroid/widget/TextView;

    .line 173
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryCardFragment;->d:Landroid/widget/TextView;

    if-nez v0, :cond_0

    const-string v1, "titleTextView"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x0

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryCard;->c()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    move-object v2, v1

    :goto_0
    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/acquisition/kotlinx/TextViewKt;->setTextOrGone(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 175
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->tr:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "cardView.findViewById(R.\u2026.titleCardSubheadingView)"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryCardFragment;->a:Landroid/widget/TextView;

    .line 176
    iget-object p1, p0, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryCardFragment;->a:Landroid/widget/TextView;

    if-nez p1, :cond_2

    const-string v0, "subtitleTextView"

    invoke-static {v0}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryCard;->e()Ljava/lang/String;

    move-result-object v1

    :cond_3
    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {p1, v1}, Lcom/netflix/mediaclient/acquisition/kotlinx/TextViewKt;->setTextOrGone(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    return-void
.end method

.method private final f()I
    .locals 2

    .line 165
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryCardFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "position"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_1
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type kotlin.Int"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final a()Lo/BaseAdapter;
    .locals 2

    .line 48
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryCardFragment;->e:Lo/BaseAdapter;

    if-nez v0, :cond_0

    const-string v1, "imageView"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public b(I)V
    .locals 0

    .line 158
    iput p1, p0, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryCardFragment;->f:I

    .line 159
    iget-boolean p1, p0, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryCardFragment;->h:Z

    if-nez p1, :cond_0

    .line 160
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryCardFragment;->i()V

    :cond_0
    return-void
.end method

.method public final c(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "cardView"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 180
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->tp:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "cardView.findViewById(R.id.titleCardImageView)"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lo/BaseAdapter;

    iput-object p1, p0, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryCardFragment;->e:Lo/BaseAdapter;

    .line 181
    iget-object p1, p0, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryCardFragment;->e:Lo/BaseAdapter;

    const-string v0, "imageView"

    if-nez p1, :cond_0

    invoke-static {v0}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lo/BaseAdapter;->setVisibility(I)V

    .line 182
    iget-object p1, p0, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryCardFragment;->e:Lo/BaseAdapter;

    if-nez p1, :cond_1

    invoke-static {v0}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_1
    const/4 v2, 0x0

    check-cast v2, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v2}, Lo/BaseAdapter;->setForeground(Landroid/graphics/drawable/Drawable;)V

    const-string p1, "vlv"

    .line 183
    invoke-static {p3, p1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    const/4 p3, 0x1

    if-eqz p1, :cond_6

    .line 184
    iget-object p1, p0, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryCardFragment;->e:Lo/BaseAdapter;

    if-nez p1, :cond_2

    invoke-static {v0}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p1, p3}, Lo/BaseAdapter;->setPassActualScaleTypeToParent(Z)V

    .line 185
    iget-object p1, p0, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryCardFragment;->e:Lo/BaseAdapter;

    if-nez p1, :cond_3

    invoke-static {v0}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_3
    sget-object p2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, p2}, Lo/BaseAdapter;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 186
    iget-object p1, p0, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryCardFragment;->e:Lo/BaseAdapter;

    if-nez p1, :cond_4

    invoke-static {v0}, Lo/amh;->d(Ljava/lang/String;)V

    .line 187
    :cond_4
    iget-object p2, p0, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryCardFragment;->g:Ljava/lang/String;

    if-nez p2, :cond_5

    const-string p3, "vlvImageUrl"

    invoke-static {p3}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_5
    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryCardFragment;->b(Ljava/lang/String;)Lcom/netflix/android/imageloader/api/ShowImageRequest;

    move-result-object p2

    .line 186
    invoke-virtual {p1, p2}, Lo/BaseAdapter;->c(Lcom/netflix/android/imageloader/api/ShowImageRequest;)V

    goto :goto_1

    .line 190
    :cond_6
    move-object p1, p2

    check-cast p1, Ljava/lang/CharSequence;

    if-eqz p1, :cond_8

    invoke-static {p1}, Lo/anv;->b(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_0

    :cond_7
    const/4 p3, 0x0

    :cond_8
    :goto_0
    if-nez p3, :cond_a

    .line 191
    iget-object p1, p0, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryCardFragment;->e:Lo/BaseAdapter;

    if-nez p1, :cond_9

    invoke-static {v0}, Lo/amh;->d(Ljava/lang/String;)V

    .line 192
    :cond_9
    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryCardFragment;->b(Ljava/lang/String;)Lcom/netflix/android/imageloader/api/ShowImageRequest;

    move-result-object p2

    .line 191
    invoke-virtual {p1, p2}, Lo/BaseAdapter;->c(Lcom/netflix/android/imageloader/api/ShowImageRequest;)V

    :cond_a
    :goto_1
    return-void
.end method

.method public final e()Landroid/view/View;
    .locals 2

    .line 45
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryCardFragment;->b:Landroid/view/View;

    if-nez v0, :cond_0

    const-string v1, "cardView"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final e(Lo/Cloneable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/Cloneable<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "floatingCtaHeightLiveData"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    move-object v0, p0

    check-cast v0, Lo/UnicodeScript;

    new-instance v1, Lo/BaseInputConnection;

    move-object v2, p0

    check-cast v2, Lo/TranslateXAnimation;

    invoke-direct {v1, v2}, Lo/BaseInputConnection;-><init>(Lo/TranslateXAnimation;)V

    check-cast v1, Lo/ClassFormatError;

    invoke-virtual {p1, v0, v1}, Lo/Cloneable;->a(Lo/UnicodeScript;Lo/ClassFormatError;)V

    return-void
.end method

.method public final i()V
    .locals 9

    .line 113
    iget-boolean v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryCardFragment;->h:Z

    const-string v1, "card"

    const-string v2, "cardView"

    const-string v3, "imageView"

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryCardFragment;->j:Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryCard;

    if-nez v0, :cond_0

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryCard;->d()Ljava/lang/String;

    move-result-object v0

    const-string v4, "illustration"

    invoke-static {v0, v4}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 116
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryCardFragment;->e:Lo/BaseAdapter;

    if-nez v0, :cond_1

    invoke-static {v3}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v0}, Lo/BaseAdapter;->getHeight()I

    move-result v0

    if-eqz v0, :cond_18

    iget v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryCardFragment;->f:I

    if-nez v0, :cond_2

    goto/16 :goto_4

    .line 120
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryCardFragment;->e:Lo/BaseAdapter;

    if-nez v0, :cond_3

    invoke-static {v3}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v0}, Lo/BaseAdapter;->getTop()I

    move-result v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryCardFragment;->getActivity()Lo/Serializable;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-static {v1}, Lcom/netflix/mediaclient/util/ViewUtils;->b(Landroid/content/Context;)I

    move-result v1

    sub-int/2addr v0, v1

    .line 121
    iget-object v1, p0, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryCardFragment;->b:Landroid/view/View;

    if-nez v1, :cond_4

    invoke-static {v2}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryCardFragment;->getActivity()Lo/Serializable;

    move-result-object v4

    check-cast v4, Landroid/content/Context;

    invoke-static {v4}, Lcom/netflix/mediaclient/util/ViewUtils;->b(Landroid/content/Context;)I

    move-result v4

    sub-int/2addr v1, v4

    .line 123
    iget v4, p0, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryCardFragment;->f:I

    .line 124
    iget-object v5, p0, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryCardFragment;->e:Lo/BaseAdapter;

    if-nez v5, :cond_5

    invoke-static {v3}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_5
    invoke-virtual {v5}, Lo/BaseAdapter;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    .line 125
    iget-object v5, p0, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryCardFragment;->e:Lo/BaseAdapter;

    if-nez v5, :cond_6

    invoke-static {v3}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_6
    check-cast v5, Landroid/view/View;

    .line 236
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    instance-of v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v6, 0x0

    if-nez v5, :cond_7

    move-object v3, v6

    :cond_7
    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v5, 0x0

    if-eqz v3, :cond_8

    iget v3, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_0

    :cond_8
    const/4 v3, 0x0

    :goto_0
    add-int/2addr v4, v3

    .line 126
    iget-object v3, p0, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryCardFragment;->d:Landroid/widget/TextView;

    const-string v7, "titleTextView"

    if-nez v3, :cond_9

    invoke-static {v7}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_9
    invoke-virtual {v3}, Landroid/widget/TextView;->getHeight()I

    move-result v3

    add-int/2addr v4, v3

    .line 127
    iget-object v3, p0, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryCardFragment;->d:Landroid/widget/TextView;

    if-nez v3, :cond_a

    invoke-static {v7}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_a
    check-cast v3, Landroid/view/View;

    .line 237
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    instance-of v7, v3, Landroid/view/ViewGroup$MarginLayoutParams;

    if-nez v7, :cond_b

    move-object v3, v6

    :cond_b
    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v3, :cond_c

    iget v3, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_1

    :cond_c
    const/4 v3, 0x0

    :goto_1
    add-int/2addr v4, v3

    .line 128
    iget-object v3, p0, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryCardFragment;->a:Landroid/widget/TextView;

    const-string v7, "subtitleTextView"

    if-nez v3, :cond_d

    invoke-static {v7}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_d
    invoke-virtual {v3}, Landroid/widget/TextView;->getHeight()I

    move-result v3

    add-int/2addr v4, v3

    .line 129
    iget-object v3, p0, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryCardFragment;->a:Landroid/widget/TextView;

    if-nez v3, :cond_e

    invoke-static {v7}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_e
    check-cast v3, Landroid/view/View;

    .line 238
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    instance-of v8, v3, Landroid/view/ViewGroup$MarginLayoutParams;

    if-nez v8, :cond_f

    move-object v3, v6

    :cond_f
    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v3, :cond_10

    iget v3, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_2

    :cond_10
    const/4 v3, 0x0

    :goto_2
    add-int/2addr v4, v3

    add-int/2addr v4, v0

    if-le v4, v1, :cond_17

    .line 134
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 135
    iget-object v1, p0, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryCardFragment;->b:Landroid/view/View;

    if-nez v1, :cond_11

    invoke-static {v2}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_11
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 136
    iget-object v3, p0, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryCardFragment;->b:Landroid/view/View;

    if-nez v3, :cond_12

    invoke-static {v2}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_12
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    iget v4, p0, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryCardFragment;->f:I

    sub-int/2addr v3, v4

    .line 134
    invoke-direct {v0, v1, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 138
    iget-object v1, p0, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryCardFragment;->b:Landroid/view/View;

    if-nez v1, :cond_13

    invoke-static {v2}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_13
    check-cast v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 139
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryCardFragment;->a:Landroid/widget/TextView;

    if-nez v0, :cond_14

    invoke-static {v7}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_14
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_16

    check-cast v0, Lo/MenuInflater$StateListAnimator;

    .line 140
    iput v5, v0, Lo/MenuInflater$StateListAnimator;->bottomMargin:I

    .line 141
    iget-object v1, p0, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryCardFragment;->a:Landroid/widget/TextView;

    if-nez v1, :cond_15

    invoke-static {v7}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_15
    check-cast v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_3

    .line 139
    :cond_16
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    :goto_3
    const/4 v0, 0x1

    .line 143
    iput-boolean v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryCardFragment;->h:Z

    goto :goto_5

    :cond_18
    :goto_4
    return-void

    .line 144
    :cond_19
    iget-boolean v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryCardFragment;->h:Z

    if-nez v0, :cond_1e

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryCardFragment;->j:Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryCard;

    if-nez v0, :cond_1a

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_1a
    invoke-virtual {v0}, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryCard;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "vlv"

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 146
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryCardFragment;->e:Lo/BaseAdapter;

    if-nez v0, :cond_1b

    invoke-static {v3}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_1b
    invoke-virtual {v0}, Lo/BaseAdapter;->getHeight()I

    move-result v0

    if-eqz v0, :cond_1e

    iget v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryCardFragment;->f:I

    if-nez v0, :cond_1c

    goto :goto_5

    .line 150
    :cond_1c
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryCardFragment;->b:Landroid/view/View;

    if-nez v0, :cond_1d

    invoke-static {v2}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_1d
    sget v1, Lcom/netflix/mediaclient/ui/R$Fragment;->aD:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "bottomBarPosition"

    .line 151
    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 152
    iget v2, p0, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryCardFragment;->f:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 153
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    nop

    :cond_1e
    :goto_5
    return-void
.end method

.method public j()V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryCardFragment;->l:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 81
    invoke-super {p0, p1}, Lo/AutofillManager;->onCreate(Landroid/os/Bundle;)V

    .line 82
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryCardFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "it"

    if-eqz p1, :cond_0

    const-string v1, "card"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryCard;

    if-eqz p1, :cond_0

    .line 83
    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryCardFragment;->j:Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryCard;

    .line 85
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryCardFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v1, "vlvUrl"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 86
    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryCardFragment;->g:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    iget-object p3, p0, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryCardFragment;->j:Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryCard;

    if-nez p3, :cond_0

    const-string v0, "card"

    invoke-static {v0}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p3}, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryCard;->d()Ljava/lang/String;

    move-result-object p3

    const-string v0, "vlv"

    invoke-static {p3, v0}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    .line 74
    sget p3, Lcom/netflix/mediaclient/ui/R$Dialog;->do:I

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    .line 76
    :cond_1
    sget p3, Lcom/netflix/mediaclient/ui/R$Dialog;->dq:I

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lo/AutofillManager;->onDestroyView()V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryCardFragment;->j()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    const-string p2, "view"

    invoke-static {p1, p2}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    iget-object p2, p0, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryCardFragment;->j:Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryCard;

    const-string v0, "card"

    if-nez p2, :cond_0

    invoke-static {v0}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p2}, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryCard;->d()Ljava/lang/String;

    move-result-object p2

    const-string v1, "vlv"

    invoke-static {p2, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    sget p2, Lcom/netflix/mediaclient/ui/R$Fragment;->bm:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "view.findViewById(R.id.cardContent)"

    invoke-static {p1, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    iput-object p1, p0, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryCardFragment;->b:Landroid/view/View;

    .line 94
    iget-object p1, p0, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryCardFragment;->b:Landroid/view/View;

    const-string p2, "cardView"

    if-nez p1, :cond_2

    invoke-static {p2}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_2
    iget-object v1, p0, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryCardFragment;->j:Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryCard;

    if-nez v1, :cond_3

    invoke-static {v0}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_3
    invoke-direct {p0, p1, v1}, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryCardFragment;->b(Landroid/view/View;Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryCard;)V

    .line 96
    iget-object p1, p0, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryCardFragment;->b:Landroid/view/View;

    if-nez p1, :cond_4

    invoke-static {p2}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_4
    iget-object v1, p0, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryCardFragment;->j:Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryCard;

    if-nez v1, :cond_5

    invoke-static {v0}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_5
    invoke-virtual {v1}, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryCard;->b()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryCardFragment;->j:Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryCard;

    if-nez v2, :cond_6

    invoke-static {v0}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_6
    invoke-virtual {v2}, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryCard;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v1, v0}, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryCardFragment;->c(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    iget-object p1, p0, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryCardFragment;->b:Landroid/view/View;

    if-nez p1, :cond_7

    invoke-static {p2}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_7
    new-instance p2, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryCardFragment$Application;

    invoke-direct {p2, p0}, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryCardFragment$Application;-><init>(Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryCardFragment;)V

    check-cast p2, Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
