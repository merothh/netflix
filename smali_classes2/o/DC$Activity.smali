.class public final Lo/DC$Activity;
.super Lo/DC;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/DC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Activity"
.end annotation


# static fields
.field public static final d:Lo/DC$Activity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 217
    new-instance v0, Lo/DC$Activity;

    invoke-direct {v0}, Lo/DC$Activity;-><init>()V

    sput-object v0, Lo/DC$Activity;->d:Lo/DC$Activity;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 217
    invoke-direct {p0, v0}, Lo/DC;-><init>(Lo/amc;)V

    return-void
.end method
