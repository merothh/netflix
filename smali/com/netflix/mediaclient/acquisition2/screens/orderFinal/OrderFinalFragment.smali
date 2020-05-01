.class public final Lcom/netflix/mediaclient/acquisition2/screens/orderFinal/OrderFinalFragment;
.super Lo/TimingLogger;
.source ""


# static fields
.field static final synthetic a:[Lo/amT;


# instance fields
.field private final A:Lo/ams;

.field private final B:Lo/ams;

.field private final C:Lo/ams;

.field private final D:Lo/ams;

.field private E:Ljava/util/HashMap;

.field public b:Lo/Xml;

.field private final d:Lcom/netflix/cl/model/AppView;

.field private final e:Ljava/lang/String;

.field private final f:Lo/ams;

.field private final g:Lo/ams;

.field private final h:Lo/ams;

.field private final i:Lo/ams;

.field private final j:Lo/ams;

.field private final k:Lo/ams;

.field private final l:Lo/ams;

.field private final m:Lo/ams;

.field private final n:Lo/ams;

.field private final o:Lo/ams;

.field private final p:Lo/ams;

.field private final q:Lo/ams;

.field private final r:Lo/ams;

.field private final s:Lo/ams;

.field private final t:Lo/ams;

.field private final u:Lo/ams;

.field private final v:Lo/ams;

.field public viewModelInitializer:Lo/ApkSigningBlockUtils;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private final w:Lo/ams;

.field private final x:Lo/ams;

.field private final y:Lo/ams;

.field private final z:Lo/ams;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lcom/netflix/mediaclient/acquisition2/screens/orderFinal/OrderFinalFragment;

    const/16 v1, 0x19

    new-array v1, v1, [Lo/amT;

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "title"

    const-string v5, "getTitle()Landroid/widget/TextView;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "signupConfirmationMessage"

    const-string v5, "getSignupConfirmationMessage()Landroid/widget/TextView;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "autoContinueMessage"

    const-string v5, "getAutoContinueMessage()Landroid/widget/TextView;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "directDebitMessage"

    const-string v5, "getDirectDebitMessage()Landroid/widget/TextView;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "ctaButton"

    const-string v5, "getCtaButton()Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x4

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "emailSection"

    const-string v5, "getEmailSection()Landroid/view/View;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x5

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "emailValue"

    const-string v5, "getEmailValue()Landroid/widget/TextView;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x6

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "paymentInformationSection"

    const-string v5, "getPaymentInformationSection()Landroid/view/View;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x7

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "paymentInformationValue"

    const-string v5, "getPaymentInformationValue()Landroid/widget/TextView;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/16 v3, 0x8

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "planSection"

    const-string v5, "getPlanSection()Landroid/view/View;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/16 v3, 0x9

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "planName"

    const-string v5, "getPlanName()Landroid/widget/TextView;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/16 v3, 0xa

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "planPrice"

    const-string v5, "getPlanPrice()Landroid/widget/TextView;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/16 v3, 0xb

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "giftSection"

    const-string v5, "getGiftSection()Landroid/view/View;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/16 v3, 0xc

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "giftValue"

    const-string v5, "getGiftValue()Landroid/widget/TextView;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/16 v3, 0xd

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "nameSection"

    const-string v5, "getNameSection()Landroid/view/View;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/16 v3, 0xe

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "nameValue"

    const-string v5, "getNameValue()Landroid/widget/TextView;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/16 v3, 0xf

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "addressSection"

    const-string v5, "getAddressSection()Landroid/view/View;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/16 v3, 0x10

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "addressValue"

    const-string v5, "getAddressValue()Landroid/widget/TextView;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/16 v3, 0x11

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "accountNumberSection"

    const-string v5, "getAccountNumberSection()Landroid/view/View;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/16 v3, 0x12

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "accountNumberValue"

    const-string v5, "getAccountNumberValue()Landroid/widget/TextView;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/16 v3, 0x13

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "phoneEditText"

    const-string v5, "getPhoneEditText()Landroid/widget/EditText;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/16 v3, 0x14

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "countryFlagPicker"

    const-string v5, "getCountryFlagPicker()Lcom/netflix/mediaclient/acquisition/view/CountryFlagPicker;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/16 v3, 0x15

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "phoneBodyText"

    const-string v5, "getPhoneBodyText()Landroid/widget/TextView;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/16 v3, 0x16

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "smsCheckboxSection"

    const-string v5, "getSmsCheckboxSection()Landroid/view/View;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/16 v3, 0x17

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v0

    const-string v3, "smsConsentCheckbox"

    const-string v4, "getSmsConsentCheckbox()Landroid/widget/CheckBox;"

    invoke-direct {v2, v0, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v0

    check-cast v0, Lo/amT;

    const/16 v2, 0x18

    aput-object v0, v1, v2

    sput-object v1, Lcom/netflix/mediaclient/acquisition2/screens/orderFinal/OrderFinalFragment;->a:[Lo/amT;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Lo/TimingLogger;-><init>()V

    const-string v0, "orderFinal"

    .line 32
    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/orderFinal/OrderFinalFragment;->e:Ljava/lang/String;

    .line 33
    sget-object v0, Lcom/netflix/cl/model/AppView;->orderFinal:Lcom/netflix/cl/model/AppView;

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/orderFinal/OrderFinalFragment;->d:Lcom/netflix/cl/model/AppView;

    .line 36
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->tq:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/orderFinal/OrderFinalFragment;->j:Lo/ams;

    .line 39
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->rz:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/orderFinal/OrderFinalFragment;->g:Lo/ams;

    .line 42
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->D:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/orderFinal/OrderFinalFragment;->h:Lo/ams;

    .line 45
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->eT:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/orderFinal/OrderFinalFragment;->f:Lo/ams;

    .line 48
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->cY:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/orderFinal/OrderFinalFragment;->i:Lo/ams;

    .line 51
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->fB:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/orderFinal/OrderFinalFragment;->m:Lo/ams;

    .line 54
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->fx:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/orderFinal/OrderFinalFragment;->k:Lo/ams;

    .line 57
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->lV:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/orderFinal/OrderFinalFragment;->l:Lo/ams;

    .line 60
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->lW:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/orderFinal/OrderFinalFragment;->n:Lo/ams;

    .line 63
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->my:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/orderFinal/OrderFinalFragment;->o:Lo/ams;

    .line 66
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->mz:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/orderFinal/OrderFinalFragment;->r:Lo/ams;

    .line 69
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->mB:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/orderFinal/OrderFinalFragment;->p:Lo/ams;

    .line 72
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->he:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/orderFinal/OrderFinalFragment;->s:Lo/ams;

    .line 75
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->hg:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/orderFinal/OrderFinalFragment;->q:Lo/ams;

    .line 78
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->lc:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/orderFinal/OrderFinalFragment;->t:Lo/ams;

    .line 81
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->le:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/orderFinal/OrderFinalFragment;->w:Lo/ams;

    .line 84
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->o:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/orderFinal/OrderFinalFragment;->v:Lo/ams;

    .line 87
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->m:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/orderFinal/OrderFinalFragment;->y:Lo/ams;

    .line 90
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->e:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/orderFinal/OrderFinalFragment;->x:Lo/ams;

    .line 93
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->b:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/orderFinal/OrderFinalFragment;->u:Lo/ams;

    .line 96
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->ma:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/orderFinal/OrderFinalFragment;->D:Lo/ams;

    .line 99
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->cU:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/orderFinal/OrderFinalFragment;->B:Lo/ams;

    .line 102
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->md:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/orderFinal/OrderFinalFragment;->C:Lo/ams;

    .line 105
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->rV:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/orderFinal/OrderFinalFragment;->A:Lo/ams;

    .line 108
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->rU:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/orderFinal/OrderFinalFragment;->z:Lo/ams;

    return-void
.end method

.method private final J()V
    .locals 2

    .line 130
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/orderFinal/OrderFinalFragment;->k()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/orderFinal/OrderFinalFragment;->c()Lo/Xml;

    move-result-object v1

    invoke-virtual {v1}, Lo/Xml;->h()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/acquisition/kotlinx/TextViewKt;->setTextOrGone(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 131
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/orderFinal/OrderFinalFragment;->n()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/orderFinal/OrderFinalFragment;->c()Lo/Xml;

    move-result-object v1

    invoke-virtual {v1}, Lo/Xml;->i()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/acquisition/kotlinx/TextViewKt;->setTextOrGone(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 132
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/orderFinal/OrderFinalFragment;->o()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/orderFinal/OrderFinalFragment;->c()Lo/Xml;

    move-result-object v1

    invoke-virtual {v1}, Lo/Xml;->n()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/acquisition/kotlinx/TextViewKt;->setTextOrGone(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 133
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/orderFinal/OrderFinalFragment;->m()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/orderFinal/OrderFinalFragment;->c()Lo/Xml;

    move-result-object v1

    invoke-virtual {v1}, Lo/Xml;->m()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/acquisition/kotlinx/TextViewKt;->setTextOrGone(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    return-void
.end method

.method private final K()V
    .locals 3

    .line 137
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/orderFinal/OrderFinalFragment;->c()Lo/Xml;

    move-result-object v0

    invoke-virtual {v0}, Lo/Xml;->G()Lo/Cloneable;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Lo/UnicodeScript;

    new-instance v2, Lcom/netflix/mediaclient/acquisition2/screens/orderFinal/OrderFinalFragment$StateListAnimator;

    invoke-direct {v2, p0}, Lcom/netflix/mediaclient/acquisition2/screens/orderFinal/OrderFinalFragment$StateListAnimator;-><init>(Lcom/netflix/mediaclient/acquisition2/screens/orderFinal/OrderFinalFragment;)V

    check-cast v2, Lo/ClassFormatError;

    invoke-virtual {v0, v1, v2}, Lo/Cloneable;->a(Lo/UnicodeScript;Lo/ClassFormatError;)V

    .line 140
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/orderFinal/OrderFinalFragment;->c()Lo/Xml;

    move-result-object v0

    invoke-virtual {v0}, Lo/Xml;->I()V

    .line 141
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/orderFinal/OrderFinalFragment;->G()Lcom/netflix/mediaclient/acquisition/view/CountryFlagPicker;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/acquisition2/screens/orderFinal/OrderFinalFragment$Activity;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/acquisition2/screens/orderFinal/OrderFinalFragment$Activity;-><init>(Lcom/netflix/mediaclient/acquisition2/screens/orderFinal/OrderFinalFragment;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/acquisition/view/CountryFlagPicker;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/orderFinal/OrderFinalFragment;->E()Landroid/widget/EditText;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/acquisition2/screens/orderFinal/OrderFinalFragment$ActionBar;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/acquisition2/screens/orderFinal/OrderFinalFragment$ActionBar;-><init>(Lcom/netflix/mediaclient/acquisition2/screens/orderFinal/OrderFinalFragment;)V

    check-cast v1, Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 157
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/orderFinal/OrderFinalFragment;->H()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/orderFinal/OrderFinalFragment;->c()Lo/Xml;

    move-result-object v1

    invoke-virtual {v1}, Lo/Xml;->A()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/orderFinal/OrderFinalFragment;->c()Lo/Xml;

    move-result-object v0

    invoke-virtual {v0}, Lo/Xml;->F()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/orderFinal/OrderFinalFragment;->F()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 161
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/orderFinal/OrderFinalFragment;->M()Landroid/widget/CheckBox;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/acquisition2/screens/orderFinal/OrderFinalFragment$TaskDescription;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/acquisition2/screens/orderFinal/OrderFinalFragment$TaskDescription;-><init>(Lcom/netflix/mediaclient/acquisition2/screens/orderFinal/OrderFinalFragment;)V

    check-cast v1, Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_0
    return-void
.end method

.method private final L()V
    .locals 5

    .line 168
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/orderFinal/OrderFinalFragment;->c()Lo/Xml;

    move-result-object v0

    invoke-virtual {v0}, Lo/Xml;->D()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 170
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/orderFinal/OrderFinalFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 172
    move-object v2, v0

    check-cast v2, [Ljava/lang/CharSequence;

    const/4 v3, -0x1

    .line 174
    new-instance v4, Lcom/netflix/mediaclient/acquisition2/screens/orderFinal/OrderFinalFragment$PendingIntent;

    invoke-direct {v4, v0, p0, v0}, Lcom/netflix/mediaclient/acquisition2/screens/orderFinal/OrderFinalFragment$PendingIntent;-><init>([Ljava/lang/String;Lcom/netflix/mediaclient/acquisition2/screens/orderFinal/OrderFinalFragment;[Ljava/lang/String;)V

    check-cast v4, Landroid/content/DialogInterface$OnClickListener;

    .line 171
    invoke-virtual {v1, v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 179
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 180
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 181
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    :cond_0
    return-void
.end method

.method private final N()V
    .locals 3

    .line 190
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/orderFinal/OrderFinalFragment;->c()Lo/Xml;

    move-result-object v0

    invoke-virtual {v0}, Lo/Xml;->p()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 191
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/orderFinal/OrderFinalFragment;->t()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 192
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/orderFinal/OrderFinalFragment;->p()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/orderFinal/OrderFinalFragment;->c()Lo/Xml;

    move-result-object v2

    invoke-virtual {v2}, Lo/Xml;->o()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 195
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/orderFinal/OrderFinalFragment;->c()Lo/Xml;

    move-result-object v0

    invoke-virtual {v0}, Lo/Xml;->t()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 196
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/orderFinal/OrderFinalFragment;->r()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 197
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/orderFinal/OrderFinalFragment;->s()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/orderFinal/OrderFinalFragment;->c()Lo/Xml;

    move-result-object v2

    invoke-virtual {v2}, Lo/Xml;->q()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 200
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/orderFinal/OrderFinalFragment;->c()Lo/Xml;

    move-result-object v0

    invoke-virtual {v0}, Lo/Xml;->u()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 201
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/orderFinal/OrderFinalFragment;->x()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 202
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/orderFinal/OrderFinalFragment;->w()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/orderFinal/OrderFinalFragment;->c()Lo/Xml;

    move-result-object v2

    invoke-virtual {v2}, Lo/Xml;->r()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 203
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/orderFinal/OrderFinalFragment;->u()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/orderFinal/OrderFinalFragment;->c()Lo/Xml;

    move-result-object v2

    invoke-virtual {v2}, Lo/Xml;->s()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 206
    :cond_2
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/orderFinal/OrderFinalFragment;->c()Lo/Xml;

    move-result-object v0

    invoke-virtual {v0}, Lo/Xml;->l()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 207
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/orderFinal/OrderFinalFragment;->y()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 208
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/orderFinal/OrderFinalFragment;->v()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/orderFinal/OrderFinalFragment;->c()Lo/Xml;

    move-result-object v2

    invoke-virtual {v2}, Lo/Xml;->k()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 211
    :cond_3
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/orderFinal/OrderFinalFragment;->c()Lo/Xml;

    move-result-object v0

    invoke-virtual {v0}, Lo/Xml;->y()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 212
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/orderFinal/OrderFinalFragment;->C()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 213
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/orderFinal/OrderFinalFragment;->D()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/orderFinal/OrderFinalFragment;->c()Lo/Xml;

    move-result-object v2

    invoke-virtual {v2}, Lo/Xml;->v()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 216
    :cond_4
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/orderFinal/OrderFinalFragment;->c()Lo/Xml;

    move-result-object v0

    invoke-virtual {v0}, Lo/Xml;->w()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 217
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/orderFinal/OrderFinalFragment;->B()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 218
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/orderFinal/OrderFinalFragment;->A()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/orderFinal/OrderFinalFragment;->c()Lo/Xml;

    move-result-object v2

    invoke-virtual {v2}, Lo/Xml;->x()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 221
    :cond_5
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/orderFinal/OrderFinalFragment;->c()Lo/Xml;

    move-result-object v0

    invoke-virtual {v0}, Lo/Xml;->B()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 222
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/orderFinal/OrderFinalFragment;->z()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 223
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/orderFinal/OrderFinalFragment;->I()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/orderFinal/OrderFinalFragment;->c()Lo/Xml;

    move-result-object v1

    invoke-virtual {v1}, Lo/Xml;->z()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_6
    return-void
.end method

.method private final O()V
    .locals 2

    .line 228
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/orderFinal/OrderFinalFragment;->q()Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/acquisition2/screens/orderFinal/OrderFinalFragment$Application;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/acquisition2/screens/orderFinal/OrderFinalFragment$Application;-><init>(Lcom/netflix/mediaclient/acquisition2/screens/orderFinal/OrderFinalFragment;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static final synthetic b(Lcom/netflix/mediaclient/acquisition2/screens/orderFinal/OrderFinalFragment;Ljava/lang/String;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/acquisition2/screens/orderFinal/OrderFinalFragment;->b(Ljava/lang/String;)V

    return-void
.end method

.method private final b(Ljava/lang/String;)V
    .locals 1

    .line 186
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/orderFinal/OrderFinalFragment;->G()Lcom/netflix/mediaclient/acquisition/view/CountryFlagPicker;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/acquisition/view/CountryFlagPicker;->updateFlag(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic d(Lcom/netflix/mediaclient/acquisition2/screens/orderFinal/OrderFinalFragment;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/screens/orderFinal/OrderFinalFragment;->L()V

    return-void
.end method


# virtual methods
.method public final A()Landroid/widget/TextView;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/orderFinal/OrderFinalFragment;->y:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/orderFinal/OrderFinalFragment;->a:[Lo/amT;

    const/16 v2, 0x11

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public final B()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/orderFinal/OrderFinalFragment;->v:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/orderFinal/OrderFinalFragment;->a:[Lo/amT;

    const/16 v2, 0x10

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public final C()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/orderFinal/OrderFinalFragment;->t:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/orderFinal/OrderFinalFragment;->a:[Lo/amT;

    const/16 v2, 0xe

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public final D()Landroid/widget/TextView;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/orderFinal/OrderFinalFragment;->w:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/orderFinal/OrderFinalFragment;->a:[Lo/amT;

    const/16 v2, 0xf

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public final E()Landroid/widget/EditText;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/orderFinal/OrderFinalFragment;->D:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/orderFinal/OrderFinalFragment;->a:[Lo/amT;

    const/16 v2, 0x14

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    return-object v0
.end method

.method public final F()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/orderFinal/OrderFinalFragment;->A:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/orderFinal/OrderFinalFragment;->a:[Lo/amT;

    const/16 v2, 0x17

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public final G()Lcom/netflix/mediaclient/acquisition/view/CountryFlagPicker;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/orderFinal/OrderFinalFragment;->B:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/orderFinal/OrderFinalFragment;->a:[Lo/amT;

    const/16 v2, 0x15

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/acquisition/view/CountryFlagPicker;

    return-object v0
.end method

.method public final H()Landroid/widget/TextView;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/orderFinal/OrderFinalFragment;->C:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/orderFinal/OrderFinalFragment;->a:[Lo/amT;

    const/16 v2, 0x16

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public final I()Landroid/widget/TextView;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/orderFinal/OrderFinalFragment;->u:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/orderFinal/OrderFinalFragment;->a:[Lo/amT;

    const/16 v2, 0x13

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public final M()Landroid/widget/CheckBox;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/orderFinal/OrderFinalFragment;->z:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/orderFinal/OrderFinalFragment;->a:[Lo/amT;

    const/16 v2, 0x18

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    return-object v0
.end method

.method public a(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/orderFinal/OrderFinalFragment;->E:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/orderFinal/OrderFinalFragment;->E:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/orderFinal/OrderFinalFragment;->E:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/acquisition2/screens/orderFinal/OrderFinalFragment;->E:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/orderFinal/OrderFinalFragment;->E:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public c()Lo/Xml;
    .locals 2

    .line 31
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/orderFinal/OrderFinalFragment;->b:Lo/Xml;

    if-nez v0, :cond_0

    const-string v1, "viewModel"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public d(Lo/Xml;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    iput-object p1, p0, Lcom/netflix/mediaclient/acquisition2/screens/orderFinal/OrderFinalFragment;->b:Lo/Xml;

    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/orderFinal/OrderFinalFragment;->e:Ljava/lang/String;

    return-object v0
.end method

.method public synthetic j()Lo/Explode;
    .locals 1

    .line 29
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/orderFinal/OrderFinalFragment;->c()Lo/Xml;

    move-result-object v0

    check-cast v0, Lo/Explode;

    return-object v0
.end method

.method public final k()Landroid/widget/TextView;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/orderFinal/OrderFinalFragment;->j:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/orderFinal/OrderFinalFragment;->a:[Lo/amT;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public l()Lcom/netflix/cl/model/AppView;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/orderFinal/OrderFinalFragment;->d:Lcom/netflix/cl/model/AppView;

    return-object v0
.end method

.method public final m()Landroid/widget/TextView;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/orderFinal/OrderFinalFragment;->f:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/orderFinal/OrderFinalFragment;->a:[Lo/amT;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public final n()Landroid/widget/TextView;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/orderFinal/OrderFinalFragment;->g:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/orderFinal/OrderFinalFragment;->a:[Lo/amT;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public final o()Landroid/widget/TextView;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/orderFinal/OrderFinalFragment;->h:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/orderFinal/OrderFinalFragment;->a:[Lo/amT;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    invoke-super {p0, p1}, Lo/TimingLogger;->onAttach(Landroid/content/Context;)V

    .line 115
    iget-object p1, p0, Lcom/netflix/mediaclient/acquisition2/screens/orderFinal/OrderFinalFragment;->viewModelInitializer:Lo/ApkSigningBlockUtils;

    if-nez p1, :cond_0

    const-string v0, "viewModelInitializer"

    invoke-static {v0}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    move-object v0, p0

    check-cast v0, Landroidx/fragment/app/Fragment;

    invoke-virtual {p1, v0}, Lo/ApkSigningBlockUtils;->e(Landroidx/fragment/app/Fragment;)Lo/Xml;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/acquisition2/screens/orderFinal/OrderFinalFragment;->d(Lo/Xml;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    sget p3, Lcom/netflix/mediaclient/ui/R$Dialog;->bI:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lo/TimingLogger;->onDestroyView()V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/orderFinal/OrderFinalFragment;->b()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    invoke-super {p0, p1, p2}, Lo/TimingLogger;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 123
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/screens/orderFinal/OrderFinalFragment;->O()V

    .line 124
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/screens/orderFinal/OrderFinalFragment;->J()V

    .line 125
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/screens/orderFinal/OrderFinalFragment;->K()V

    .line 126
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/screens/orderFinal/OrderFinalFragment;->N()V

    return-void
.end method

.method public final p()Landroid/widget/TextView;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/orderFinal/OrderFinalFragment;->k:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/orderFinal/OrderFinalFragment;->a:[Lo/amT;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public final q()Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/orderFinal/OrderFinalFragment;->i:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/orderFinal/OrderFinalFragment;->a:[Lo/amT;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;

    return-object v0
.end method

.method public final r()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/orderFinal/OrderFinalFragment;->l:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/orderFinal/OrderFinalFragment;->a:[Lo/amT;

    const/4 v2, 0x7

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public final s()Landroid/widget/TextView;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/orderFinal/OrderFinalFragment;->n:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/orderFinal/OrderFinalFragment;->a:[Lo/amT;

    const/16 v2, 0x8

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public final t()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/orderFinal/OrderFinalFragment;->m:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/orderFinal/OrderFinalFragment;->a:[Lo/amT;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public final u()Landroid/widget/TextView;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/orderFinal/OrderFinalFragment;->r:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/orderFinal/OrderFinalFragment;->a:[Lo/amT;

    const/16 v2, 0xa

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public final v()Landroid/widget/TextView;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/orderFinal/OrderFinalFragment;->q:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/orderFinal/OrderFinalFragment;->a:[Lo/amT;

    const/16 v2, 0xd

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public final w()Landroid/widget/TextView;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/orderFinal/OrderFinalFragment;->p:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/orderFinal/OrderFinalFragment;->a:[Lo/amT;

    const/16 v2, 0xb

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public final x()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/orderFinal/OrderFinalFragment;->o:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/orderFinal/OrderFinalFragment;->a:[Lo/amT;

    const/16 v2, 0x9

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public final y()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/orderFinal/OrderFinalFragment;->s:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/orderFinal/OrderFinalFragment;->a:[Lo/amT;

    const/16 v2, 0xc

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public final z()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/orderFinal/OrderFinalFragment;->x:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/orderFinal/OrderFinalFragment;->a:[Lo/amT;

    const/16 v2, 0x12

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method
