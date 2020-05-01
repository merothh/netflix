.class public Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData;
.super Ljava/lang/Object;
.source "SignInData.java"


# static fields
.field public static final FIELD_FLOW:Ljava/lang/String; = "flow"

.field public static final FIELD_FLWSSN:Ljava/lang/String; = "flwssn"

.field public static final FIELD_MODE:Ljava/lang/String; = "mode"

.field public static final FLOW_CLIENT:Ljava/lang/String; = "client"

.field public static final MODE_ENTER_CREDENTIALS:Ljava/lang/String; = "enterMemberCredentials"

.field public static final MODE_MEMBER_HOME:Ljava/lang/String; = "memberHome"

.field public static final MODE_WELCOME:Ljava/lang/String; = "welcome"

.field public static final TAG:Ljava/lang/String; = "nf_signin"


# instance fields
.field public flow:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "flow"
    .end annotation
.end field

.field public flwssn:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "flwssn"
    .end annotation
.end field

.field public mode:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "mode"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method


# virtual methods
.method public isSignInSuccessful()Z
    .locals 2

    .prologue
    .line 32
    const-string/jumbo v0, "client"

    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData;->flow:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/StringUtils;->safeEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "memberHome"

    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData;->mode:Ljava/lang/String;

    .line 33
    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/StringUtils;->safeEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 32
    :goto_0
    return v0

    .line 33
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public shouldRetrySignIn()Z
    .locals 2

    .prologue
    .line 37
    const-string/jumbo v0, "enterMemberCredentials"

    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData;->mode:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/StringUtils;->safeEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public shouldTrySignUp()Z
    .locals 2

    .prologue
    .line 40
    const-string/jumbo v0, "welcome"

    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData;->mode:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/StringUtils;->safeEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
