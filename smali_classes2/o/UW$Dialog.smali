.class public final Lo/UW$Dialog;
.super Lo/UW;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/UW;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Dialog"
.end annotation


# static fields
.field public static final d:Lo/UW$Dialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 237
    new-instance v0, Lo/UW$Dialog;

    invoke-direct {v0}, Lo/UW$Dialog;-><init>()V

    sput-object v0, Lo/UW$Dialog;->d:Lo/UW$Dialog;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 237
    invoke-direct {p0, v0}, Lo/UW;-><init>(Lo/amc;)V

    return-void
.end method
