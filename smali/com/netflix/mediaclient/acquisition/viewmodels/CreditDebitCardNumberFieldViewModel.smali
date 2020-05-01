.class public final Lcom/netflix/mediaclient/acquisition/viewmodels/CreditDebitCardNumberFieldViewModel;
.super Lo/Emoji;
.source ""


# direct methods
.method public constructor <init>(Lo/SparseRectFArray;Lo/DynamicLayout;Lo/FontConfig;)V
    .locals 1

    const-string v0, "formStateChangeListener"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "creditCardNumber"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inputFieldSetting"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0, p1, p2, p3}, Lo/Emoji;-><init>(Lo/SparseRectFArray;Lo/DynamicLayout;Lo/FontConfig;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic isValid(Lo/AlteredCharSequence;)Z
    .locals 0

    .line 10
    check-cast p1, Lo/DynamicLayout;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/acquisition/viewmodels/CreditDebitCardNumberFieldViewModel;->isValid(Lo/DynamicLayout;)Z

    move-result p1

    return p1
.end method

.method public isValid(Lo/DynamicLayout;)Z
    .locals 6

    const-string v0, "field"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-interface {p1}, Lo/DynamicLayout;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 19
    invoke-interface {p1}, Lo/DynamicLayout;->c()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    goto :goto_0

    .line 21
    :cond_1
    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    const-string v3, "*"

    check-cast v3, Ljava/lang/CharSequence;

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {v1, v3, v2, v4, v5}, Lo/anv;->c(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Lo/DynamicLayout;->c()Z

    move-result v2

    goto :goto_0

    .line 22
    :cond_2
    sget-object p1, Lcom/netflix/mediaclient/acquisition/util/AUIPaymentsUtilities$CCNumberHelper;->INSTANCE:Lcom/netflix/mediaclient/acquisition/util/AUIPaymentsUtilities$CCNumberHelper;

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/acquisition/util/AUIPaymentsUtilities$CCNumberHelper;->isLuhnCheckNeeded(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    const/4 v2, 0x1

    goto :goto_0

    .line 23
    :cond_3
    sget-object p1, Lcom/netflix/mediaclient/acquisition/util/AUIPaymentsUtilities$CCNumberHelper;->INSTANCE:Lcom/netflix/mediaclient/acquisition/util/AUIPaymentsUtilities$CCNumberHelper;

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/acquisition/util/AUIPaymentsUtilities$CCNumberHelper;->luhnCheck(Ljava/lang/String;)Z

    move-result v2

    :goto_0
    return v2
.end method
