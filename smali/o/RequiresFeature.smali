.class Lo/RequiresFeature;
.super Ljava/lang/Object;
.source ""


# direct methods
.method static e(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lo/DESedeKeySpec;)Lo/GrantCredentialsPermissionActivity;
    .locals 3

    .line 20
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->i()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    move-result-object v0

    sget-object v1, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->c:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 22
    :goto_0
    invoke-static {}, Lo/ActivityManagerNative;->a()F

    move-result v1

    sget-object v2, Lo/SdkConstant;->a:Lo/SdkConstant;

    .line 21
    invoke-static {p0, p1, v1, v2, v0}, Lo/Nullable;->d(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lo/DESedeKeySpec;FLo/TestApi;Z)Lo/ActivityView;

    move-result-object p0

    .line 24
    new-instance v0, Lo/GrantCredentialsPermissionActivity;

    invoke-direct {v0, p1, p0}, Lo/GrantCredentialsPermissionActivity;-><init>(Lo/DESedeKeySpec;Lo/ActivityView;)V

    return-object v0
.end method
