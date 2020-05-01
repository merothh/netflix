.class public final Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText;
.super Lo/PackedObjectVector;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText$ActionBar;
    }
.end annotation


# static fields
.field static final synthetic c:[Lo/amT;


# instance fields
.field private a:Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditTextViewModel;

.field private final b:Lo/ams;

.field private final d:Lo/ams;

.field private f:Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText$ActionBar;

.field private g:I

.field private final h:Lo/ams;

.field private i:Z

.field public interactionListenerFactory:Lo/SpanSet;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private q:I

.field public stringProvider:Lo/InputBinding;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText;

    const/4 v1, 0x3

    new-array v1, v1, [Lo/amT;

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "editText"

    const-string v5, "getEditText()Landroid/widget/EditText;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "inputError"

    const-string v5, "getInputError()Landroid/widget/TextView;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v0

    const-string v3, "inputLayout"

    const-string v4, "getInputLayout()Lcom/google/android/material/textfield/TextInputLayout;"

    invoke-direct {v2, v0, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v0

    check-cast v0, Lo/amT;

    const/4 v2, 0x2

    aput-object v0, v1, v2

    sput-object v1, Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText;->c:[Lo/amT;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xe

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILo/amc;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILo/amc;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILo/amc;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-direct {p0, p1, p2, p3, p4}, Lo/PackedObjectVector;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 48
    sget p3, Lcom/netflix/mediaclient/ui/R$Fragment;->ft:I

    invoke-static {p0, p3}, Lo/NfcV;->a(Landroid/view/View;I)Lo/ams;

    move-result-object p3

    iput-object p3, p0, Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText;->b:Lo/ams;

    .line 50
    sget p3, Lcom/netflix/mediaclient/ui/R$Fragment;->hX:I

    invoke-static {p0, p3}, Lo/NfcV;->a(Landroid/view/View;I)Lo/ams;

    move-result-object p3

    iput-object p3, p0, Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText;->d:Lo/ams;

    .line 52
    sget p3, Lcom/netflix/mediaclient/ui/R$Fragment;->hZ:I

    invoke-static {p0, p3}, Lo/NfcV;->a(Landroid/view/View;I)Lo/ams;

    move-result-object p3

    iput-object p3, p0, Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText;->h:Lo/ams;

    const/4 p3, -0x1

    .line 62
    iput p3, p0, Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText;->j:I

    .line 64
    iput p3, p0, Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText;->g:I

    .line 66
    iput p3, p0, Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText;->o:I

    .line 68
    iput p3, p0, Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText;->k:I

    .line 71
    sget p3, Lcom/netflix/mediaclient/ui/R$Activity;->cJ:I

    iput p3, p0, Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText;->l:I

    .line 73
    sget p3, Lcom/netflix/mediaclient/ui/R$Activity;->cK:I

    iput p3, p0, Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText;->n:I

    .line 75
    sget p3, Lcom/netflix/mediaclient/ui/R$Activity;->cI:I

    iput p3, p0, Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText;->m:I

    .line 77
    sget p3, Lcom/netflix/mediaclient/ui/R$Activity;->cM:I

    iput p3, p0, Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText;->q:I

    .line 80
    sget p3, Lcom/netflix/mediaclient/ui/R$Dialog;->bz:I

    move-object p4, p0

    check-cast p4, Landroid/view/ViewGroup;

    invoke-static {p1, p3, p4}, Lo/PackedObjectVector;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 81
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText;->f()V

    .line 82
    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText;->c(Landroid/util/AttributeSet;)V

    .line 84
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText;->isInEditMode()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 85
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText;->i()V

    :cond_0
    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILo/amc;)V
    .locals 1

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    const/4 p2, 0x0

    .line 40
    check-cast p2, Landroid/util/AttributeSet;

    :cond_0
    and-int/lit8 p6, p5, 0x4

    const/4 v0, 0x0

    if-eqz p6, :cond_1

    const/4 p3, 0x0

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    const/4 p4, 0x0

    .line 42
    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method private final a(ZZZ)I
    .locals 0

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 209
    iget p1, p0, Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText;->l:I

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 210
    iget p1, p0, Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText;->n:I

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_2

    .line 211
    iget p1, p0, Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText;->m:I

    goto :goto_0

    .line 212
    :cond_2
    iget p1, p0, Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText;->q:I

    :goto_0
    return p1
.end method

.method public static final synthetic a(Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText;Z)V
    .locals 0

    .line 38
    iput-boolean p1, p0, Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText;->i:Z

    return-void
.end method

.method private final c(Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditTextViewModel;Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditTextViewModel$Error;)Ljava/lang/String;
    .locals 2

    .line 195
    sget-object v0, Lo/PackedIntVector;->a:[I

    invoke-virtual {p2}, Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditTextViewModel$Error;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x1

    const-string v1, "stringProvider"

    if-eq p2, v0, :cond_4

    const/4 v0, 0x2

    if-eq p2, v0, :cond_2

    const/4 p1, 0x3

    if-ne p2, p1, :cond_1

    .line 203
    iget-object p1, p0, Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText;->stringProvider:Lo/InputBinding;

    if-nez p1, :cond_0

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    iget p2, p0, Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText;->o:I

    invoke-virtual {p1, p2}, Lo/InputBinding;->c(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 198
    :cond_2
    iget-object p2, p0, Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText;->stringProvider:Lo/InputBinding;

    if-nez p2, :cond_3

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_3
    iget v0, p0, Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText;->j:I

    invoke-virtual {p2, v0}, Lo/InputBinding;->d(I)Lo/VideoView2;

    move-result-object p2

    .line 199
    invoke-interface {p1}, Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditTextViewModel;->c()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "minLength"

    invoke-virtual {p2, v1, v0}, Lo/VideoView2;->a(Ljava/lang/String;Ljava/lang/Object;)Lo/VideoView2;

    move-result-object p2

    .line 200
    invoke-interface {p1}, Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditTextViewModel;->e()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "maxLength"

    invoke-virtual {p2, v0, p1}, Lo/VideoView2;->a(Ljava/lang/String;Ljava/lang/Object;)Lo/VideoView2;

    move-result-object p1

    .line 201
    invoke-virtual {p1}, Lo/VideoView2;->c()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 196
    :cond_4
    iget-object p1, p0, Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText;->stringProvider:Lo/InputBinding;

    if-nez p1, :cond_5

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_5
    iget p2, p0, Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText;->g:I

    invoke-virtual {p1, p2}, Lo/InputBinding;->c(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private final c(Landroid/util/AttributeSet;)V
    .locals 3

    .line 90
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/ui/R$PictureInPictureParams;->av:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 93
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/netflix/mediaclient/ui/R$PictureInPictureParams;->at:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    sget v0, Lcom/netflix/mediaclient/ui/R$PictureInPictureParams;->at:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 95
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText;->b()Landroid/widget/EditText;

    move-result-object v1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 97
    :cond_0
    sget v0, Lcom/netflix/mediaclient/ui/R$PictureInPictureParams;->aB:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 98
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText;->b()Landroid/widget/EditText;

    move-result-object v0

    sget v2, Lcom/netflix/mediaclient/ui/R$PictureInPictureParams;->aB:I

    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setInputType(I)V

    .line 100
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText;->b()Landroid/widget/EditText;

    move-result-object v0

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 102
    :cond_1
    sget v0, Lcom/netflix/mediaclient/ui/R$PictureInPictureParams;->az:I

    invoke-static {p1, v0}, Lo/ViewStructure;->b(Landroid/content/res/TypedArray;I)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText;->k:I

    .line 103
    sget v0, Lcom/netflix/mediaclient/ui/R$PictureInPictureParams;->ax:I

    invoke-static {p1, v0}, Lo/ViewStructure;->b(Landroid/content/res/TypedArray;I)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText;->j:I

    .line 104
    sget v0, Lcom/netflix/mediaclient/ui/R$PictureInPictureParams;->ay:I

    invoke-static {p1, v0}, Lo/ViewStructure;->b(Landroid/content/res/TypedArray;I)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText;->g:I

    .line 105
    sget v0, Lcom/netflix/mediaclient/ui/R$PictureInPictureParams;->aA:I

    invoke-static {p1, v0}, Lo/ViewStructure;->b(Landroid/content/res/TypedArray;I)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText;->o:I

    .line 106
    sget v0, Lcom/netflix/mediaclient/ui/R$PictureInPictureParams;->aE:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 107
    sget v0, Lcom/netflix/mediaclient/ui/R$PictureInPictureParams;->aE:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText;->setShowValidationState(Z)V

    .line 110
    :cond_2
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public static final synthetic c(Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText;->j()V

    return-void
.end method

.method public static final synthetic e(Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText;)Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText$ActionBar;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText;->f:Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText$ActionBar;

    return-object p0
.end method

.method private final f()V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    .line 130
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText;->b()Landroid/widget/EditText;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 239
    invoke-static {v0}, Lo/SSLCertificateSocketFactory;->d(Landroid/view/View;)Lo/SntpClient;

    move-result-object v0

    const-string v1, "RxView.focusChanges(this)"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    move-object v1, p0

    check-cast v1, Landroid/view/View;

    invoke-static {v1}, Lo/SSLCertificateSocketFactory;->e(Landroid/view/View;)Lio/reactivex/Observable;

    move-result-object v2

    check-cast v2, Lio/reactivex/ObservableSource;

    invoke-virtual {v0, v2}, Lo/SntpClient;->takeUntil(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object v0

    const-wide/16 v2, 0x1

    .line 132
    invoke-virtual {v0, v2, v3}, Lio/reactivex/Observable;->skip(J)Lio/reactivex/Observable;

    move-result-object v0

    .line 133
    new-instance v4, Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText$TaskDescription;

    invoke-direct {v4, p0}, Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText$TaskDescription;-><init>(Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText;)V

    check-cast v4, Lio/reactivex/functions/Consumer;

    invoke-virtual {v0, v4}, Lio/reactivex/Observable;->doOnNext(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object v0

    .line 134
    new-instance v4, Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText$StateListAnimator;

    invoke-direct {v4, p0}, Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText$StateListAnimator;-><init>(Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText;)V

    check-cast v4, Lio/reactivex/functions/Consumer;

    invoke-virtual {v0, v4}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    .line 140
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText;->b()Landroid/widget/EditText;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 240
    invoke-static {v0}, Lo/HttpResponseCache;->d(Landroid/widget/TextView;)Lo/SntpClient;

    move-result-object v0

    const-string v4, "RxTextView.textChanges(this)"

    invoke-static {v0, v4}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    invoke-static {v1}, Lo/SSLCertificateSocketFactory;->e(Landroid/view/View;)Lio/reactivex/Observable;

    move-result-object v1

    check-cast v1, Lio/reactivex/ObservableSource;

    invoke-virtual {v0, v1}, Lo/SntpClient;->takeUntil(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object v0

    .line 142
    invoke-virtual {v0, v2, v3}, Lio/reactivex/Observable;->skip(J)Lio/reactivex/Observable;

    move-result-object v0

    .line 143
    new-instance v1, Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText$Application;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText$Application;-><init>(Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText;)V

    check-cast v1, Lio/reactivex/functions/Consumer;

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private final i()V
    .locals 1

    .line 115
    new-instance v0, Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText$Activity;

    invoke-direct {v0}, Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText$Activity;-><init>()V

    check-cast v0, Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditTextViewModel;

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText;->a:Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditTextViewModel;

    .line 125
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText;->a:Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditTextViewModel;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText;->d(Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditTextViewModel;)V

    return-void
.end method

.method private final j()V
    .locals 5

    .line 174
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText;->a:Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditTextViewModel;

    if-eqz v0, :cond_7

    .line 176
    iget-boolean v1, p0, Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText;->i:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 177
    iget-object v1, p0, Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText;->f:Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText$ActionBar;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText$ActionBar;->c()V

    .line 178
    :cond_0
    invoke-interface {v0}, Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditTextViewModel;->g()Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditTextViewModel$Error;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_3

    .line 181
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText;->h()Landroid/widget/TextView;

    move-result-object v4

    if-nez v1, :cond_2

    invoke-static {}, Lo/amh;->c()V

    :cond_2
    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText;->c(Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditTextViewModel;Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditTextViewModel$Error;)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText;->f:Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText$ActionBar;

    if-eqz v0, :cond_5

    invoke-interface {v0, v3}, Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText$ActionBar;->a(Z)V

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    .line 188
    :cond_5
    :goto_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText;->h()Landroid/widget/TextView;

    move-result-object v0

    if-eqz v3, :cond_6

    goto :goto_2

    :cond_6
    const/16 v2, 0x8

    :goto_2
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 190
    iget-boolean v0, p0, Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText;->i:Z

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText;->hasFocus()Z

    move-result v1

    invoke-direct {p0, v3, v0, v1}, Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText;->a(ZZZ)I

    move-result v0

    .line 191
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText;->g()Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setBackgroundResource(I)V

    :cond_7
    return-void
.end method


# virtual methods
.method public final b()Landroid/widget/EditText;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText;->b:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText;->c:[Lo/amT;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    return-object v0
.end method

.method public final d(Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditTextViewModel;)V
    .locals 4

    .line 150
    invoke-super {p0}, Lo/PackedObjectVector;->c()V

    .line 151
    iput-object p1, p0, Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText;->a:Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditTextViewModel;

    .line 152
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText;->interactionListenerFactory:Lo/SpanSet;

    if-nez v0, :cond_0

    const-string v1, "interactionListenerFactory"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditTextViewModel;->d()Lcom/netflix/cl/model/AppView;

    move-result-object v2

    goto :goto_0

    :cond_1
    move-object v2, v1

    :goto_0
    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditTextViewModel;->b()Lcom/netflix/cl/model/InputKind;

    move-result-object v1

    :cond_2
    invoke-interface {v0, v2, v1}, Lo/SpanSet;->b(Lcom/netflix/cl/model/AppView;Lcom/netflix/cl/model/InputKind;)Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText$ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText;->f:Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText$ActionBar;

    if-nez p1, :cond_3

    const/16 p1, 0x8

    .line 155
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText;->setVisibility(I)V

    goto :goto_3

    .line 157
    :cond_3
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText;->g()Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText;->stringProvider:Lo/InputBinding;

    if-nez v1, :cond_4

    const-string v2, "stringProvider"

    invoke-static {v2}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_4
    iget v2, p0, Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText;->k:I

    invoke-virtual {v1, v2}, Lo/InputBinding;->c(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    .line 158
    invoke-interface {p1}, Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditTextViewModel;->i()Ljava/lang/String;

    move-result-object v0

    .line 159
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText;->b()Landroid/widget/EditText;

    move-result-object v1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_6

    .line 160
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_5

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    goto :goto_2

    :cond_6
    :goto_1
    const/4 v0, 0x1

    :goto_2
    if-nez v0, :cond_7

    .line 161
    invoke-virtual {p0, v2}, Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText;->setShowValidationState(Z)V

    .line 163
    :cond_7
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText;->b()Landroid/widget/EditText;

    move-result-object v0

    new-array v2, v2, [Landroid/text/InputFilter;

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    invoke-interface {p1}, Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditTextViewModel;->e()I

    move-result p1

    invoke-direct {v3, p1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    check-cast v3, Landroid/text/InputFilter;

    aput-object v3, v2, v1

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 164
    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText;->setVisibility(I)V

    :goto_3
    return-void
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .line 235
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    return-void
.end method

.method protected dispatchSaveInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .line 231
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText;->dispatchFreezeSelfOnly(Landroid/util/SparseArray;)V

    return-void
.end method

.method public final e()Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditTextViewModel;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText;->a:Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditTextViewModel;

    return-object v0
.end method

.method public final g()Lcom/google/android/material/textfield/TextInputLayout;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText;->h:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText;->c:[Lo/amT;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    return-object v0
.end method

.method public final h()Landroid/widget/TextView;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText;->d:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText;->c:[Lo/amT;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public final setImeOptions(I)V
    .locals 1

    .line 216
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText;->b()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setImeOptions(I)V

    return-void
.end method

.method public final setInteractionListenerFactory(Lo/SpanSet;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    iput-object p1, p0, Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText;->interactionListenerFactory:Lo/SpanSet;

    return-void
.end method

.method public final setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V
    .locals 1

    const-string v0, "editorActionListener"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 220
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText;->b()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    return-void
.end method

.method public setShowValidationState(Z)V
    .locals 0

    .line 169
    iput-boolean p1, p0, Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText;->i:Z

    .line 170
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText;->j()V

    return-void
.end method

.method public final setStringProvider(Lo/InputBinding;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    iput-object p1, p0, Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText;->stringProvider:Lo/InputBinding;

    return-void
.end method

.method public final setViewModel(Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditTextViewModel;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText;->a:Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditTextViewModel;

    return-void
.end method
