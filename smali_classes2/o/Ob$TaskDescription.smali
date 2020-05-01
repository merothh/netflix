.class public final Lo/Ob$TaskDescription;
.super Lo/Ob;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Ob;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TaskDescription"
.end annotation


# static fields
.field public static final d:Lo/Ob$TaskDescription;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 53
    new-instance v0, Lo/Ob$TaskDescription;

    invoke-direct {v0}, Lo/Ob$TaskDescription;-><init>()V

    sput-object v0, Lo/Ob$TaskDescription;->d:Lo/Ob$TaskDescription;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 53
    invoke-direct {p0, v0}, Lo/Ob;-><init>(Lo/amc;)V

    return-void
.end method
