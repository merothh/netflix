.class public Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData$ErrorCode;,
        Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData$Fields;
    }
.end annotation


# static fields
.field public static final ERROR_ACCOUNT_PASSWORD_NOT_SET:Ljava/lang/String; = "account_password_not_set"

.field public static final ERROR_DVD_MEMBER_REDIRECT:Ljava/lang/String; = "dvd_member_redirect"

.field public static final ERROR_FORMER_MEMBER_CONSUMPTION:Ljava/lang/String; = "former_member_consumption_only"

.field public static final ERROR_FORMER_MEMBER_REDIRECT:Ljava/lang/String; = "former_member_redirect"

.field public static final ERROR_INCORRECT_PASSWORD:Ljava/lang/String; = "incorrect_password"

.field public static final ERROR_NEVER_MEMBER_CONSUMPTION:Ljava/lang/String; = "never_member_consumption_only"

.field public static final ERROR_NEVER_MEMBER_REDIRECT:Ljava/lang/String; = "never_member_redirect"

.field public static final ERROR_THROTTLING:Ljava/lang/String; = "throttling_failure"

.field public static final ERROR_UNRECOGNIZED_CONSUMPTION:Ljava/lang/String; = "unrecognized_email_consumption_only"

.field public static final ERROR_UNRECOGNIZED_EMAIL:Ljava/lang/String; = "unrecognized_email"

.field public static final ERROR_UNRECOGNIZED_PHONE:Ljava/lang/String; = "unrecognized_phone_number"

.field public static final ERROR_UNRECOGNIZED_REDIRECT:Ljava/lang/String; = "unrecognized_email_redirect"

.field public static final FIELD_AB_ALLOCATIONS:Ljava/lang/String; = "abAllocations"

.field public static final FIELD_ERROR_CODE:Ljava/lang/String; = "errorCode"

.field public static final FIELD_FIELDS:Ljava/lang/String; = "fields"

.field public static final FIELD_FLOW:Ljava/lang/String; = "flow"

.field public static final FIELD_FLWSSN:Ljava/lang/String; = "flwssn"

.field public static final FIELD_MODE:Ljava/lang/String; = "mode"

.field public static final FIELD_VALUE:Ljava/lang/String; = "value"

.field public static final FLOW_CLIENT:Ljava/lang/String; = "client"

.field public static final MODE_ENTER_CREDENTIALS:Ljava/lang/String; = "enterMemberCredentials"

.field public static final MODE_MEMBER_HOME:Ljava/lang/String; = "memberHome"

.field public static final MODE_WELCOME:Ljava/lang/String; = "welcome"

.field public static final TAG:Ljava/lang/String; = "nf_signin"


# instance fields
.field public authorizationCredentials:Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;

.field public fields:Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData$Fields;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "fields"
    .end annotation
