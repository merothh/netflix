.class public abstract Lo/SuggestionSpan;
.super Lo/Jv;
.source ""

# interfaces
.implements Lo/SpellCheckerSubtype;
.implements Lo/SpellCheckerInfo;
.implements Lcom/netflix/mediaclient/acquisition2/screens/registrationContext/RegistrationContextFragment$ActionBar;
.implements Lcom/netflix/mediaclient/acquisition2/screens/planSelectionContext/PlanContextFragment$TaskDescription;
.implements Lcom/netflix/mediaclient/acquisition2/screens/paymentContext/PaymentContextFragment$Application;
.implements Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment$StateListAnimator;
.implements Lcom/netflix/mediaclient/acquisition2/screens/smsPaymentContext/SMSPaymentContextFragment$ActionBar;
.implements Lcom/netflix/mediaclient/acquisition2/screens/returningMemberContext/ReturningMemberContextFragment$StateListAnimator;
.implements Lcom/netflix/mediaclient/acquisition2/screens/verifyCardContext/VerifyCardContextFragment$Activity;
.implements Lo/TextClassificationSessionFactory;
.implements Lo/ScaleAnimation;


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lo/Jv;-><init>()V

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lo/SuggestionSpan;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lo/SuggestionSpan;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/SuggestionSpan;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lo/SuggestionSpan;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lo/Serializable;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lo/SuggestionSpan;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method
