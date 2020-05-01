.class public final Lcom/crittercism/internal/bv$q;
.super Lcom/crittercism/internal/bv$g;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/crittercism/internal/bv$g;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "mobile_network"

    return-object v0
.end method

.method public final bridge synthetic c()Lorg/json/JSONObject;
    .locals 1

    invoke-super {p0}, Lcom/crittercism/internal/bv$g;->c()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method
