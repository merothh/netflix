.class public Lcom/crittercism/app/CritterUserData;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/util/Map;

.field private final b:Z


# direct methods
.method constructor <init>(Ljava/util/Map;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/crittercism/app/CritterUserData;->a:Ljava/util/Map;

    iput-boolean p2, p0, Lcom/crittercism/app/CritterUserData;->b:Z

    return-void
.end method


# virtual methods
.method public crashedOnLastLoad()Z
    .locals 2

    iget-object v0, p0, Lcom/crittercism/app/CritterUserData;->a:Ljava/util/Map;

    const-string/jumbo v1, "crashedOnLastLoad"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/crittercism/app/CritterUserData;->b:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "User has opted out of Crittercism.  Returning false."

    invoke-static {v0}, Lcom/crittercism/internal/dw;->b(Ljava/lang/String;)V

    :goto_0
    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_0
    const-string/jumbo v0, "CritterUserData instance has no value for crashedOnLastLoad().  Defaulting to false."

    invoke-static {v0}, Lcom/crittercism/internal/dw;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/crittercism/app/CritterUserData;->a:Ljava/util/Map;

    const-string/jumbo v1, "crashedOnLastLoad"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_1
.end method

.method public getRateMyAppMessage()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/crittercism/app/CritterUserData;->a:Ljava/util/Map;

    const-string/jumbo v1, "message"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/crittercism/app/CritterUserData;->b:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "User has opted out of Crittercism.  Returning null."

    invoke-static {v0}, Lcom/crittercism/internal/dw;->b(Ljava/lang/String;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/crittercism/app/CritterUserData;->a:Ljava/util/Map;

    const-string/jumbo v1, "message"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_1
    const-string/jumbo v0, "CritterUserData instance has no value for getRateMyAppMessage().  Returning null."

    invoke-static {v0}, Lcom/crittercism/internal/dw;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getRateMyAppTitle()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/crittercism/app/CritterUserData;->a:Ljava/util/Map;

    const-string/jumbo v1, "title"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/crittercism/app/CritterUserData;->b:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "User has opted out of Crittercism.  Returning null."

    invoke-static {v0}, Lcom/crittercism/internal/dw;->b(Ljava/lang/String;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/crittercism/app/CritterUserData;->a:Ljava/util/Map;

    const-string/jumbo v1, "title"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_1
    const-string/jumbo v0, "CritterUserData instance has no value for getRateMyAppTitle().  Returning null."

    invoke-static {v0}, Lcom/crittercism/internal/dw;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getUserUUID()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/crittercism/app/CritterUserData;->a:Ljava/util/Map;

    const-string/jumbo v1, "userUUID"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/crittercism/app/CritterUserData;->b:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "User has opted out of Crittercism.  Returning null."

    invoke-static {v0}, Lcom/crittercism/internal/dw;->b(Ljava/lang/String;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/crittercism/app/CritterUserData;->a:Ljava/util/Map;

    const-string/jumbo v1, "userUUID"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_1
    const-string/jumbo v0, "CritterUserData instance has no value for getUserUUID().  Returning null."

    invoke-static {v0}, Lcom/crittercism/internal/dw;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isOptedOut()Z
    .locals 2

    iget-object v0, p0, Lcom/crittercism/app/CritterUserData;->a:Ljava/util/Map;

    const-string/jumbo v1, "optOutStatus"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/crittercism/app/CritterUserData;->b:Z

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/crittercism/app/CritterUserData;->a:Ljava/util/Map;

    const-string/jumbo v1, "optOutStatus"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public shouldShowRateMyAppAlert()Z
    .locals 2

    iget-object v0, p0, Lcom/crittercism/app/CritterUserData;->a:Ljava/util/Map;

    const-string/jumbo v1, "shouldShowRateAppAlert"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/crittercism/app/CritterUserData;->b:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "User has opted out of Crittercism.  Returning false."

    invoke-static {v0}, Lcom/crittercism/internal/dw;->b(Ljava/lang/String;)V

    :goto_0
    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_0
    const-string/jumbo v0, "CritterUserData instance has no value for shouldShowMyRateAppAlert().  Defaulting to false."

    invoke-static {v0}, Lcom/crittercism/internal/dw;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/crittercism/app/CritterUserData;->a:Ljava/util/Map;

    const-string/jumbo v1, "shouldShowRateAppAlert"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_1
.end method
