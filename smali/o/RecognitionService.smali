.class public Lo/RecognitionService;
.super Landroidx/recyclerview/widget/RecyclerView$Intent;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/RecognitionService$Application;,
        Lo/RecognitionService$Activity;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lo/AndroidCharacter<",
        "*>;>",
        "Landroidx/recyclerview/widget/RecyclerView$Intent;"
    }
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lo/amT;

.field public static final Companion:Lo/RecognitionService$Activity;


# instance fields
.field private final compositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

.field private final editText$delegate:Lo/ams;

.field private focusChangeDisposable:Lio/reactivex/disposables/Disposable;

.field private final inputError$delegate:Lo/ams;

.field private final inputLayout$delegate:Lo/ams;

.field private final signupLogger:Lo/TextClassificationManager;

.field private final stringProvider:Lo/InputBinding;

.field private textChangeDisposable:Lio/reactivex/disposables/Disposable;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lo/RecognitionService;

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

    sput-object v1, Lo/RecognitionService;->$$delegatedProperties:[Lo/amT;

    new-instance v0, Lo/RecognitionService$Activity;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/RecognitionService$Activity;-><init>(Lo/amc;)V

    sput-object v0, Lo/RecognitionService;->Companion:Lo/RecognitionService$Activity;

    return-void
.end method

.method public constructor <init>(Lo/TextClassificationManager;Lo/InputBinding;Landroid/view/View;)V
    .locals 1

    const-string v0, "signupLogger"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stringProvider"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "itemView"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-direct {p0, p3}, Landroidx/recyclerview/widget/RecyclerView$Intent;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lo/RecognitionService;->signupLogger:Lo/TextClassificationManager;

    iput-object p2, p0, Lo/RecognitionService;->stringProvider:Lo/InputBinding;

    .line 43
    sget p1, Lcom/netflix/mediaclient/ui/R$Fragment;->ft:I

    invoke-static {p0, p1}, Lo/NfcV;->d(Landroidx/recyclerview/widget/RecyclerView$Intent;I)Lo/ams;

    move-result-object p1

    iput-object p1, p0, Lo/RecognitionService;->editText$delegate:Lo/ams;

    .line 45
    sget p1, Lcom/netflix/mediaclient/ui/R$Fragment;->hX:I

    invoke-static {p0, p1}, Lo/NfcV;->d(Landroidx/recyclerview/widget/RecyclerView$Intent;I)Lo/ams;

    move-result-object p1

    iput-object p1, p0, Lo/RecognitionService;->inputError$delegate:Lo/ams;

    .line 47
    sget p1, Lcom/netflix/mediaclient/ui/R$Fragment;->hZ:I

    invoke-static {p0, p1}, Lo/NfcV;->d(Landroidx/recyclerview/widget/RecyclerView$Intent;I)Lo/ams;

    move-result-object p1

    iput-object p1, p0, Lo/RecognitionService;->inputLayout$delegate:Lo/ams;

    .line 53
    new-instance p1, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {p1}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object p1, p0, Lo/RecognitionService;->compositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    return-void
.end method

.method public static final synthetic access$getSignupLogger$p(Lo/RecognitionService;)Lo/TextClassificationManager;
    .locals 0

    .line 26
    iget-object p0, p0, Lo/RecognitionService;->signupLogger:Lo/TextClassificationManager;

    return-object p0
.end method

.method public static final synthetic access$provideUxFeedback(Lo/RecognitionService;Lo/AndroidCharacter;Z)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Lo/RecognitionService;->provideUxFeedback(Lo/AndroidCharacter;Z)V

    return-void
.end method

.method private final bindRxListeners(Lo/AndroidCharacter;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 77
    invoke-virtual {p0}, Lo/RecognitionService;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 148
    invoke-static {v0}, Lo/SSLCertificateSocketFactory;->d(Landroid/view/View;)Lo/SntpClient;

    move-result-object v0

    const-string v1, "RxView.focusChanges(this)"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    invoke-virtual {p0}, Lo/RecognitionService;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-static {v1}, Lo/SSLCertificateSocketFactory;->e(Landroid/view/View;)Lio/reactivex/Observable;

    move-result-object v1

    check-cast v1, Lio/reactivex/ObservableSource;

    invoke-virtual {v0, v1}, Lo/SntpClient;->takeUntil(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object v0

    const-wide/16 v1, 0x1

    .line 79
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->skip(J)Lio/reactivex/Observable;

    move-result-object v0

    .line 80
    new-instance v3, Lo/RecognitionService$Application;

    invoke-virtual {p1}, Lo/AndroidCharacter;->getViewType()Lcom/netflix/cl/model/AppView;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lo/RecognitionService$Application;-><init>(Lo/RecognitionService;Lcom/netflix/cl/model/AppView;)V

    check-cast v3, Lio/reactivex/functions/Consumer;

    invoke-virtual {v0, v3}, Lio/reactivex/Observable;->doOnNext(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object v0

    .line 81
    new-instance v3, Lo/RecognitionService$TaskDescription;

    invoke-direct {v3, p0, p1}, Lo/RecognitionService$TaskDescription;-><init>(Lo/RecognitionService;Lo/AndroidCharacter;)V

    check-cast v3, Lio/reactivex/functions/Consumer;

    invoke-virtual {v0, v3}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lo/RecognitionService;->focusChangeDisposable:Lio/reactivex/disposables/Disposable;

    .line 88
    invoke-virtual {p0}, Lo/RecognitionService;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 149
    invoke-static {v0}, Lo/HttpResponseCache;->d(Landroid/widget/TextView;)Lo/SntpClient;

    move-result-object v0

    const-string v3, "RxTextView.textChanges(this)"

    invoke-static {v0, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    invoke-virtual {p0}, Lo/RecognitionService;->getEditText()Landroid/widget/EditText;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-static {v3}, Lo/SSLCertificateSocketFactory;->e(Landroid/view/View;)Lio/reactivex/Observable;

    move-result-object v3

    check-cast v3, Lio/reactivex/ObservableSource;

    invoke-virtual {v0, v3}, Lo/SntpClient;->takeUntil(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object v0

    .line 90
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->skip(J)Lio/reactivex/Observable;

    move-result-object v0

    .line 91
    new-instance v1, Lo/RecognitionService$StateListAnimator;

    invoke-direct {v1, p0, p1}, Lo/RecognitionService$StateListAnimator;-><init>(Lo/RecognitionService;Lo/AndroidCharacter;)V

    check-cast v1, Lio/reactivex/functions/Consumer;

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    iput-object p1, p0, Lo/RecognitionService;->textChangeDisposable:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public static synthetic inputError$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic inputLayout$annotations()V
    .locals 0

    return-void
.end method

.method private final provideUxFeedback(Lo/AndroidCharacter;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)V"
        }
    .end annotation

    .line 102
    invoke-virtual {p1}, Lo/AndroidCharacter;->getShowValidationState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lo/RecognitionService;->signupLogger:Lo/TextClassificationManager;

    new-instance v1, Lcom/netflix/cl/model/event/session/action/ValidateInput;

    invoke-virtual {p1}, Lo/AndroidCharacter;->getInputKind()Lcom/netflix/cl/model/InputKind;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/netflix/cl/model/event/session/action/ValidateInput;-><init>(Lcom/netflix/cl/model/InputKind;)V

    check-cast v1, Lcom/netflix/cl/model/event/session/Session;

    invoke-virtual {v0, v1}, Lo/TextClassificationManager;->b(Lcom/netflix/cl/model/event/session/Session;)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 106
    :goto_0
    iget-object v1, p0, Lo/RecognitionService;->stringProvider:Lo/InputBinding;

    invoke-virtual {p1, v1}, Lo/AndroidCharacter;->getError(Lo/InputBinding;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    .line 108
    :goto_1
    invoke-virtual {p0}, Lo/RecognitionService;->getInputError()Landroid/widget/TextView;

    move-result-object v5

    if-eqz v4, :cond_2

    const/4 v6, 0x0

    goto :goto_2

    :cond_2
    const/16 v6, 0x8

    :goto_2
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 109
    invoke-virtual {p0}, Lo/RecognitionService;->getInputError()Landroid/widget/TextView;

    move-result-object v5

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    invoke-virtual {p1}, Lo/AndroidCharacter;->getInputFieldCharacterLimit()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 113
    invoke-virtual {p0}, Lo/RecognitionService;->getEditText()Landroid/widget/EditText;

    move-result-object v5

    new-array v2, v2, [Landroid/text/InputFilter;

    new-instance v6, Landroid/text/InputFilter$LengthFilter;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {v6, v1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    check-cast v6, Landroid/text/InputFilter;

    aput-object v6, v2, v3

    invoke-virtual {v5, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 116
    :cond_3
    invoke-virtual {p1}, Lo/AndroidCharacter;->getShowValidationState()Z

    move-result v1

    invoke-virtual {p0, v4, v1, p2}, Lo/RecognitionService;->getTextInputLayoutBackgroundRes(ZZZ)I

    move-result p2

    .line 117
    invoke-virtual {p0}, Lo/RecognitionService;->getInputLayout()Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/google/android/material/textfield/TextInputLayout;->setBackgroundResource(I)V

    .line 119
    invoke-virtual {p1}, Lo/AndroidCharacter;->getShowValidationState()Z

    move-result p1

    if-eqz p1, :cond_5

    if-eqz v0, :cond_5

    if-eqz v4, :cond_4

    .line 121
    iget-object p1, p0, Lo/RecognitionService;->signupLogger:Lo/TextClassificationManager;

    invoke-virtual {p1, v0}, Lo/TextClassificationManager;->c(Ljava/lang/Long;)Lcom/netflix/cl/model/event/session/ValidateInputRejected;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 122
    iget-object p2, p0, Lo/RecognitionService;->signupLogger:Lo/TextClassificationManager;

    check-cast p1, Lcom/netflix/cl/model/event/session/SessionEnded;

    invoke-virtual {p2, p1}, Lo/TextClassificationManager;->a(Lcom/netflix/cl/model/event/session/SessionEnded;)Z

    goto :goto_3

    .line 125
    :cond_4
    iget-object p1, p0, Lo/RecognitionService;->signupLogger:Lo/TextClassificationManager;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lo/TextClassificationManager;->b(J)Z

    :cond_5
    :goto_3
    return-void
.end method


# virtual methods
.method public bind(Lo/AndroidCharacter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    const-string v0, "viewModel"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lo/RecognitionService;->focusChangeDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 58
    :cond_0
    iget-object v0, p0, Lo/RecognitionService;->textChangeDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 60
    :cond_1
    invoke-virtual {p0}, Lo/RecognitionService;->getInputLayout()Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v0

    iget-object v1, p0, Lo/RecognitionService;->stringProvider:Lo/InputBinding;

    invoke-virtual {p1, v1}, Lo/AndroidCharacter;->getHint(Lo/InputBinding;)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    .line 61
    invoke-virtual {p0}, Lo/RecognitionService;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {p1}, Lo/AndroidCharacter;->getInputType()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 63
    invoke-virtual {p0}, Lo/RecognitionService;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 65
    invoke-virtual {p0}, Lo/RecognitionService;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {p1}, Lo/AndroidCharacter;->getUserFacingString()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    .line 67
    invoke-direct {p0, p1, v0}, Lo/RecognitionService;->provideUxFeedback(Lo/AndroidCharacter;Z)V

    .line 69
    invoke-direct {p0, p1}, Lo/RecognitionService;->bindRxListeners(Lo/AndroidCharacter;)V

    return-void
.end method

.method public final clearDisposables()V
    .locals 1

    .line 73
    iget-object v0, p0, Lo/RecognitionService;->compositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->dispose()V

    return-void
.end method

.method protected final getCompositeDisposable()Lio/reactivex/disposables/CompositeDisposable;
    .locals 1

    .line 53
    iget-object v0, p0, Lo/RecognitionService;->compositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    return-object v0
.end method

.method public final getEditText()Landroid/widget/EditText;
    .locals 3

    iget-object v0, p0, Lo/RecognitionService;->editText$delegate:Lo/ams;

    sget-object v1, Lo/RecognitionService;->$$delegatedProperties:[Lo/amT;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    return-object v0
.end method

.method public final getInputError()Landroid/widget/TextView;
    .locals 3

    iget-object v0, p0, Lo/RecognitionService;->inputError$delegate:Lo/ams;

    sget-object v1, Lo/RecognitionService;->$$delegatedProperties:[Lo/amT;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public final getInputLayout()Lcom/google/android/material/textfield/TextInputLayout;
    .locals 3

    iget-object v0, p0, Lo/RecognitionService;->inputLayout$delegate:Lo/ams;

    sget-object v1, Lo/RecognitionService;->$$delegatedProperties:[Lo/amT;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    return-object v0
.end method

.method public getTextInputLayoutBackgroundRes(ZZZ)I
    .locals 1

    .line 98
    sget-object v0, Lo/RecognitionService;->Companion:Lo/RecognitionService$Activity;

    invoke-virtual {v0, p1, p2, p3}, Lo/RecognitionService$Activity;->b(ZZZ)I

    move-result p1

    return p1
.end method
