.class abstract Lcom/netflix/model/leafs/social/multititle/$$AutoValue_NotificationTemplate;
.super Lcom/netflix/model/leafs/social/multititle/NotificationTemplate;
.source ""


# instance fields
.field private final bodyText:Ljava/lang/String;

.field private final ctaButton:Lcom/netflix/model/leafs/social/multititle/NotificationCtaButton;

.field private final headlineText:Ljava/lang/String;

.field private final moduleFiltersForActions:Lcom/netflix/model/leafs/social/multititle/NotificationModuleFilters;

.field private final modulesList:Lcom/netflix/model/leafs/social/multititle/NotificationModuleList;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/model/leafs/social/multititle/NotificationCtaButton;Lcom/netflix/model/leafs/social/multititle/NotificationModuleList;Lcom/netflix/model/leafs/social/multititle/NotificationModuleFilters;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/netflix/model/leafs/social/multititle/NotificationTemplate;-><init>()V

    if-eqz p1, :cond_3

    .line 31
    iput-object p1, p0, Lcom/netflix/model/leafs/social/multititle/$$AutoValue_NotificationTemplate;->headlineText:Ljava/lang/String;

    if-eqz p2, :cond_2

    .line 35
    iput-object p2, p0, Lcom/netflix/model/leafs/social/multititle/$$AutoValue_NotificationTemplate;->bodyText:Ljava/lang/String;

    if-eqz p3, :cond_1

    .line 39
    iput-object p3, p0, Lcom/netflix/model/leafs/social/multititle/$$AutoValue_NotificationTemplate;->ctaButton:Lcom/netflix/model/leafs/social/multititle/NotificationCtaButton;

    if-eqz p4, :cond_0

    .line 43
    iput-object p4, p0, Lcom/netflix/model/leafs/social/multititle/$$AutoValue_NotificationTemplate;->modulesList:Lcom/netflix/model/leafs/social/multititle/NotificationModuleList;

    .line 44
    iput-object p5, p0, Lcom/netflix/model/leafs/social/multititle/$$AutoValue_NotificationTemplate;->moduleFiltersForActions:Lcom/netflix/model/leafs/social/multititle/NotificationModuleFilters;

    return-void

    .line 41
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null modulesList"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 37
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null ctaButton"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 33
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null bodyText"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 29
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null headlineText"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public bodyText()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/netflix/model/leafs/social/multititle/$$AutoValue_NotificationTemplate;->bodyText:Ljava/lang/String;

    return-object v0
.end method

.method public ctaButton()Lcom/netflix/model/leafs/social/multititle/NotificationCtaButton;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/netflix/model/leafs/social/multititle/$$AutoValue_NotificationTemplate;->ctaButton:Lcom/netflix/model/leafs/social/multititle/NotificationCtaButton;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 92
    :cond_0
    instance-of v1, p1, Lcom/netflix/model/leafs/social/multititle/NotificationTemplate;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 93
    check-cast p1, Lcom/netflix/model/leafs/social/multititle/NotificationTemplate;

    .line 94
    iget-object v1, p0, Lcom/netflix/model/leafs/social/multititle/$$AutoValue_NotificationTemplate;->headlineText:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/netflix/model/leafs/social/multititle/NotificationTemplate;->headlineText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/netflix/model/leafs/social/multititle/$$AutoValue_NotificationTemplate;->bodyText:Ljava/lang/String;

    .line 95
    invoke-virtual {p1}, Lcom/netflix/model/leafs/social/multititle/NotificationTemplate;->bodyText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/netflix/model/leafs/social/multititle/$$AutoValue_NotificationTemplate;->ctaButton:Lcom/netflix/model/leafs/social/multititle/NotificationCtaButton;

    .line 96
    invoke-virtual {p1}, Lcom/netflix/model/leafs/social/multititle/NotificationTemplate;->ctaButton()Lcom/netflix/model/leafs/social/multititle/NotificationCtaButton;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/netflix/model/leafs/social/multititle/$$AutoValue_NotificationTemplate;->modulesList:Lcom/netflix/model/leafs/social/multititle/NotificationModuleList;

    .line 97
    invoke-virtual {p1}, Lcom/netflix/model/leafs/social/multititle/NotificationTemplate;->modulesList()Lcom/netflix/model/leafs/social/multititle/NotificationModuleList;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/netflix/model/leafs/social/multititle/$$AutoValue_NotificationTemplate;->moduleFiltersForActions:Lcom/netflix/model/leafs/social/multititle/NotificationModuleFilters;

    if-nez v1, :cond_1

    .line 98
    invoke-virtual {p1}, Lcom/netflix/model/leafs/social/multititle/NotificationTemplate;->moduleFiltersForActions()Lcom/netflix/model/leafs/social/multititle/NotificationModuleFilters;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/netflix/model/leafs/social/multititle/NotificationTemplate;->moduleFiltersForActions()Lcom/netflix/model/leafs/social/multititle/NotificationModuleFilters;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    return v2
