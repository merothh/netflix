.class public Lo/oZ;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "pref_offline_profile_guid"

    const-string v1, ""

    .line 22
    invoke-static {p0, v0, v1}, Lo/aer;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string v0, "pref_offline_profile_guid"

    .line 26
    invoke-static {p0, v0, p1}, Lo/aer;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static a(Landroid/content/Context;I)Z
    .locals 2

    const-string v0, "pref_offline_current_regId"

    .line 42
    invoke-static {p0, v0}, Lo/aer;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    invoke-static {p0, v0, v1}, Lo/aer;->b(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string v0, "pref_offline_country_code"

    .line 18
    invoke-static {p0, v0, p1}, Lo/aer;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "pref_offline_country_code"

    const-string v1, ""

    .line 14
    invoke-static {p0, v0, v1}, Lo/aer;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static e(Landroid/content/Context;I)V
    .locals 1

    const-string v0, "pref_offline_current_regId"

    .line 38
    invoke-static {p0, v0, p1}, Lo/aer;->a(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method static e(Landroid/content/Context;Z)V
    .locals 1

    const-string v0, "pref_offline_download_paused"

    .line 34
    invoke-static {p0, v0, p1}, Lo/aer;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method static e(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "pref_offline_download_paused"

    const/4 v1, 0x0

    .line 30
    invoke-static {p0, v0, v1}, Lo/aer;->e(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method
