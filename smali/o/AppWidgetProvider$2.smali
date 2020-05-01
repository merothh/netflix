.class Lo/AppWidgetProvider$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/InstantAppRequest$ActionBar;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/AppWidgetProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/InstantAppRequest$ActionBar<",
        "Lo/AppWidgetProvider$Application;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic c:Lo/AppWidgetProvider;


# direct methods
.method constructor <init>(Lo/AppWidgetProvider;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lo/AppWidgetProvider$2;->c:Lo/AppWidgetProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic d()Ljava/lang/Object;
    .locals 1

    .line 24
    invoke-virtual {p0}, Lo/AppWidgetProvider$2;->e()Lo/AppWidgetProvider$Application;

    move-result-object v0

    return-object v0
.end method

.method public e()Lo/AppWidgetProvider$Application;
    .locals 2

    .line 28
    :try_start_0
    new-instance v0, Lo/AppWidgetProvider$Application;

    const-string v1, "SHA-256"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/AppWidgetProvider$Application;-><init>(Ljava/security/MessageDigest;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 30
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
