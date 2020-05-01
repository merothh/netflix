.class public final Lo/MenuPopupWindow;
.super Landroid/widget/LinearLayout;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/MenuPopupWindow$TaskDescription;,
        Lo/MenuPopupWindow$Application;
    }
.end annotation


# instance fields
.field private final a:F

.field private b:I

.field private c:I

.field private d:Landroid/view/LayoutInflater;

.field private e:I

.field private f:Lo/MenuPopupWindow$TaskDescription;

.field private final g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lo/MenuPopupWindow$TaskDescription;",
            ">;"
        }
    .end annotation
.end field

.field private h:Landroid/widget/LinearLayout;

.field private i:I

.field private j:Landroid/widget/LinearLayout;

.field private k:Lo/BC;

.field private l:Lo/MenuPopupWindow$TaskDescription;

.field private final m:Landroid/view/View$OnClickListener;

.field private n:Landroid/view/View$OnClickListener;

.field private o:Lo/MenuPopupWindow$Application;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lo/MenuPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILo/amc;)V

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

    invoke-direct/range {v0 .. v5}, Lo/MenuPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILo/amc;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x5

    .line 33
    iput p1, p0, Lo/MenuPopupWindow;->c:I

    const/4 p1, -0x1

    .line 34
    iput p1, p0, Lo/MenuPopupWindow;->e:I

    const p1, 0x3f9c28f6    # 1.22f

    .line 35
    iput p1, p0, Lo/MenuPopupWindow;->a:F

    .line 41
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lo/MenuPopupWindow;->g:Ljava/util/ArrayList;

    .line 49
    new-instance p1, Lo/MenuPopupWindow$ActionBar;

    invoke-direct {p1, p0}, Lo/MenuPopupWindow$ActionBar;-><init>(Lo/MenuPopupWindow;)V

    check-cast p1, Landroid/view/View$OnClickListener;

    iput-object p1, p0, Lo/MenuPopupWindow;->m:Landroid/view/View$OnClickListener;

    .line 56
    invoke-direct {p0, p2, p3}, Lo/MenuPopupWindow;->d(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILo/amc;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    .line 29
    check-cast p2, Landroid/util/AttributeSet;

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 30
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lo/MenuPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static final synthetic a(Lo/MenuPopupWindow;)I
    .locals 0

    .line 27
    iget p0, p0, Lo/MenuPopupWindow;->i:I

    return p0
.end method

.method private final a()Lo/MenuPopupWindow$TaskDescription;
    .locals 8

    .line 175
    iget-object v0, p0, Lo/MenuPopupWindow;->f:Lo/MenuPopupWindow$TaskDescription;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lo/MenuPopupWindow$TaskDescription;

    const/4 v3, 0x0

    .line 177
    iget-object v1, p0, Lo/MenuPopupWindow;->d:Landroid/view/LayoutInflater;

    const-string v2, "inflater"

    if-nez v1, :cond_1

    invoke-static {v2}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_1
    sget v4, Lcom/netflix/mediaclient/ui/R$Dialog;->fj:I

    iget-object v5, p0, Lo/MenuPopupWindow;->h:Landroid/widget/LinearLayout;

    if-nez v5, :cond_2

    const-string v6, "avatarLayout"

    invoke-static {v6}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_2
    check-cast v5, Landroid/view/ViewGroup;

    const/4 v6, 0x0

    invoke-virtual {v1, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_7

    move-object v4, v1

    check-cast v4, Landroid/widget/ImageView;

    .line 178
    iget-object v1, p0, Lo/MenuPopupWindow;->d:Landroid/view/LayoutInflater;

    if-nez v1, :cond_3

    invoke-static {v2}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_3
    sget v2, Lcom/netflix/mediaclient/ui/R$Dialog;->fl:I

    iget-object v5, p0, Lo/MenuPopupWindow;->j:Landroid/widget/LinearLayout;

    if-nez v5, :cond_4

    const-string v7, "nameLayout"

    invoke-static {v7}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_4
    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_6

    move-object v5, v1

    check-cast v5, Landroid/widget/TextView;

    const/4 v6, 0x0

    move-object v1, v0

    move-object v2, p0

    .line 175
    invoke-direct/range {v1 .. v6}, Lo/MenuPopupWindow$TaskDescription;-><init>(Lo/MenuPopupWindow;Lo/BC;Landroid/widget/ImageView;Landroid/widget/TextView;Z)V

    .line 181
    iput-object v0, p0, Lo/MenuPopupWindow;->f:Lo/MenuPopupWindow$TaskDescription;

    .line 182
    iget-object v1, p0, Lo/MenuPopupWindow;->n:Landroid/view/View$OnClickListener;

    if-eqz v1, :cond_5

    .line 183
    invoke-virtual {v0, v1}, Lo/MenuPopupWindow$TaskDescription;->a(Landroid/view/View$OnClickListener;)V

    :cond_5
    :goto_0
    return-object v0

    .line 178
    :cond_6
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.widget.TextView"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 177
    :cond_7
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.widget.ImageView"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final b()V
    .locals 3

    .line 211
    iget-object v0, p0, Lo/MenuPopupWindow;->k:Lo/BC;

    if-eqz v0, :cond_0

    .line 213
    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->t:I

    .line 212
    invoke-static {v1}, Lo/VideoView2;->e(I)Lo/VideoView2;

    move-result-object v1

    .line 214
    invoke-interface {v0}, Lo/BC;->getProfileName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "profile"

    invoke-virtual {v1, v2, v0}, Lo/VideoView2;->a(Ljava/lang/String;Ljava/lang/Object;)Lo/VideoView2;

    move-result-object v0

    invoke-virtual {v0}, Lo/VideoView2;->toString()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lo/MenuPopupWindow;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private final b(Lo/MenuPopupWindow$TaskDescription;)V
    .locals 2

    .line 205
    iget-object v0, p0, Lo/MenuPopupWindow;->h:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    const-string v1, "avatarLayout"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Lo/MenuPopupWindow$TaskDescription;->e()Landroid/widget/ImageView;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 206
    iget-object v0, p0, Lo/MenuPopupWindow;->j:Landroid/widget/LinearLayout;

    if-nez v0, :cond_1

    const-string v1, "nameLayout"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p1}, Lo/MenuPopupWindow$TaskDescription;->a()Landroid/widget/TextView;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 207
    iget-object v0, p0, Lo/MenuPopupWindow;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method private final b(Lo/MenuPopupWindow$TaskDescription;I)V
    .locals 2

    .line 195
    iget-object v0, p0, Lo/MenuPopupWindow;->h:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    const-string v1, "avatarLayout"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Lo/MenuPopupWindow$TaskDescription;->e()Landroid/widget/ImageView;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, v1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 196
    iget-object v0, p0, Lo/MenuPopupWindow;->j:Landroid/widget/LinearLayout;

    if-nez v0, :cond_1

    const-string v1, "nameLayout"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p1}, Lo/MenuPopupWindow$TaskDescription;->a()Landroid/widget/TextView;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, v1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    if-ltz p2, :cond_2

    .line 197
    iget-object v0, p0, Lo/MenuPopupWindow;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p2, v0, :cond_2

    .line 198
    iget-object v0, p0, Lo/MenuPopupWindow;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 200
    :cond_2
    iget-object p2, p0, Lo/MenuPopupWindow;->g:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public static synthetic b(Lo/MenuPopupWindow;Lo/BC;ZIILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, -0x1

    .line 218
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lo/MenuPopupWindow;->c(Lo/BC;ZI)V

    return-void
.end method

.method public static final synthetic d(Lo/MenuPopupWindow;)I
    .locals 0

    .line 27
    iget p0, p0, Lo/MenuPopupWindow;->b:I

    return p0
.end method

.method private final d(Landroid/util/AttributeSet;I)V
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CustomViewStyleable"
        }
    .end annotation

    .line 61
    invoke-virtual {p0}, Lo/MenuPopupWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const-string v1, "LayoutInflater.from(context)"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lo/MenuPopupWindow;->d:Landroid/view/LayoutInflater;

    const/4 v0, 0x1

    .line 63
    invoke-virtual {p0, v0}, Lo/MenuPopupWindow;->setOrientation(I)V

    const/4 v1, 0x0

    .line 64
    invoke-virtual {p0, v1}, Lo/MenuPopupWindow;->setClipToPadding(Z)V

    .line 66
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lo/MenuPopupWindow;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 67
    sget v3, Lcom/netflix/mediaclient/ui/R$Fragment;->pC:I

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setId(I)V

    .line 68
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v3, 0x11

    .line 69
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 66
    iput-object v2, p0, Lo/MenuPopupWindow;->h:Landroid/widget/LinearLayout;

    .line 71
    iget-object v2, p0, Lo/MenuPopupWindow;->h:Landroid/widget/LinearLayout;

    if-nez v2, :cond_0

    const-string v3, "avatarLayout"

    invoke-static {v3}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    check-cast v2, Landroid/view/View;

    const/4 v3, -0x2

    const/4 v4, -0x1

    invoke-virtual {p0, v2, v4, v3}, Lo/MenuPopupWindow;->addView(Landroid/view/View;II)V

    .line 73
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lo/MenuPopupWindow;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v2, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 74
    sget v5, Lcom/netflix/mediaclient/ui/R$Fragment;->pF:I

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setId(I)V

    .line 75
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 76
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/4 v5, 0x4

    .line 77
    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setImportantForAccessibility(I)V

    .line 73
    iput-object v2, p0, Lo/MenuPopupWindow;->j:Landroid/widget/LinearLayout;

    .line 79
    iget-object v2, p0, Lo/MenuPopupWindow;->j:Landroid/widget/LinearLayout;

    const-string v6, "nameLayout"

    if-nez v2, :cond_1

    invoke-static {v6}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_1
    check-cast v2, Landroid/view/View;

    invoke-virtual {p0, v2, v4, v3}, Lo/MenuPopupWindow;->addView(Landroid/view/View;II)V

    .line 81
    iget-object v2, p0, Lo/MenuPopupWindow;->j:Landroid/widget/LinearLayout;

    if-nez v2, :cond_2

    invoke-static {v6}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_2
    check-cast v2, Landroid/view/View;

    invoke-virtual {p0}, Lo/MenuPopupWindow;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v6, "context"

    invoke-static {v3, v6}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v7, Lcom/netflix/mediaclient/ui/R$TaskDescription;->au:I

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-static {v2, v0, v3}, Lo/RemoteException;->c(Landroid/view/View;II)V

    .line 83
    invoke-static {}, Lo/adq;->d()Z

    move-result v0

    const/4 v2, 0x5

    if-eqz v0, :cond_3

    .line 85
    move-object v0, p0

    check-cast v0, Landroid/view/View;

    .line 86
    invoke-virtual {p0}, Lo/MenuPopupWindow;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v7, Lcom/netflix/mediaclient/ui/R$TaskDescription;->as:I

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 84
    invoke-static {v0, v2, v3}, Lo/RemoteException;->e(Landroid/view/View;II)V

    .line 90
    invoke-virtual {p0}, Lo/MenuPopupWindow;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v7, Lcom/netflix/mediaclient/ui/R$TaskDescription;->av:I

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 88
    invoke-static {v0, v5, v3}, Lo/RemoteException;->e(Landroid/view/View;II)V

    goto :goto_0

    .line 94
    :cond_3
    move-object v0, p0

    check-cast v0, Landroid/view/View;

    .line 95
    invoke-virtual {p0}, Lo/MenuPopupWindow;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v7, Lcom/netflix/mediaclient/ui/R$TaskDescription;->at:I

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 93
    invoke-static {v0, v2, v3}, Lo/RemoteException;->e(Landroid/view/View;II)V

    .line 99
    invoke-virtual {p0}, Lo/MenuPopupWindow;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v7, Lcom/netflix/mediaclient/ui/R$TaskDescription;->aw:I

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 97
    invoke-static {v0, v5, v3}, Lo/RemoteException;->e(Landroid/view/View;II)V

    .line 103
    :goto_0
    invoke-virtual {p0}, Lo/MenuPopupWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v6}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 104
    invoke-static {}, Lo/adq;->d()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 105
    sget v3, Lcom/netflix/mediaclient/ui/R$TaskDescription;->an:I

    goto :goto_1

    .line 107
    :cond_4
    sget v3, Lcom/netflix/mediaclient/ui/R$TaskDescription;->ao:I

    .line 103
    :goto_1
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lo/MenuPopupWindow;->i:I

    .line 110
    iget v0, p0, Lo/MenuPopupWindow;->i:I

    int-to-float v0, v0

    iget v3, p0, Lo/MenuPopupWindow;->a:F

    mul-float v0, v0, v3

    float-to-int v0, v0

    iput v0, p0, Lo/MenuPopupWindow;->b:I

    if-eqz p1, :cond_7

    .line 115
    invoke-virtual {p0}, Lo/MenuPopupWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v3, Lcom/netflix/mediaclient/ui/R$PictureInPictureParams;->bt:[I

    invoke-virtual {v0, p1, v3, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 116
    sget p2, Lcom/netflix/mediaclient/ui/R$PictureInPictureParams;->br:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 117
    sget p2, Lcom/netflix/mediaclient/ui/R$PictureInPictureParams;->br:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lo/MenuPopupWindow;->c:I

    .line 118
    iget p2, p0, Lo/MenuPopupWindow;->c:I

    if-le p2, v2, :cond_5

    const-string p2, "ProfileSelector_ps_max_profiles only supports up to 5"

    .line 119
    invoke-static {p2}, Lcom/ibm/icu/impl/Assert;->fail(Ljava/lang/String;)V

    .line 123
    :cond_5
    sget p2, Lcom/netflix/mediaclient/ui/R$PictureInPictureParams;->bs:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 124
    sget p2, Lcom/netflix/mediaclient/ui/R$PictureInPictureParams;->bs:I

    invoke-virtual {p1, p2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lo/MenuPopupWindow;->e:I

    .line 126
    :cond_6
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_7
    return-void
.end method

.method private final e()V
    .locals 2

    .line 189
    iget-object v0, p0, Lo/MenuPopupWindow;->h:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    const-string v1, "avatarLayout"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 190
    iget-object v0, p0, Lo/MenuPopupWindow;->j:Landroid/widget/LinearLayout;

    if-nez v0, :cond_1

    const-string v1, "nameLayout"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 191
    iget-object v0, p0, Lo/MenuPopupWindow;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method static synthetic e(Lo/MenuPopupWindow;Lo/MenuPopupWindow$TaskDescription;IILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, -0x1

    .line 194
    :cond_0
    invoke-direct {p0, p1, p2}, Lo/MenuPopupWindow;->b(Lo/MenuPopupWindow$TaskDescription;I)V

    return-void
.end method


# virtual methods
.method public final c(Lo/BC;ZI)V
    .locals 12

    const-string v0, "profile"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 219
    iget-object v1, p0, Lo/MenuPopupWindow;->d:Landroid/view/LayoutInflater;

    const-string v2, "inflater"

    if-nez v1, :cond_0

    invoke-static {v2}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    if-eqz p2, :cond_1

    .line 221
    sget v3, Lcom/netflix/mediaclient/ui/R$Dialog;->fq:I

    goto :goto_0

    .line 223
    :cond_1
    sget v3, Lcom/netflix/mediaclient/ui/R$Dialog;->fk:I

    :goto_0
    iget-object v4, p0, Lo/MenuPopupWindow;->h:Landroid/widget/LinearLayout;

    if-nez v4, :cond_2

    const-string v5, "avatarLayout"

    invoke-static {v5}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_2
    check-cast v4, Landroid/view/ViewGroup;

    const/4 v5, 0x0

    .line 219
    invoke-virtual {v1, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_b

    check-cast v1, Lo/GridView;

    .line 226
    invoke-interface {p1}, Lo/BC;->getAvatarUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lo/GridView;->d(Ljava/lang/String;)V

    .line 229
    sget v3, Lcom/netflix/mediaclient/ui/R$AssistContent;->y:I

    .line 228
    invoke-static {v3}, Lo/VideoView2;->e(I)Lo/VideoView2;

    move-result-object v3

    .line 230
    invoke-interface {p1}, Lo/BC;->getProfileName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lo/VideoView2;->a(Ljava/lang/String;Ljava/lang/Object;)Lo/VideoView2;

    move-result-object v0

    invoke-virtual {v0}, Lo/VideoView2;->toString()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Lo/GridView;->setContentDescription(Ljava/lang/CharSequence;)V

    if-nez p2, :cond_3

    .line 233
    sget v0, Lcom/netflix/mediaclient/ui/R$Activity;->cG:I

    invoke-virtual {v1, v0}, Lo/GridView;->setBackgroundResource(I)V

    .line 236
    :cond_3
    iget-object v0, p0, Lo/MenuPopupWindow;->d:Landroid/view/LayoutInflater;

    if-nez v0, :cond_4

    invoke-static {v2}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_4
    if-eqz p2, :cond_5

    .line 237
    sget v2, Lcom/netflix/mediaclient/ui/R$Dialog;->fn:I

    goto :goto_1

    :cond_5
    sget v2, Lcom/netflix/mediaclient/ui/R$Dialog;->fr:I

    .line 238
    :goto_1
    iget-object v3, p0, Lo/MenuPopupWindow;->j:Landroid/widget/LinearLayout;

    if-nez v3, :cond_6

    const-string v4, "nameLayout"

    invoke-static {v4}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_6
    check-cast v3, Landroid/view/ViewGroup;

    .line 236
    invoke-virtual {v0, v2, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_a

    move-object v10, v0

    check-cast v10, Landroid/widget/TextView;

    .line 241
    invoke-interface {p1}, Lo/BC;->getProfileName()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 243
    invoke-static {}, Lo/ady;->l()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p1}, Lo/BC;->isProfileLocked()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 244
    invoke-virtual {p0}, Lo/MenuPopupWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lcom/netflix/mediaclient/ui/R$Activity;->aR:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const-string v2, "Lookup.get<Context>().resources"

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_7

    const/16 v6, 0x10

    int-to-float v6, v6

    .line 336
    sget-object v7, Lo/TextViewMetrics;->e:Lo/TextViewMetrics;

    .line 337
    const-class v7, Landroid/content/Context;

    invoke-static {v7}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-static {v7, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    .line 336
    invoke-static {v3, v6, v7}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v7

    float-to-int v7, v7

    .line 338
    sget-object v8, Lo/TextViewMetrics;->e:Lo/TextViewMetrics;

    .line 339
    const-class v8, Landroid/content/Context;

    invoke-static {v8}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-static {v8, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    .line 338
    invoke-static {v3, v6, v8}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v6

    float-to-int v6, v6

    .line 245
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8, v5, v5, v7, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, v8}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    goto :goto_2

    :cond_7
    move-object v0, v4

    :goto_2
    const/4 v5, 0x2

    int-to-float v5, v5

    .line 340
    sget-object v6, Lo/TextViewMetrics;->e:Lo/TextViewMetrics;

    .line 341
    const-class v6, Landroid/content/Context;

    invoke-static {v6}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-static {v6, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 340
    invoke-static {v3, v5, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 248
    invoke-virtual {v10, v4, v4, v4, v0}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 251
    :cond_8
    new-instance v0, Lo/MenuPopupWindow$TaskDescription;

    move-object v9, v1

    check-cast v9, Landroid/widget/ImageView;

    move-object v6, v0

    move-object v7, p0

    move-object v8, p1

    move v11, p2

    invoke-direct/range {v6 .. v11}, Lo/MenuPopupWindow$TaskDescription;-><init>(Lo/MenuPopupWindow;Lo/BC;Landroid/widget/ImageView;Landroid/widget/TextView;Z)V

    .line 252
    invoke-direct {p0, v0, p3}, Lo/MenuPopupWindow;->b(Lo/MenuPopupWindow$TaskDescription;I)V

    .line 253
    iget-object p1, p0, Lo/MenuPopupWindow;->m:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, p1}, Lo/MenuPopupWindow$TaskDescription;->a(Landroid/view/View$OnClickListener;)V

    if-eqz p2, :cond_9

    .line 256
    iput-object v0, p0, Lo/MenuPopupWindow;->l:Lo/MenuPopupWindow$TaskDescription;

    :cond_9
    return-void

    .line 236
    :cond_a
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.widget.TextView"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 219
    :cond_b
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type com.netflix.mediaclient.android.widget.NetflixImageView"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected onMeasure(II)V
    .locals 5

    .line 131
    iget v0, p0, Lo/MenuPopupWindow;->e:I

    if-lez v0, :cond_0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iget v1, p0, Lo/MenuPopupWindow;->e:I

    if-le v0, v1, :cond_0

    .line 132
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    invoke-static {v1, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 135
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-virtual {p0}, Lo/MenuPopupWindow;->getPaddingStart()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lo/MenuPopupWindow;->getPaddingEnd()I

    move-result v1

    sub-int/2addr v0, v1

    .line 137
    iget-object v1, p0, Lo/MenuPopupWindow;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x3

    if-le v1, v2, :cond_1

    iget v1, p0, Lo/MenuPopupWindow;->c:I

    goto :goto_0

    :cond_1
    const/4 v1, 0x4

    .line 138
    :goto_0
    iget v2, p0, Lo/MenuPopupWindow;->i:I

    mul-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lo/MenuPopupWindow;->g:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    mul-int v2, v2, v3

    add-int/lit8 v2, v2, -0x1

    sub-int/2addr v0, v2

    .line 139
    iget v2, p0, Lo/MenuPopupWindow;->b:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    int-to-float v2, v0

    .line 141
    iget v3, p0, Lo/MenuPopupWindow;->a:F

    mul-float v2, v2, v3

    int-to-float v3, v1

    div-float/2addr v2, v3

    float-to-int v2, v2

    sub-int/2addr v0, v2

    add-int/lit8 v1, v1, -0x1

    .line 142
    div-int/2addr v0, v1

    .line 144
    iget-object v1, p0, Lo/MenuPopupWindow;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/MenuPopupWindow$TaskDescription;

    .line 145
    iget-object v4, p0, Lo/MenuPopupWindow;->l:Lo/MenuPopupWindow$TaskDescription;

    invoke-static {v3, v4}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 146
    invoke-virtual {v3, v2}, Lo/MenuPopupWindow$TaskDescription;->e(I)V

    goto :goto_1

    .line 148
    :cond_2
    invoke-virtual {v3, v0}, Lo/MenuPopupWindow$TaskDescription;->e(I)V

    goto :goto_1

    .line 152
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void
.end method

.method public final setAddProfileListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    const-string v0, "clickListener"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 293
    iput-object p1, p0, Lo/MenuPopupWindow;->n:Landroid/view/View$OnClickListener;

    .line 294
    iget-object v0, p0, Lo/MenuPopupWindow;->f:Lo/MenuPopupWindow$TaskDescription;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lo/MenuPopupWindow$TaskDescription;->a(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public final setProfileSelectedListener(Lo/MenuPopupWindow$Application;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 298
    iput-object p1, p0, Lo/MenuPopupWindow;->o:Lo/MenuPopupWindow$Application;

    return-void
.end method

.method public final setProfiles(Ljava/util/List;Lo/BC;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lo/BC;",
            ">;",
            "Lo/BC;",
            ")V"
        }
    .end annotation

    const-string v0, "profiles"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "currentlySelected"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 156
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lo/MenuPopupWindow;->c:I

    if-gt v0, v1, :cond_2

    .line 159
    iput-object p2, p0, Lo/MenuPopupWindow;->k:Lo/BC;

    .line 161
    invoke-direct {p0}, Lo/MenuPopupWindow;->e()V

    .line 163
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lo/BC;

    .line 164
    invoke-interface {v3}, Lo/BC;->getProfileGuid()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2}, Lo/BC;->getProfileGuid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Lo/MenuPopupWindow;->b(Lo/MenuPopupWindow;Lo/BC;ZIILjava/lang/Object;)V

    goto :goto_0

    .line 168
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget p2, p0, Lo/MenuPopupWindow;->c:I

    if-ge p1, p2, :cond_1

    .line 169
    invoke-direct {p0}, Lo/MenuPopupWindow;->a()Lo/MenuPopupWindow$TaskDescription;

    move-result-object p1

    const/4 p2, 0x0

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Lo/MenuPopupWindow;->e(Lo/MenuPopupWindow;Lo/MenuPopupWindow$TaskDescription;IILjava/lang/Object;)V

    .line 171
    :cond_1
    invoke-direct {p0}, Lo/MenuPopupWindow;->b()V

    return-void

    .line 157
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Max of "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lo/MenuPopupWindow;->c:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " profiles supported, set with app:ps_max_profiles"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public final setSelected(Ljava/lang/String;)V
    .locals 9

    const-string v0, "profileGuid"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 261
    move-object v1, v0

    check-cast v1, Lo/BC;

    .line 262
    iget-object v2, p0, Lo/MenuPopupWindow;->k:Lo/BC;

    if-eqz v2, :cond_0

    .line 263
    invoke-interface {v2}, Lo/BC;->getProfileGuid()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v0

    :goto_0
    invoke-static {v3, p1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    if-eqz v3, :cond_5

    if-eqz v2, :cond_1

    .line 264
    invoke-interface {v2}, Lo/BC;->getProfileGuid()Ljava/lang/String;

    move-result-object v0

    .line 266
    :cond_1
    iget-object v2, p0, Lo/MenuPopupWindow;->g:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v3, v2}, Lo/amG;->b(II)Lo/amD;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    .line 342
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    move-object v5, v2

    check-cast v5, Lo/akG;

    invoke-virtual {v5}, Lo/akG;->c()I

    move-result v5

    .line 267
    iget-object v6, p0, Lo/MenuPopupWindow;->g:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    const-string v7, "profileViewHolders[index]"

    invoke-static {v6, v7}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Lo/MenuPopupWindow$TaskDescription;

    .line 268
    invoke-virtual {v6}, Lo/MenuPopupWindow$TaskDescription;->b()Lo/BC;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 269
    invoke-virtual {v6}, Lo/MenuPopupWindow$TaskDescription;->c()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, p1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 270
    invoke-direct {p0, v6}, Lo/MenuPopupWindow;->b(Lo/MenuPopupWindow$TaskDescription;)V

    .line 271
    invoke-virtual {p0, v7, v4, v5}, Lo/MenuPopupWindow;->c(Lo/BC;ZI)V

    .line 272
    invoke-virtual {v6}, Lo/MenuPopupWindow$TaskDescription;->b()Lo/BC;

    move-result-object v1

    goto :goto_1

    :cond_3
    if-eqz v0, :cond_2

    .line 274
    invoke-virtual {v6}, Lo/MenuPopupWindow$TaskDescription;->c()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v0}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 276
    invoke-direct {p0, v6}, Lo/MenuPopupWindow;->b(Lo/MenuPopupWindow$TaskDescription;)V

    .line 277
    invoke-virtual {p0, v7, v3, v5}, Lo/MenuPopupWindow;->c(Lo/BC;ZI)V

    goto :goto_1

    .line 281
    :cond_4
    iput-object v1, p0, Lo/MenuPopupWindow;->k:Lo/BC;

    .line 282
    invoke-direct {p0}, Lo/MenuPopupWindow;->b()V

    goto :goto_2

    .line 284
    :cond_5
    iget-object v1, p0, Lo/MenuPopupWindow;->k:Lo/BC;

    :goto_2
    if-eqz v1, :cond_6

    .line 288
    iget-object p1, p0, Lo/MenuPopupWindow;->o:Lo/MenuPopupWindow$Application;

    if-eqz p1, :cond_6

    invoke-interface {p1, v1}, Lo/MenuPopupWindow$Application;->a(Lo/BC;)V

    :cond_6
    return-void
.end method
