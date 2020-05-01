.class public final Lo/CommonClock$Activity;
.super Lo/CommonClock;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/CommonClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Activity"
.end annotation


# static fields
.field public static final b:Lo/CommonClock$Activity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 48
    new-instance v0, Lo/CommonClock$Activity;

    invoke-direct {v0}, Lo/CommonClock$Activity;-><init>()V

    sput-object v0, Lo/CommonClock$Activity;->b:Lo/CommonClock$Activity;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 48
    invoke-direct {p0, v0}, Lo/CommonClock;-><init>(Lo/amc;)V

    return-void
.end method
