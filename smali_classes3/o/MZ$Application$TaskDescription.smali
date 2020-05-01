.class public final Lo/MZ$Application$TaskDescription;
.super Lo/MZ$Application;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/MZ$Application;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TaskDescription"
.end annotation


# static fields
.field public static final e:Lo/MZ$Application$TaskDescription;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 101
    new-instance v0, Lo/MZ$Application$TaskDescription;

    invoke-direct {v0}, Lo/MZ$Application$TaskDescription;-><init>()V

    sput-object v0, Lo/MZ$Application$TaskDescription;->e:Lo/MZ$Application$TaskDescription;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 101
    invoke-direct {p0, v0}, Lo/MZ$Application;-><init>(Lo/amc;)V

    return-void
.end method
