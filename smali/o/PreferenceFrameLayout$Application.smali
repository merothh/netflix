.class public final Lo/PreferenceFrameLayout$Application;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/PreferenceFrameLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Application"
.end annotation


# direct methods
.method public static b(Lo/PreferenceFrameLayout;Ljava/lang/String;)Lo/RecommendationInfo;
    .locals 1

    const-string v0, "jsonString"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    new-instance v0, Lo/RingtonePreference;

    invoke-direct {v0, p1}, Lo/RingtonePreference;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/io/Reader;

    invoke-interface {p0, v0}, Lo/PreferenceFrameLayout;->a(Ljava/io/Reader;)Lo/RecommendationInfo;

    move-result-object p0

    return-object p0
.end method