.end field

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

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isAccountWithNoPasswordSet()Z
    .locals 2

    .line 117
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData;->fields:Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData$Fields;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData$Fields;->errorCode:Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData$ErrorCode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData;->fields:Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData$Fields;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData$Fields;->errorCode:Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData$ErrorCode;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData$ErrorCode;->value:Ljava/lang/String;

    const-string v1, "account_password_not_set"

    .line 118
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isConsumptionOnlyFormerMember()Z
    .locals 2

    .line 122
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData;->fields:Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData$Fields;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData$Fields;->errorCode:Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData$ErrorCode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData;->fields:Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData$Fields;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData$Fields;->errorCode:Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData$ErrorCode;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData$ErrorCode;->value:Ljava/lang/String;

    const-string v1, "former_member_consumption_only"

    .line 123
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isConsumptionOnlyNeverMember()Z
    .locals 2

    .line 132
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData;->fields:Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData$Fields;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData$Fields;->errorCode:Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData$ErrorCode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData;->fields:Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData$Fields;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData$Fields;->errorCode:Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData$ErrorCode;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData$ErrorCode;->value:Ljava/lang/String;

    const-string v1, "never_member_consumption_only"

    .line 133
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isConsumptionOnlyUnrecognizedEmail()Z
    .locals 2

    .line 147
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData;->fields:Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData$Fields;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData$Fields;->errorCode:Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData$ErrorCode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData;->fields:Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData$Fields;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData$Fields;->errorCode:Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData$ErrorCode;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData$ErrorCode;->value:Ljava/lang/String;

    const-string v1, "unrecognized_email_consumption_only"

    .line 148
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEmailUnrecognised()Z
    .locals 2

    .line 102
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData;->fields:Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData$Fields;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData$Fields;->errorCode:Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData$ErrorCode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData;->fields:Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData$Fields;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData$Fields;->errorCode:Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData$ErrorCode;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData$ErrorCode;->value:Ljava/lang/String;

    const-string v1, "unrecognized_email"

    .line 103
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPasswordIncorrect()Z
    .locals 2

    .line 112
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData;->fields:Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData$Fields;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData$Fields;->errorCode:Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData$ErrorCode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData;->fields:Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData$Fields;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData$Fields;->errorCode:Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData$ErrorCode;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData$ErrorCode;->value:Ljava/lang/String;

    const-string v1, "incorrect_password"

    .line 113
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPhoneUnrecognized()Z
    .locals 2

    .line 107
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData;->fields:Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData$Fields;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData$Fields;->errorCode:Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData$ErrorCode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData;->fields:Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData$Fields;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData$Fields;->errorCode:Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData$ErrorCode;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData$ErrorCode;->value:Ljava/lang/String;

    const-string v1, "unrecognized_phone_number"

    .line 108
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isRedirectOnlyDVDMember()Z
    .locals 2

    .line 142
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData;->fields:Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData$Fields;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData$Fields;->errorCode:Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData$ErrorCode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData;->fields:Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData$Fields;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData$Fields;->errorCode:Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData$ErrorCode;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData$ErrorCode;->value:Ljava/lang/String;

    const-string v1, "dvd_member_redirect"

    .line 143
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isRedirectOnlyFormerMember()Z
    .locals 2

    .line 127
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData;->fields:Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData$Fields;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData$Fields;->errorCode:Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData$ErrorCode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData;->fields:Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData$Fields;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData$Fields;->errorCode:Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData$ErrorCode;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData$ErrorCode;->value:Ljava/lang/String;

    const-string v1, "former_member_redirect"

    .line 128
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isRedirectOnlyNeverMember()Z
    .locals 2

    .line 137
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData;->fields:Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData$Fields;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData$Fields;->errorCode:Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData$ErrorCode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData;->fields:Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData$Fields;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData$Fields;->errorCode:Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData$ErrorCode;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData$ErrorCode;->value:Ljava/lang/String;

    const-string v1, "never_member_redirect"

    .line 138
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isRedirectOnlyUnrecognizedEmail()Z
    .locals 2

    .line 152
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData;->fields:Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData$Fields;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData$Fields;->errorCode:Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData$ErrorCode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData;->fields:Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData$Fields;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData$Fields;->errorCode:Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData$ErrorCode;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData$ErrorCode;->value:Ljava/lang/String;

    const-string v1, "unrecognized_email_redirect"

    .line 153
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSignInSuccessful()Z
    .locals 2

    .line 85
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData;->flow:Ljava/lang/String;

    const-string v1, "client"

    invoke-static {v1, v0}, Lo/aev;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData;->mode:Ljava/lang/String;

    const-string v1, "memberHome"

    .line 86
    invoke-static {v1, v0}, Lo/aev;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isThrottled()Z
    .locals 2

    .line 97
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData;->fields:Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData$Fields;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData$Fields;->errorCode:Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData$ErrorCode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData;->fields:Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData$Fields;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData$Fields;->errorCode:Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData$ErrorCode;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData$ErrorCode;->value:Ljava/lang/String;

    const-string v1, "throttling_failure"

    .line 98
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isValid()Z
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData;->authorizationCredentials:Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public shouldRetrySignIn()Z
    .locals 2

    .line 90
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData;->mode:Ljava/lang/String;

    const-string v1, "enterMemberCredentials"

    invoke-static {v1, v0}, Lo/aev;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public shouldTrySignUp()Z
    .locals 2

    .line 93
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData;->mode:Ljava/lang/String;

    const-string v1, "welcome"

    invoke-static {v1, v0}, Lo/aev;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SignInData{mode=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData;->mode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", flow=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData;->flow:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", flwssn=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData;->flwssn:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", fields="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData;->fields:Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData$Fields;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", authorizationCredentials="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData;->authorizationCredentials:Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
