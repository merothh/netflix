.class public final Lo/Build$Intent;
.super Lo/Build;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Build;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Intent"
.end annotation


# static fields
.field public static final a:Lo/Build$Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    new-instance v0, Lo/Build$Intent;

    invoke-direct {v0}, Lo/Build$Intent;-><init>()V

    sput-object v0, Lo/Build$Intent;->a:Lo/Build$Intent;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 17
    invoke-direct {p0, v0}, Lo/Build;-><init>(Lo/amc;)V

    return-void
.end method
