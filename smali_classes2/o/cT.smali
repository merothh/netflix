.class public final Lo/cT;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "preference_key_push_optin_status"

    const/4 v1, 0x0

    .line 34
    invoke-static {p0, v0, v1}, Lo/aer;->e(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "preference_key_new_cast_application_id"

    const/4 v1, 0x0

    .line 26
    invoke-static {p0, v0, v1}, Lo/aer;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/content/Context;Z)V
    .locals 1

    const-string v0, "preference_key_push_optin_status"

    .line 38
    invoke-static {p0, v0, p1}, Lo/aer;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public static e(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string v0, "preference_key_CURRENT_cast_application_id"

    .line 29
    invoke-static {p0, v0, p1}, Lo/aer;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
