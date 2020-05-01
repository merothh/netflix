.class public final Lcom/netflix/mediaclient/acquisition2/components/form2/maturityPinEntry/MaturityPinEntry;
.super Lo/BaseMovementMethod;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/mediaclient/acquisition2/components/form2/maturityPinEntry/MaturityPinEntry$Application;
    }
.end annotation


# static fields
.field static final synthetic b:[Lo/amT;

.field public static final e:Lcom/netflix/mediaclient/acquisition2/components/form2/maturityPinEntry/MaturityPinEntry$Application;


# instance fields
.field private final c:Lo/ams;

.field private final d:Lo/ams;

.field private final f:Lo/aka;

.field private final g:Lo/ams;

.field private h:Lo/AllCapsTransformationMethod;

.field private final i:Lo/ams;

.field private final j:Lo/ams;

.field public keyboardController:Lo/GateKeeperResponse;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lcom/netflix/mediaclient/acquisition2/components/form2/maturityPinEntry/MaturityPinEntry;

    const/4 v1, 0x5

    new-array v1, v1, [Lo/amT;

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "slot1"

    const-string v5, "getSlot1()Landroid/widget/EditText;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "slot2"

    const-string v5, "getSlot2()Landroid/widget/EditText;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "slot3"

    const-string v5, "getSlot3()Landroid/widget/EditText;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "slot4"

    const-string v5, "getSlot4()Landroid/widget/EditText;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v0

    const-string v3, "pinErrorText"

    const-string v4, "getPinErrorText()Landroid/view/View;"

    invoke-direct {v2, v0, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v0

    check-cast v0, Lo/amT;

    const/4 v2, 0x4

    aput-object v0, v1, v2

    sput-object v1, Lcom/netflix/mediaclient/acquisition2/components/form2/maturityPinEntry/MaturityPinEntry;->b:[Lo/amT;

    new-instance v0, Lcom/netflix/mediaclient/acquisition2/components/form2/maturityPinEntry/MaturityPinEntry$Application;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/acquisition2/components/form2/maturityPinEntry/MaturityPinEntry$Application;-><init>(Lo/amc;)V

    sput-object v0, Lcom/netflix/mediaclient/acquisition2/components/form2/maturityPinEntry/MaturityPinEntry;->e:Lcom/netflix/mediaclient/acquisition2/components/form2/maturityPinEntry/MaturityPinEntry$Application;

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

    invoke-direct/range {v0 .. v6}, Lcom/netflix/mediaclient/acquisition2/components/form2/maturityPinEntry/MaturityPinEntry;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILo/amc;)V

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

    invoke-direct/range {v0 .. v6}, Lcom/netflix/mediaclient/acquisition2/components/form2/maturityPinEntry/MaturityPinEntry;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILo/amc;)V

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

    invoke-direct/range {v0 .. v6}, Lcom/netflix/mediaclient/acquisition2/components/form2/maturityPinEntry/MaturityPinEntry;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILo/amc;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-direct {p0, p1, p2, p3, p4}, Lo/BaseMovementMethod;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 31
    sget p2, Lcom/netflix/mediaclient/ui/R$Fragment;->rN:I

    invoke-static {p0, p2}, Lo/NfcV;->a(Landroid/view/View;I)Lo/ams;

    move-result-object p2

    iput-object p2, p0, Lcom/netflix/mediaclient/acquisition2/components/form2/maturityPinEntry/MaturityPinEntry;->d:Lo/ams;

    .line 32
    sget p2, Lcom/netflix/mediaclient/ui/R$Fragment;->rO:I

    invoke-static {p0, p2}, Lo/NfcV;->a(Landroid/view/View;I)Lo/ams;

    move-result-object p2

    iput-object p2, p0, Lcom/netflix/mediaclient/acquisition2/components/form2/maturityPinEntry/MaturityPinEntry;->c:Lo/ams;

    .line 33
    sget p2, Lcom/netflix/mediaclient/ui/R$Fragment;->rR:I

    invoke-static {p0, p2}, Lo/NfcV;->a(Landroid/view/View;I)Lo/ams;

    move-result-object p2

    iput-object p2, p0, Lcom/netflix/mediaclient/acquisition2/components/form2/maturityPinEntry/MaturityPinEntry;->j:Lo/ams;

    .line 34
    sget p2, Lcom/netflix/mediaclient/ui/R$Fragment;->rW:I

    invoke-static {p0, p2}, Lo/NfcV;->a(Landroid/view/View;I)Lo/ams;

    move-result-object p2

    iput-object p2, p0, Lcom/netflix/mediaclient/acquisition2/components/form2/maturityPinEntry/MaturityPinEntry;->i:Lo/ams;

    .line 35
    sget p2, Lcom/netflix/mediaclient/ui/R$Fragment;->me:I

    invoke-static {p0, p2}, Lo/NfcV;->a(Landroid/view/View;I)Lo/ams;

    move-result-object p2

    iput-object p2, p0, Lcom/netflix/mediaclient/acquisition2/components/form2/maturityPinEntry/MaturityPinEntry;->g:Lo/ams;

    .line 44
    new-instance p2, Lcom/netflix/mediaclient/acquisition2/components/form2/maturityPinEntry/MaturityPinEntry$nextMap$2;

    invoke-direct {p2, p0}, Lcom/netflix/mediaclient/acquisition2/components/form2/maturityPinEntry/MaturityPinEntry$nextMap$2;-><init>(Lcom/netflix/mediaclient/acquisition2/components/form2/maturityPinEntry/MaturityPinEntry;)V

    check-cast p2, Lo/alB;

    invoke-static {p2}, Lo/akd;->a(Lo/alB;)Lo/aka;

    move-result-object p2

    iput-object p2, p0, Lcom/netflix/mediaclient/acquisition2/components/form2/maturityPinEntry/MaturityPinEntry;->f:Lo/aka;

    .line 56
    sget p2, Lcom/netflix/mediaclient/ui/R$Dialog;->br:I

    move-object p3, p0

    check-cast p3, Landroid/view/ViewGroup;

    invoke-static {p1, p2, p3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const/4 p1, 0x1

    .line 57
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/acquisition2/components/form2/maturityPinEntry/MaturityPinEntry;->setOrientation(I)V

    const/4 p2, 0x4

    new-array p2, p2, [Landroid/widget/EditText;

    .line 59
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/components/form2/maturityPinEntry/MaturityPinEntry;->h()Landroid/widget/EditText;

    move-result-object p3

    const/4 p4, 0x0

    aput-object p3, p2, p4

    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/components/form2/maturityPinEntry/MaturityPinEntry;->j()Landroid/widget/EditText;

    move-result-object p3

    aput-object p3, p2, p1

    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/components/form2/maturityPinEntry/MaturityPinEntry;->g()Landroid/widget/EditText;

    move-result-object p1

    const/4 p3, 0x2

    aput-object p1, p2, p3

    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/components/form2/maturityPinEntry/MaturityPinEntry;->f()Landroid/widget/EditText;

    move-result-object p1

    const/4 p3, 0x3

    aput-object p1, p2, p3

    invoke-static {p2}, Lo/akz;->e([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 146
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    const-string p3, "0"

    .line 60
    check-cast p3, Ljava/lang/CharSequence;

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 61
    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/acquisition2/components/form2/maturityPinEntry/MaturityPinEntry;->d(Landroid/widget/EditText;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILo/amc;)V
    .locals 1

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    const/4 p2, 0x0

    .line 26
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

    .line 28
    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/netflix/mediaclient/acquisition2/components/form2/maturityPinEntry/MaturityPinEntry;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public static final synthetic a(Lcom/netflix/mediaclient/acquisition2/components/form2/maturityPinEntry/MaturityPinEntry;)Landroid/widget/EditText;
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/components/form2/maturityPinEntry/MaturityPinEntry;->f()Landroid/widget/EditText;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic b(Lcom/netflix/mediaclient/acquisition2/components/form2/maturityPinEntry/MaturityPinEntry;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/components/form2/maturityPinEntry/MaturityPinEntry;->m()V

    return-void
.end method

.method public static final synthetic c(Lcom/netflix/mediaclient/acquisition2/components/form2/maturityPinEntry/MaturityPinEntry;)Landroid/widget/EditText;
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/components/form2/maturityPinEntry/MaturityPinEntry;->g()Landroid/widget/EditText;

    move-result-object p0

    return-object p0
.end method

.method private final c(Z)V
    .locals 3

    if-eqz p1, :cond_0

    .line 134
    sget p1, Lcom/netflix/mediaclient/ui/R$Activity;->ci:I

    goto :goto_0

    :cond_0
    sget p1, Lcom/netflix/mediaclient/ui/R$Activity;->cf:I

    :goto_0
    const/4 v0, 0x4

    new-array v0, v0, [Landroid/widget/EditText;

    const/4 v1, 0x0

    .line 135
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/components/form2/maturityPinEntry/MaturityPinEntry;->h()Landroid/widget/EditText;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/components/form2/maturityPinEntry/MaturityPinEntry;->j()Landroid/widget/EditText;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/components/form2/maturityPinEntry/MaturityPinEntry;->g()Landroid/widget/EditText;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/components/form2/maturityPinEntry/MaturityPinEntry;->f()Landroid/widget/EditText;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lo/akz;->e([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 136
    check-cast v0, Ljava/lang/Iterable;

    .line 144
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 137
    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setBackgroundResource(I)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public static final synthetic d(Lcom/netflix/mediaclient/acquisition2/components/form2/maturityPinEntry/MaturityPinEntry;)Landroid/widget/EditText;
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/components/form2/maturityPinEntry/MaturityPinEntry;->h()Landroid/widget/EditText;

    move-result-object p0

    return-object p0
.end method

.method private final d(Landroid/widget/EditText;)V
    .locals 3

    .line 94
    move-object v0, p1

    check-cast v0, Landroid/view/View;

    .line 143
    invoke-static {v0}, Lo/SSLCertificateSocketFactory;->d(Landroid/view/View;)Lo/SntpClient;

    move-result-object v1

    const-string v2, "RxView.focusChanges(this)"

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    invoke-static {v0}, Lo/SSLCertificateSocketFactory;->e(Landroid/view/View;)Lio/reactivex/Observable;

    move-result-object v0

    check-cast v0, Lio/reactivex/ObservableSource;

    invoke-virtual {v1, v0}, Lo/SntpClient;->takeUntil(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object v0

    .line 96
    new-instance v1, Lcom/netflix/mediaclient/acquisition2/components/form2/maturityPinEntry/MaturityPinEntry$TaskDescription;

    invoke-direct {v1, p1}, Lcom/netflix/mediaclient/acquisition2/components/form2/maturityPinEntry/MaturityPinEntry$TaskDescription;-><init>(Landroid/widget/EditText;)V

    check-cast v1, Lio/reactivex/functions/Consumer;

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    .line 102
    new-instance v0, Lcom/netflix/mediaclient/acquisition2/components/form2/maturityPinEntry/MaturityPinEntry$Activity;

    invoke-direct {v0, p0, p1}, Lcom/netflix/mediaclient/acquisition2/components/form2/maturityPinEntry/MaturityPinEntry$Activity;-><init>(Lcom/netflix/mediaclient/acquisition2/components/form2/maturityPinEntry/MaturityPinEntry;Landroid/widget/EditText;)V

    .line 130
    check-cast v0, Landroid/text/TextWatcher;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public static final synthetic e(Lcom/netflix/mediaclient/acquisition2/components/form2/maturityPinEntry/MaturityPinEntry;)Landroid/widget/EditText;
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/components/form2/maturityPinEntry/MaturityPinEntry;->j()Landroid/widget/EditText;

    move-result-object p0

    return-object p0
.end method

.method private final f()Landroid/widget/EditText;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/components/form2/maturityPinEntry/MaturityPinEntry;->i:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/components/form2/maturityPinEntry/MaturityPinEntry;->b:[Lo/amT;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    return-object v0
.end method

.method private final g()Landroid/widget/EditText;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/components/form2/maturityPinEntry/MaturityPinEntry;->j:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/components/form2/maturityPinEntry/MaturityPinEntry;->b:[Lo/amT;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    return-object v0
.end method

.method private final h()Landroid/widget/EditText;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/components/form2/maturityPinEntry/MaturityPinEntry;->d:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/components/form2/maturityPinEntry/MaturityPinEntry;->b:[Lo/amT;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    return-object v0
.end method

.method private final i()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/components/form2/maturityPinEntry/MaturityPinEntry;->g:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/components/form2/maturityPinEntry/MaturityPinEntry;->b:[Lo/amT;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method private final j()Landroid/widget/EditText;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/components/form2/maturityPinEntry/MaturityPinEntry;->c:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/components/form2/maturityPinEntry/MaturityPinEntry;->b:[Lo/amT;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    return-object v0
.end method

.method private final l()Ljava/lang/String;
    .locals 2

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/components/form2/maturityPinEntry/MaturityPinEntry;->h()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/components/form2/maturityPinEntry/MaturityPinEntry;->j()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/components/form2/maturityPinEntry/MaturityPinEntry;->g()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/components/form2/maturityPinEntry/MaturityPinEntry;->f()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final m()V
    .locals 4

    .line 81
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/components/form2/maturityPinEntry/MaturityPinEntry;->l()Ljava/lang/String;

    move-result-object v0

    .line 82
    iget-object v1, p0, Lcom/netflix/mediaclient/acquisition2/components/form2/maturityPinEntry/MaturityPinEntry;->h:Lo/AllCapsTransformationMethod;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lo/AllCapsTransformationMethod;->b()Lo/DynamicLayout;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1, v0}, Lo/DynamicLayout;->b(Ljava/lang/Object;)V

    .line 83
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 84
    :goto_0
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/acquisition2/components/form2/maturityPinEntry/MaturityPinEntry;->c(Z)V

    .line 85
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/components/form2/maturityPinEntry/MaturityPinEntry;->i()Landroid/view/View;

    move-result-object v3

    if-eqz v0, :cond_2

    const/4 v1, 0x4

    :cond_2
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public final a(Lo/AllCapsTransformationMethod;)V
    .locals 2

    .line 66
    invoke-super {p0}, Lo/BaseMovementMethod;->d()V

    .line 68
    iput-object p1, p0, Lcom/netflix/mediaclient/acquisition2/components/form2/maturityPinEntry/MaturityPinEntry;->h:Lo/AllCapsTransformationMethod;

    if-eqz p1, :cond_0

    .line 69
    invoke-virtual {p1}, Lo/AllCapsTransformationMethod;->b()Lo/DynamicLayout;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lo/DynamicLayout;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 70
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 71
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/components/form2/maturityPinEntry/MaturityPinEntry;->h()Landroid/widget/EditText;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 72
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/components/form2/maturityPinEntry/MaturityPinEntry;->j()Landroid/widget/EditText;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 73
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/components/form2/maturityPinEntry/MaturityPinEntry;->g()Landroid/widget/EditText;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 74
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/components/form2/maturityPinEntry/MaturityPinEntry;->f()Landroid/widget/EditText;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 76
    :cond_1
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/components/form2/maturityPinEntry/MaturityPinEntry;->m()V

    :goto_1
    return-void
.end method

.method public final c()Lo/GateKeeperResponse;
    .locals 2

    .line 38
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/components/form2/maturityPinEntry/MaturityPinEntry;->keyboardController:Lo/GateKeeperResponse;

    if-nez v0, :cond_0

    const-string v1, "keyboardController"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final e()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Landroid/widget/EditText;",
            "Landroid/widget/EditText;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/components/form2/maturityPinEntry/MaturityPinEntry;->f:Lo/aka;

    invoke-interface {v0}, Lo/aka;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method public final setKeyboardController(Lo/GateKeeperResponse;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    iput-object p1, p0, Lcom/netflix/mediaclient/acquisition2/components/form2/maturityPinEntry/MaturityPinEntry;->keyboardController:Lo/GateKeeperResponse;

    return-void
.end method
