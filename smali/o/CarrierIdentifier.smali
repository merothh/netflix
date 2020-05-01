.class public abstract Lo/CarrierIdentifier;
.super Landroid/app/Application;
.source ""


# static fields
.field public static a:Lo/CarrierIdentifier;

.field public static e:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method public static b()Z
    .locals 1

    .line 46
    sget-boolean v0, Lo/CarrierIdentifier;->e:Z

    return v0
.end method

.method public static d()Landroid/content/Context;
    .locals 1

    .line 34
    sget-object v0, Lo/CarrierIdentifier;->a:Lo/CarrierIdentifier;

    return-object v0
.end method

.method public static e()Landroid/app/Application;
    .locals 1

    .line 38
    sget-object v0, Lo/CarrierIdentifier;->a:Lo/CarrierIdentifier;

    return-object v0
.end method

.method public static getInstance()Lo/CarrierIdentifier;
    .locals 1

    .line 42
    sget-object v0, Lo/CarrierIdentifier;->a:Lo/CarrierIdentifier;

    return-object v0
.end method


# virtual methods
.method public abstract a()V
.end method

.method protected c()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public abstract e(Landroid/content/Context;)V
.end method

.method public abstract e(Landroid/content/Context;Ljava/lang/String;)V
.end method

.method public abstract e(Ljava/util/Locale;)V
.end method

.method public abstract f()V
.end method

.method public abstract g()V
.end method

.method public abstract h()Lo/iy;
.end method

.method public abstract i()Z
.end method

.method public abstract j()Lo/Plugin;
.end method

.method public abstract n()Lo/CameraPrewarmService;
.end method

.method public abstract o()J
.end method

.method public onCreate()V
    .locals 0

    .line 22
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 23
    sput-object p0, Lo/CarrierIdentifier;->a:Lo/CarrierIdentifier;

    return-void
.end method
