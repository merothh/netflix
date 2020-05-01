.class public final Lo/UU$TaskDescription;
.super Lo/UU;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/UU;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TaskDescription"
.end annotation


# static fields
.field public static final c:Lo/UU$TaskDescription;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 52
    new-instance v0, Lo/UU$TaskDescription;

    invoke-direct {v0}, Lo/UU$TaskDescription;-><init>()V

    sput-object v0, Lo/UU$TaskDescription;->c:Lo/UU$TaskDescription;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 52
    invoke-direct {p0, v0}, Lo/UU;-><init>(Lo/amc;)V

    return-void
.end method
