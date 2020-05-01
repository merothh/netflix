.class public final Lcom/netflix/mediaclient/acquisition/viewmodels/SignupViewModel;
.super Lo/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/mediaclient/acquisition/viewmodels/SignupViewModel$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/netflix/mediaclient/acquisition/viewmodels/SignupViewModel$Companion;


# instance fields
.field private final currentMoneyballData:Lo/Cloneable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/Cloneable<",
            "Lcom/netflix/mediaclient/service/webclient/model/leafs/MoneyballData;",
            ">;"
        }
    .end annotation
.end field

.field private formCache:Lo/InputMethodManagerInternal;

.field private signInButtonType:Lo/Cloneable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/Cloneable<",
            "Lcom/netflix/mediaclient/acquisition/SignInButtonInHeaderType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/netflix/mediaclient/acquisition/viewmodels/SignupViewModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/acquisition/viewmodels/SignupViewModel$Companion;-><init>(Lo/amc;)V

    sput-object v0, Lcom/netflix/mediaclient/acquisition/viewmodels/SignupViewModel;->Companion:Lcom/netflix/mediaclient/acquisition/viewmodels/SignupViewModel$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 14
    invoke-direct {p0}, Lo/Enum;-><init>()V

    .line 22
    new-instance v0, Lo/InputMethodManagerInternal;

    invoke-direct {v0}, Lo/InputMethodManagerInternal;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition/viewmodels/SignupViewModel;->formCache:Lo/InputMethodManagerInternal;

    .line 27
    new-instance v0, Lo/Cloneable;

    invoke-direct {v0}, Lo/Cloneable;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition/viewmodels/SignupViewModel;->currentMoneyballData:Lo/Cloneable;

    .line 37
    new-instance v0, Lo/Cloneable;

    invoke-direct {v0}, Lo/Cloneable;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition/viewmodels/SignupViewModel;->signInButtonType:Lo/Cloneable;

    .line 40
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition/viewmodels/SignupViewModel;->signInButtonType:Lo/Cloneable;

    sget-object v1, Lcom/netflix/mediaclient/acquisition/SignInButtonInHeaderType;->SIGN_IN:Lcom/netflix/mediaclient/acquisition/SignInButtonInHeaderType;

    invoke-virtual {v0, v1}, Lo/Cloneable;->e(Ljava/lang/Object;)V

    return-void
.end method

.method private final isRecognisedFormerOrNeverMemberOrCurrentMember(Lcom/netflix/android/moneyball/FlowMode;)Z
    .locals 5

    const-string v0, "recognizedFormerMember"

    .line 58
    invoke-virtual {p1, v0}, Lcom/netflix/android/moneyball/FlowMode;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    instance-of v2, v0, Ljava/lang/Boolean;

    if-nez v2, :cond_1

    move-object v0, v1

    :cond_1
    check-cast v0, Ljava/lang/Boolean;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    const-string v3, "recognizedNeverMember"

    .line 59
    invoke-virtual {p1, v3}, Lcom/netflix/android/moneyball/FlowMode;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object v3

    goto :goto_2

    :cond_3
    move-object v3, v1

    :goto_2
    instance-of v4, v3, Ljava/lang/Boolean;

    if-nez v4, :cond_4

    goto :goto_3

    :cond_4
    move-object v1, v3

    :goto_3
    check-cast v1, Ljava/lang/Boolean;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_4

    :cond_5
    const/4 v1, 0x0

    .line 61
    :goto_4
    invoke-virtual {p1}, Lcom/netflix/android/moneyball/FlowMode;->getFlow()Ljava/lang/String;

    move-result-object p1

    const-string v3, "mobileOnboarding"

    invoke-static {p1, v3}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez v0, :cond_6

    if-nez v1, :cond_6

    if-eqz p1, :cond_7

    :cond_6
    const/4 v2, 0x1

    :cond_7
    return v2
.end method


# virtual methods
.method public final getCurrentFlowMode()Lcom/netflix/android/moneyball/FlowMode;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition/viewmodels/SignupViewModel;->currentMoneyballData:Lo/Cloneable;

    invoke-virtual {v0}, Lo/Cloneable;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/MoneyballData;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/MoneyballData;->getFlowMode()Lcom/netflix/android/moneyball/FlowMode;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final getCurrentMoneyballData()Lo/Cloneable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/Cloneable<",
            "Lcom/netflix/mediaclient/service/webclient/model/leafs/MoneyballData;",
            ">;"
        }
    .end annotation

    .line 27
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition/viewmodels/SignupViewModel;->currentMoneyballData:Lo/Cloneable;

    return-object v0
.end method

.method public final getFormCache()Lo/InputMethodManagerInternal;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition/viewmodels/SignupViewModel;->formCache:Lo/InputMethodManagerInternal;

    return-object v0
.end method

.method public final getSignInButtonType()Lo/Cloneable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/Cloneable<",
            "Lcom/netflix/mediaclient/acquisition/SignInButtonInHeaderType;",
            ">;"
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition/viewmodels/SignupViewModel;->signInButtonType:Lo/Cloneable;

    return-object v0
.end method

.method public final setFormCache(Lo/InputMethodManagerInternal;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    iput-object p1, p0, Lcom/netflix/mediaclient/acquisition/viewmodels/SignupViewModel;->formCache:Lo/InputMethodManagerInternal;

    return-void
.end method

.method public final setSignInButtonType(Lo/Cloneable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/Cloneable<",
            "Lcom/netflix/mediaclient/acquisition/SignInButtonInHeaderType;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    iput-object p1, p0, Lcom/netflix/mediaclient/acquisition/viewmodels/SignupViewModel;->signInButtonType:Lo/Cloneable;

    return-void
.end method

.method public final updateSignInButtonInHeader(Lcom/netflix/android/moneyball/FlowMode;)V
    .locals 1

    const-string v0, "flowMode"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/acquisition/viewmodels/SignupViewModel;->isRecognisedFormerOrNeverMemberOrCurrentMember(Lcom/netflix/android/moneyball/FlowMode;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 51
    iget-object p1, p0, Lcom/netflix/mediaclient/acquisition/viewmodels/SignupViewModel;->signInButtonType:Lo/Cloneable;

    sget-object v0, Lcom/netflix/mediaclient/acquisition/SignInButtonInHeaderType;->SIGN_OUT:Lcom/netflix/mediaclient/acquisition/SignInButtonInHeaderType;

    invoke-virtual {p1, v0}, Lo/Cloneable;->e(Ljava/lang/Object;)V

    goto :goto_0

    .line 53
    :cond_0
    iget-object p1, p0, Lcom/netflix/mediaclient/acquisition/viewmodels/SignupViewModel;->signInButtonType:Lo/Cloneable;

    sget-object v0, Lcom/netflix/mediaclient/acquisition/SignInButtonInHeaderType;->SIGN_IN:Lcom/netflix/mediaclient/acquisition/SignInButtonInHeaderType;

    invoke-virtual {p1, v0}, Lo/Cloneable;->e(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
