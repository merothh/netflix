.class final Lo/mX$Application;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/mX;->c()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# static fields
.field public static final e:Lo/mX$Application;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/mX$Application;

    invoke-direct {v0}, Lo/mX$Application;-><init>()V

    sput-object v0, Lo/mX$Application;->e:Lo/mX$Application;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 19
    invoke-static {}, Lo/CarrierIdentifier;->getInstance()Lo/CarrierIdentifier;

    move-result-object v0

    invoke-static {}, Lo/CarrierIdentifier;->d()Landroid/content/Context;

    move-result-object v1

    const-string v2, "deviceCommand"

    invoke-virtual {v0, v1, v2}, Lo/CarrierIdentifier;->e(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
