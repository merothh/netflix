.class public Lo/DESedeKeySpec$ActionBar;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/DESedeKeySpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ActionBar"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public static d(Landroid/content/res/Resources;Lorg/json/JSONObject;)Lo/DESedeKeySpec;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p0, 0x0

    .line 317
    invoke-static {p1, p0}, Lo/DHGenParameterSpec;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lo/GCMParameterSpec;

    move-result-object p0

    invoke-virtual {p0}, Lo/GCMParameterSpec;->e()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo/DESedeKeySpec;

    return-object p0
.end method
