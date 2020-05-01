.class public final Lo/FP$TaskDescription;
.super Lo/FP;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/FP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TaskDescription"
.end annotation


# static fields
.field public static final c:Lo/FP$TaskDescription;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    new-instance v0, Lo/FP$TaskDescription;

    invoke-direct {v0}, Lo/FP$TaskDescription;-><init>()V

    sput-object v0, Lo/FP$TaskDescription;->c:Lo/FP$TaskDescription;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 26
    invoke-direct {p0, v0}, Lo/FP;-><init>(Lo/amc;)V

    return-void
.end method
