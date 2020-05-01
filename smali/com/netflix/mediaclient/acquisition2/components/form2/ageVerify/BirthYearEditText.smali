.class public final Lcom/netflix/mediaclient/acquisition2/components/form2/ageVerify/BirthYearEditText;
.super Lo/Html;
.source ""


# static fields
.field static final synthetic b:[Lo/amT;


# instance fields
.field private final a:Lo/ams;

.field private final e:Lo/ams;

.field public stringProvider:Lo/InputBinding;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lcom/netflix/mediaclient/acquisition2/components/form2/ageVerify/BirthYearEditText;

    const/4 v1, 0x2

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

    move-result-object v0

    const-string v3, "inputLayout"

    const-string v4, "getInputLayout()Lcom/google/android/material/textfield/TextInputLayout;"

    invoke-direct {v2, v0, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v0

    check-cast v0, Lo/amT;

    const/4 v2, 0x1

    aput-object v0, v1, v2

    sput-object v1, Lcom/netflix/mediaclient/acquisition2/components/form2/ageVerify/BirthYearEditText;->b:[Lo/amT;

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

    invoke-direct/range {v0 .. v6}, Lcom/netflix/mediaclient/acquisition2/components/form2/ageVerify/BirthYearEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILo/amc;)V

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

    invoke-direct/range {v0 .. v6}, Lcom/netflix/mediaclient/acquisition2/components/form2/ageVerify/BirthYearEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILo/amc;)V

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

    invoke-direct/range {v0 .. v6}, Lcom/netflix/mediaclient/acquisition2/components/form2/ageVerify/BirthYearEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILo/amc;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-direct {p0, p1, p2, p3, p4}, Lo/Html;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 27
    sget p2, Lcom/netflix/mediaclient/ui/R$Fragment;->ft:I

    invoke-static {p0, p2}, Lo/NfcV;->a(Landroid/view/View;I)Lo/ams;

    move-result-object p2

    iput-object p2, p0, Lcom/netflix/mediaclient/acquisition2/components/form2/ageVerify/BirthYearEditText;->e:Lo/ams;

    .line 33
    sget p2, Lcom/netflix/mediaclient/ui/R$Fragment;->hZ:I

    invoke-static {p0, p2}, Lo/NfcV;->a(Landroid/view/View;I)Lo/ams;

    move-result-object p2

    iput-object p2, p0, Lcom/netflix/mediaclient/acquisition2/components/form2/ageVerify/BirthYearEditText;->a:Lo/ams;

    .line 36
    sget p2, Lcom/netflix/mediaclient/ui/R$Dialog;->bp:I

    move-object p3, p0

    check-cast p3, Landroid/view/ViewGroup;

    invoke-static {p1, p2, p3}, Lo/Html;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const/4 p1, 0x1

    .line 37
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/acquisition2/components/form2/ageVerify/BirthYearEditText;->setOrientation(I)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILo/amc;)V
    .locals 1

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    const/4 p2, 0x0

    .line 22
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

    .line 24
    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/netflix/mediaclient/acquisition2/components/form2/ageVerify/BirthYearEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method private final e()Landroid/widget/EditText;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/components/form2/ageVerify/BirthYearEditText;->e:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/components/form2/ageVerify/BirthYearEditText;->b:[Lo/amT;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/google/android/material/textfield/TextInputLayout;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/components/form2/ageVerify/BirthYearEditText;->a:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/components/form2/ageVerify/BirthYearEditText;->b:[Lo/amT;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    return-object v0
.end method

.method public final d(Lo/Hyphenator;Lo/GraphicsOperations;)V
    .locals 3

    .line 41
    invoke-super {p0}, Lo/Html;->c()V

    .line 42
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/components/form2/ageVerify/BirthYearEditText;->a()Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/acquisition2/components/form2/ageVerify/BirthYearEditText;->stringProvider:Lo/InputBinding;

    if-nez v1, :cond_0

    const-string v2, "stringProvider"

    invoke-static {v2}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    sget v2, Lcom/netflix/mediaclient/ui/R$AssistContent;->rK:I

    invoke-virtual {v1, v2}, Lo/InputBinding;->c(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    .line 43
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/components/form2/ageVerify/BirthYearEditText;->e()Landroid/widget/EditText;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/acquisition2/components/form2/ageVerify/BirthYearEditText$Application;

    invoke-direct {v1, p1, p2}, Lcom/netflix/mediaclient/acquisition2/components/form2/ageVerify/BirthYearEditText$Application;-><init>(Lo/Hyphenator;Lo/GraphicsOperations;)V

    check-cast v1, Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public final setStringProvider(Lo/InputBinding;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    iput-object p1, p0, Lcom/netflix/mediaclient/acquisition2/components/form2/ageVerify/BirthYearEditText;->stringProvider:Lo/InputBinding;

    return-void
.end method

.method public final setValidationState(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 58
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/components/form2/ageVerify/BirthYearEditText;->a()Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object p1

    sget v0, Lcom/netflix/mediaclient/ui/R$Activity;->cM:I

    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setBackgroundResource(I)V

    goto :goto_0

    .line 60
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/components/form2/ageVerify/BirthYearEditText;->a()Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object p1

    sget v0, Lcom/netflix/mediaclient/ui/R$Activity;->cJ:I

    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setBackgroundResource(I)V

    :goto_0
    return-void
.end method
