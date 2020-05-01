.class public final Lo/Lz$TaskDescription;
.super Lo/Lz;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Lz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TaskDescription"
.end annotation


# static fields
.field public static final c:Lo/Lz$TaskDescription;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    new-instance v0, Lo/Lz$TaskDescription;

    invoke-direct {v0}, Lo/Lz$TaskDescription;-><init>()V

    sput-object v0, Lo/Lz$TaskDescription;->c:Lo/Lz$TaskDescription;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 11
    invoke-direct {p0, v0}, Lo/Lz;-><init>(Lo/amc;)V

    return-void
.end method
