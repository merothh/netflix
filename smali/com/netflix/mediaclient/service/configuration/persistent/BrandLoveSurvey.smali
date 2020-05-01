.class public Lcom/netflix/mediaclient/service/configuration/persistent/BrandLoveSurvey;
.super Lcom/netflix/mediaclient/service/configuration/persistent/PersistentConfigurable;
.source "BrandLoveSurvey.java"


# static fields
.field private static final BRAND_LOVE_SURVEY_CONFIG_PREFS_KEY:Ljava/lang/String; = "persistent_survey"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/configuration/persistent/PersistentConfigurable;-><init>()V

    return-void
.end method


# virtual methods
.method public getCell(Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;
    .locals 1

    .prologue
    .line 20
    invoke-interface {p1}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getBrandLoveSurveyConfig()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    move-result-object v0

    return-object v0
.end method

.method public getPrefKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    const-string/jumbo v0, "persistent_survey"

    return-object v0
.end method

.method public getTestId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    const-string/jumbo v0, "7141"

    return-object v0
.end method
