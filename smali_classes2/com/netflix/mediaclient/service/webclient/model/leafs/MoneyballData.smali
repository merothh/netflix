.class public Lcom/netflix/mediaclient/service/webclient/model/leafs/MoneyballData;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final FIELD_AUI_CONTEXT:Ljava/lang/String; = "aui_context"

.field public static final FIELD_FLOW:Ljava/lang/String; = "flow"

.field public static final FIELD_FLOWMODE:Ljava/lang/String; = "flowmode"

.field public static final FIELD_FLWSSN:Ljava/lang/String; = "flwssn"

.field public static final FIELD_MODE:Ljava/lang/String; = "mode"

.field static final FIELD_PHONE_CODES:Ljava/lang/String; = "phoneCodes"

.field static final FIELD_TERMS_OF_USE:Ljava/lang/String; = "termsOfUse"

.field public static final TAG:Ljava/lang/String; = "nf_moneyball"


# instance fields
.field protected contextData:Lcom/netflix/mediaclient/service/webclient/model/leafs/AUIContextData;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "aui_context"
    .end annotation
.end field

.field protected flow:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "flow"
    .end annotation
.end field

.field protected flowMode:Lcom/netflix/android/moneyball/FlowMode;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "flowmode"
    .end annotation
.end field

.field public flwssn:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "flwssn"
    .end annotation
.end field

.field protected mode:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "mode"
    .end annotation
.end field

.field protected phoneCodesData:Lcom/netflix/mediaclient/service/webclient/model/leafs/PhoneCodesData;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "phoneCodes"
    .end annotation
.end field

.field protected termsOfUseData:Lcom/netflix/mediaclient/service/webclient/model/leafs/TermsOfUseData;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "termsOfUse"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContextData()Lcom/netflix/mediaclient/service/webclient/model/leafs/AUIContextData;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/MoneyballData;->contextData:Lcom/netflix/mediaclient/service/webclient/model/leafs/AUIContextData;

    return-object v0
.end method

.method public getFlow()Ljava/lang/String;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/MoneyballData;->flow:Ljava/lang/String;

    return-object v0
.end method

.method public getFlowMode()Lcom/netflix/android/moneyball/FlowMode;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/MoneyballData;->flowMode:Lcom/netflix/android/moneyball/FlowMode;

    return-object v0
.end method

.method public getMode()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/MoneyballData;->mode:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneCodesData()Lcom/netflix/mediaclient/service/webclient/model/leafs/PhoneCodesData;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/MoneyballData;->phoneCodesData:Lcom/netflix/mediaclient/service/webclient/model/leafs/PhoneCodesData;

    return-object v0
.end method

.method public getTermsOfUseData()Lcom/netflix/mediaclient/service/webclient/model/leafs/TermsOfUseData;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/MoneyballData;->termsOfUseData:Lcom/netflix/mediaclient/service/webclient/model/leafs/TermsOfUseData;

    return-object v0
.end method

.method public isValid()Z
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/MoneyballData;->flowMode:Lcom/netflix/android/moneyball/FlowMode;

    invoke-virtual {v0}, Lcom/netflix/android/moneyball/FlowMode;->getFlow()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setContextData(Lcom/netflix/mediaclient/service/webclient/model/leafs/AUIContextData;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 52
    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/MoneyballData;->contextData:Lcom/netflix/mediaclient/service/webclient/model/leafs/AUIContextData;

    :cond_0
    return-void
.end method

.method public setFlowMode(Lcom/netflix/android/moneyball/FlowMode;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 66
    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/MoneyballData;->flowMode:Lcom/netflix/android/moneyball/FlowMode;

    .line 67
    invoke-virtual {p1}, Lcom/netflix/android/moneyball/FlowMode;->getFlow()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/MoneyballData;->flow:Ljava/lang/String;

    .line 68
    invoke-virtual {p1}, Lcom/netflix/android/moneyball/FlowMode;->getMode()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/MoneyballData;->mode:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setPhoneCodesData(Lcom/netflix/mediaclient/service/webclient/model/leafs/PhoneCodesData;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/MoneyballData;->phoneCodesData:Lcom/netflix/mediaclient/service/webclient/model/leafs/PhoneCodesData;

    return-void
.end method

.method public setTermsOfUseData(Lcom/netflix/mediaclient/service/webclient/model/leafs/TermsOfUseData;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/MoneyballData;->termsOfUseData:Lcom/netflix/mediaclient/service/webclient/model/leafs/TermsOfUseData;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MoneyballData{mode=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/MoneyballData;->mode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", flow=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/MoneyballData;->flow:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
