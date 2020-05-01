.class public final Lo/FH$TaskDescription;
.super Lo/FH;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/FH;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TaskDescription"
.end annotation


# static fields
.field public static final d:Lo/FH$TaskDescription;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 65
    new-instance v0, Lo/FH$TaskDescription;

    invoke-direct {v0}, Lo/FH$TaskDescription;-><init>()V

    sput-object v0, Lo/FH$TaskDescription;->d:Lo/FH$TaskDescription;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 65
    invoke-direct {p0, v0}, Lo/FH;-><init>(Lo/amc;)V

    return-void
.end method
