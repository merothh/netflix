.class public final Lo/YB$Activity;
.super Lo/YB;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/YB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Activity"
.end annotation


# static fields
.field public static final b:Lo/YB$Activity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    new-instance v0, Lo/YB$Activity;

    invoke-direct {v0}, Lo/YB$Activity;-><init>()V

    sput-object v0, Lo/YB$Activity;->b:Lo/YB$Activity;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, v0}, Lo/YB;-><init>(Lo/amc;)V

    return-void
.end method
