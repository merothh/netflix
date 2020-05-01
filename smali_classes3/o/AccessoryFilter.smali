.class public final Lo/AccessoryFilter;
.super Lo/UsbConfiguration;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/AccessoryFilter$ActionBar;,
        Lo/AccessoryFilter$Activity;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2}, Lo/UsbConfiguration;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected a()Lo/UsbConfiguration$ActionBar;
    .locals 1

    .line 44
    new-instance v0, Lo/AccessoryFilter$Activity;

    invoke-direct {v0, p0, p0}, Lo/AccessoryFilter$Activity;-><init>(Lo/AccessoryFilter;Lo/UsbConfiguration;)V

    return-object v0
.end method
