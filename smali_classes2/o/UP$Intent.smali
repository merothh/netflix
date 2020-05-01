.class public final Lo/UP$Intent;
.super Lo/UP;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/UP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Intent"
.end annotation


# static fields
.field public static final a:Lo/UP$Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 62
    new-instance v0, Lo/UP$Intent;

    invoke-direct {v0}, Lo/UP$Intent;-><init>()V

    sput-object v0, Lo/UP$Intent;->a:Lo/UP$Intent;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 62
    invoke-direct {p0, v0}, Lo/UP;-><init>(Lo/amc;)V

    return-void
.end method
