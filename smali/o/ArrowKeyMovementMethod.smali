.class public final Lo/ArrowKeyMovementMethod;
.super Landroid/widget/LinearLayout;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ArrowKeyMovementMethod$Application;,
        Lo/ArrowKeyMovementMethod$Activity;
    }
.end annotation


# static fields
.field public static final d:Lo/ArrowKeyMovementMethod$Activity;

.field static final synthetic e:[Lo/amT;


# instance fields
.field private a:Lio/reactivex/disposables/Disposable;

.field private b:Lo/DateTimeKeyListener;

.field private c:Lio/reactivex/disposables/Disposable;

.field private final f:Lo/ams;

.field private final g:Lo/ams;

.field private final h:Lo/ams;

.field private final i:Lo/ams;

.field private final j:Lo/ams;

.field private final l:Lo/ams;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lo/ArrowKeyMovementMethod;

    const/4 v1, 0x6

    new-array v1, v1, [Lo/amT;

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "kidsCheckBox"

    const-string v5, "getKidsCheckBox()Landroid/widget/CheckBox;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "kidsIcon"

    const-string v5, "getKidsIcon()Landroid/widget/ImageView;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "editText"

    const-string v5, "getEditText()Landroid/widget/EditText;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x2

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

    const/4 v3, 0x3

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "inputLayout"

    const-string v5, "getInputLayout()Lcom/google/android/material/textfield/TextInputLayout;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x4

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v0

    const-string v3, "inputWrapper"

    const-string v4, "getInputWrapper()Landroid/view/View;"

    invoke-direct {v2, v0, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v0

    check-cast v0, Lo/amT;

    const/4 v2, 0x5

    aput-object v0, v1, v2

    sput-object v1, Lo/ArrowKeyMovementMethod;->e:[Lo/amT;

    new-instance v0, Lo/ArrowKeyMovementMethod$Activity;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/ArrowKeyMovementMethod$Activity;-><init>(Lo/amc;)V

    sput-object v0, Lo/ArrowKeyMovementMethod;->d:Lo/ArrowKeyMovementMethod$Activity;

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

    invoke-direct/range {v0 .. v6}, Lo/ArrowKeyMovementMethod;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILo/amc;)V

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

    invoke-direct/range {v0 .. v6}, Lo/ArrowKeyMovementMethod;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILo/amc;)V

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

    invoke-direct/range {v0 .. v6}, Lo/ArrowKeyMovementMethod;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILo/amc;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 37
    sget p2, Lcom/netflix/mediaclient/ui/R$Fragment;->iQ:I

    invoke-static {p0, p2}, Lo/NfcV;->a(Landroid/view/View;I)Lo/ams;

    move-result-object p2

    iput-object p2, p0, Lo/ArrowKeyMovementMethod;->j:Lo/ams;

    .line 38
    sget p2, Lcom/netflix/mediaclient/ui/R$Fragment;->iT:I

    invoke-static {p0, p2}, Lo/NfcV;->a(Landroid/view/View;I)Lo/ams;

    move-result-object p2

    iput-object p2, p0, Lo/ArrowKeyMovementMethod;->g:Lo/ams;

    .line 41
    sget p2, Lcom/netflix/mediaclient/ui/R$Fragment;->ft:I

    invoke-static {p0, p2}, Lo/NfcV;->a(Landroid/view/View;I)Lo/ams;

    move-result-object p2

    iput-object p2, p0, Lo/ArrowKeyMovementMethod;->i:Lo/ams;

    .line 43
    sget p2, Lcom/netflix/mediaclient/ui/R$Fragment;->hX:I

    invoke-static {p0, p2}, Lo/NfcV;->a(Landroid/view/View;I)Lo/ams;

    move-result-object p2

    iput-object p2, p0, Lo/ArrowKeyMovementMethod;->f:Lo/ams;

    .line 45
    sget p2, Lcom/netflix/mediaclient/ui/R$Fragment;->hZ:I

    invoke-static {p0, p2}, Lo/NfcV;->a(Landroid/view/View;I)Lo/ams;

    move-result-object p2

    iput-object p2, p0, Lo/ArrowKeyMovementMethod;->h:Lo/ams;

    .line 47
    sget p2, Lcom/netflix/mediaclient/ui/R$Fragment;->ia:I

    invoke-static {p0, p2}, Lo/NfcV;->a(Landroid/view/View;I)Lo/ams;

    move-result-object p2

    iput-object p2, p0, Lo/ArrowKeyMovementMethod;->l:Lo/ams;

    .line 50
    sget p2, Lcom/netflix/mediaclient/ui/R$Dialog;->bt:I

    move-object p3, p0

    check-cast p3, Landroid/view/ViewGroup;

    invoke-static {p1, p2, p3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const/4 p1, 0x1

    .line 51
    invoke-virtual {p0, p1}, Lo/ArrowKeyMovementMethod;->setOrientation(I)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILo/amc;)V
    .locals 1

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    const/4 p2, 0x0

    .line 28
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

    .line 30
    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lo/ArrowKeyMovementMethod;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public static final synthetic d(Lo/ArrowKeyMovementMethod;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lo/ArrowKeyMovementMethod;->j()V

    return-void
.end method

.method private final j()V
    .locals 7

    .line 124
    iget-object v0, p0, Lo/ArrowKeyMovementMethod;->b:Lo/DateTimeKeyListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/DateTimeKeyListener;->g()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    .line 126
    :goto_1
    invoke-virtual {p0}, Lo/ArrowKeyMovementMethod;->b()Landroid/widget/TextView;

    move-result-object v5

    if-eqz v4, :cond_2

    const/4 v6, 0x0

    goto :goto_2

    :cond_2
    const/16 v6, 0x8

    :goto_2
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 127
    invoke-virtual {p0}, Lo/ArrowKeyMovementMethod;->b()Landroid/widget/TextView;

    move-result-object v5

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    iget-object v0, p0, Lo/ArrowKeyMovementMethod;->b:Lo/DateTimeKeyListener;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lo/DateTimeKeyListener;->a()Ljava/lang/Integer;

    move-result-object v1

    :cond_3
    if-eqz v1, :cond_4

    .line 132
    invoke-virtual {p0}, Lo/ArrowKeyMovementMethod;->c()Landroid/widget/EditText;

    move-result-object v0

    new-array v5, v2, [Landroid/text/InputFilter;

    new-instance v6, Landroid/text/InputFilter$LengthFilter;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {v6, v1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    check-cast v6, Landroid/text/InputFilter;

    aput-object v6, v5, v3

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 135
    :cond_4
    iget-object v0, p0, Lo/ArrowKeyMovementMethod;->b:Lo/DateTimeKeyListener;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lo/DateTimeKeyListener;->e()Z

    move-result v0

    if-ne v0, v2, :cond_5

    goto :goto_3

    :cond_5
    const/4 v2, 0x0

    :goto_3
    invoke-virtual {p0, v4, v2}, Lo/ArrowKeyMovementMethod;->b(ZZ)I

    move-result v0

    .line 136
    invoke-virtual {p0}, Lo/ArrowKeyMovementMethod;->h()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    return-void
.end method


# virtual methods
.method public final a()Lo/DateTimeKeyListener;
    .locals 1

    .line 35
    iget-object v0, p0, Lo/ArrowKeyMovementMethod;->b:Lo/DateTimeKeyListener;

    return-object v0
.end method

.method public final b(ZZ)I
    .locals 2

    .line 120
    sget-object v0, Lo/ArrowKeyMovementMethod;->d:Lo/ArrowKeyMovementMethod$Activity;

    invoke-virtual {p0}, Lo/ArrowKeyMovementMethod;->c()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->hasFocus()Z

    move-result v1

    invoke-virtual {v0, p1, p2, v1}, Lo/ArrowKeyMovementMethod$Activity;->e(ZZZ)I

    move-result p1

    return p1
.end method

.method public final b()Landroid/widget/TextView;
    .locals 3

    iget-object v0, p0, Lo/ArrowKeyMovementMethod;->f:Lo/ams;

    sget-object v1, Lo/ArrowKeyMovementMethod;->e:[Lo/amT;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public final c()Landroid/widget/EditText;
    .locals 3

    iget-object v0, p0, Lo/ArrowKeyMovementMethod;->i:Lo/ams;

    sget-object v1, Lo/ArrowKeyMovementMethod;->e:[Lo/amT;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    return-object v0
.end method

.method public final c(Lo/DateTimeKeyListener;Ljava/lang/String;Lo/ArrowKeyMovementMethod$Application;)V
    .locals 5

    const-string v0, "hint"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onInputChangedListener"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 55
    invoke-virtual {p1}, Lo/DateTimeKeyListener;->c()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    .line 56
    :goto_0
    invoke-virtual {p0}, Lo/ArrowKeyMovementMethod;->c()Landroid/widget/EditText;

    move-result-object v2

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 57
    invoke-virtual {p0}, Lo/ArrowKeyMovementMethod;->g()Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v1

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {v1, p2}, Lcom/google/android/material/textfield/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    if-eqz p1, :cond_1

    .line 59
    invoke-virtual {p1}, Lo/DateTimeKeyListener;->a()Ljava/lang/Integer;

    move-result-object v0

    :cond_1
    const/4 p2, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 60
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 61
    invoke-virtual {p0}, Lo/ArrowKeyMovementMethod;->c()Landroid/widget/EditText;

    move-result-object v2

    new-array v3, p2, [Landroid/text/InputFilter;

    new-instance v4, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v4, v0}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    check-cast v4, Landroid/text/InputFilter;

    aput-object v4, v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 65
    :cond_2
    iput-object p1, p0, Lo/ArrowKeyMovementMethod;->b:Lo/DateTimeKeyListener;

    .line 66
    invoke-virtual {p0, p3}, Lo/ArrowKeyMovementMethod;->d(Lo/ArrowKeyMovementMethod$Application;)V

    if-eqz p1, :cond_3

    .line 68
    invoke-virtual {p1}, Lo/DateTimeKeyListener;->d()Z

    move-result p3

    if-ne p3, p2, :cond_3

    .line 69
    invoke-virtual {p0}, Lo/ArrowKeyMovementMethod;->d()Landroid/widget/CheckBox;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 70
    invoke-virtual {p0}, Lo/ArrowKeyMovementMethod;->e()Landroid/widget/ImageView;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 72
    :cond_3
    invoke-virtual {p0}, Lo/ArrowKeyMovementMethod;->d()Landroid/widget/CheckBox;

    move-result-object p2

    const/16 p3, 0x8

    invoke-virtual {p2, p3}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 73
    invoke-virtual {p0}, Lo/ArrowKeyMovementMethod;->e()Landroid/widget/ImageView;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 76
    :goto_1
    invoke-virtual {p0}, Lo/ArrowKeyMovementMethod;->d()Landroid/widget/CheckBox;

    move-result-object p2

    new-instance p3, Lo/ArrowKeyMovementMethod$TaskDescription;

    invoke-direct {p3, p0, p1}, Lo/ArrowKeyMovementMethod$TaskDescription;-><init>(Lo/ArrowKeyMovementMethod;Lo/DateTimeKeyListener;)V

    check-cast p3, Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {p2, p3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method public final d()Landroid/widget/CheckBox;
    .locals 3

    iget-object v0, p0, Lo/ArrowKeyMovementMethod;->j:Lo/ams;

    sget-object v1, Lo/ArrowKeyMovementMethod;->e:[Lo/amT;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    return-object v0
.end method

.method public final d(Lo/ArrowKeyMovementMethod$Application;)V
    .locals 4

    const-string v0, "onInputChangedListener"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    invoke-virtual {p0}, Lo/ArrowKeyMovementMethod;->c()Landroid/widget/EditText;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 153
    invoke-static {v0}, Lo/SSLCertificateSocketFactory;->d(Landroid/view/View;)Lo/SntpClient;

    move-result-object v0

    const-string v1, "RxView.focusChanges(this)"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    invoke-virtual {p0}, Lo/ArrowKeyMovementMethod;->c()Landroid/widget/EditText;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-static {v1}, Lo/SSLCertificateSocketFactory;->e(Landroid/view/View;)Lio/reactivex/Observable;

    move-result-object v1

    check-cast v1, Lio/reactivex/ObservableSource;

    invoke-virtual {v0, v1}, Lo/SntpClient;->takeUntil(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object v0

    const-wide/16 v1, 0x1

    .line 86
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->skip(J)Lio/reactivex/Observable;

    move-result-object v0

    .line 87
    new-instance v3, Lo/ArrowKeyMovementMethod$StateListAnimator;

    invoke-direct {v3, p0}, Lo/ArrowKeyMovementMethod$StateListAnimator;-><init>(Lo/ArrowKeyMovementMethod;)V

    check-cast v3, Lio/reactivex/functions/Consumer;

    invoke-virtual {v0, v3}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lo/ArrowKeyMovementMethod;->c:Lio/reactivex/disposables/Disposable;

    .line 94
    invoke-virtual {p0}, Lo/ArrowKeyMovementMethod;->c()Landroid/widget/EditText;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 154
    invoke-static {v0}, Lo/HttpResponseCache;->d(Landroid/widget/TextView;)Lo/SntpClient;

    move-result-object v0

    const-string v3, "RxTextView.textChanges(this)"

    invoke-static {v0, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    invoke-virtual {p0}, Lo/ArrowKeyMovementMethod;->c()Landroid/widget/EditText;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-static {v3}, Lo/SSLCertificateSocketFactory;->e(Landroid/view/View;)Lio/reactivex/Observable;

    move-result-object v3

    check-cast v3, Lio/reactivex/ObservableSource;

    invoke-virtual {v0, v3}, Lo/SntpClient;->takeUntil(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object v0

    .line 96
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->skip(J)Lio/reactivex/Observable;

    move-result-object v0

    .line 97
    new-instance v1, Lo/ArrowKeyMovementMethod$ActionBar;

    invoke-direct {v1, p0, p1}, Lo/ArrowKeyMovementMethod$ActionBar;-><init>(Lo/ArrowKeyMovementMethod;Lo/ArrowKeyMovementMethod$Application;)V

    check-cast v1, Lio/reactivex/functions/Consumer;

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    iput-object p1, p0, Lo/ArrowKeyMovementMethod;->a:Lio/reactivex/disposables/Disposable;

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

    .line 148
    invoke-virtual {p0, p1}, Lo/ArrowKeyMovementMethod;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

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

    .line 145
    invoke-virtual {p0, p1}, Lo/ArrowKeyMovementMethod;->dispatchFreezeSelfOnly(Landroid/util/SparseArray;)V

    return-void
.end method

.method public final e()Landroid/widget/ImageView;
    .locals 3

    iget-object v0, p0, Lo/ArrowKeyMovementMethod;->g:Lo/ams;

    sget-object v1, Lo/ArrowKeyMovementMethod;->e:[Lo/amT;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method

.method public final g()Lcom/google/android/material/textfield/TextInputLayout;
    .locals 3

    iget-object v0, p0, Lo/ArrowKeyMovementMethod;->h:Lo/ams;

    sget-object v1, Lo/ArrowKeyMovementMethod;->e:[Lo/amT;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    return-object v0
.end method

.method public final h()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lo/ArrowKeyMovementMethod;->l:Lo/ams;

    sget-object v1, Lo/ArrowKeyMovementMethod;->e:[Lo/amT;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public final setIsDuplicateName(Z)V
    .locals 1

    .line 115
    iget-object v0, p0, Lo/ArrowKeyMovementMethod;->b:Lo/DateTimeKeyListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lo/DateTimeKeyListener;->c(Z)V

    .line 116
    :cond_0
    invoke-direct {p0}, Lo/ArrowKeyMovementMethod;->j()V

    return-void
.end method

.method public final setViewModel(Lo/DateTimeKeyListener;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lo/ArrowKeyMovementMethod;->b:Lo/DateTimeKeyListener;

    return-void
.end method
