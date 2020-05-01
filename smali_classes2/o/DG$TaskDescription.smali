.class public final Lo/DG$TaskDescription;
.super Lo/DG;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/DG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TaskDescription"
.end annotation


# static fields
.field public static final d:Lo/DG$TaskDescription;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    new-instance v0, Lo/DG$TaskDescription;

    invoke-direct {v0}, Lo/DG$TaskDescription;-><init>()V

    sput-object v0, Lo/DG$TaskDescription;->d:Lo/DG$TaskDescription;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 34
    invoke-direct {p0, v0}, Lo/DG;-><init>(Lo/amc;)V

    return-void
.end method