.end method

.method public hashCode()I
    .locals 3

    .line 107
    iget-object v0, p0, Lcom/netflix/model/leafs/social/multititle/$$AutoValue_NotificationTemplate;->headlineText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int v0, v0, v1

    .line 109
    iget-object v2, p0, Lcom/netflix/model/leafs/social/multititle/$$AutoValue_NotificationTemplate;->bodyText:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 111
    iget-object v2, p0, Lcom/netflix/model/leafs/social/multititle/$$AutoValue_NotificationTemplate;->ctaButton:Lcom/netflix/model/leafs/social/multititle/NotificationCtaButton;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 113
    iget-object v2, p0, Lcom/netflix/model/leafs/social/multititle/$$AutoValue_NotificationTemplate;->modulesList:Lcom/netflix/model/leafs/social/multititle/NotificationModuleList;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 115
    iget-object v1, p0, Lcom/netflix/model/leafs/social/multititle/$$AutoValue_NotificationTemplate;->moduleFiltersForActions:Lcom/netflix/model/leafs/social/multititle/NotificationModuleFilters;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    xor-int/2addr v0, v1

    return v0
.end method

.method public headlineText()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/netflix/model/leafs/social/multititle/$$AutoValue_NotificationTemplate;->headlineText:Ljava/lang/String;

    return-object v0
.end method

.method public moduleFiltersForActions()Lcom/netflix/model/leafs/social/multititle/NotificationModuleFilters;
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "showModulesOnAction"
    .end annotation

    .line 73
    iget-object v0, p0, Lcom/netflix/model/leafs/social/multititle/$$AutoValue_NotificationTemplate;->moduleFiltersForActions:Lcom/netflix/model/leafs/social/multititle/NotificationModuleFilters;

    return-object v0
.end method

.method public modulesList()Lcom/netflix/model/leafs/social/multititle/NotificationModuleList;
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "modules"
    .end annotation

    .line 66
    iget-object v0, p0, Lcom/netflix/model/leafs/social/multititle/$$AutoValue_NotificationTemplate;->modulesList:Lcom/netflix/model/leafs/social/multititle/NotificationModuleList;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NotificationTemplate{headlineText="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/model/leafs/social/multititle/$$AutoValue_NotificationTemplate;->headlineText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", bodyText="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/model/leafs/social/multititle/$$AutoValue_NotificationTemplate;->bodyText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", ctaButton="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/model/leafs/social/multititle/$$AutoValue_NotificationTemplate;->ctaButton:Lcom/netflix/model/leafs/social/multititle/NotificationCtaButton;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", modulesList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/model/leafs/social/multititle/$$AutoValue_NotificationTemplate;->modulesList:Lcom/netflix/model/leafs/social/multititle/NotificationModuleList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", moduleFiltersForActions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/model/leafs/social/multititle/$$AutoValue_NotificationTemplate;->moduleFiltersForActions:Lcom/netflix/model/leafs/social/multititle/NotificationModuleFilters;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
