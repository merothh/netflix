.class public final Lo/FrameMetrics;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ajS;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/ajS<",
        "Lo/DisplayInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static final b:Lo/FrameMetrics;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    new-instance v0, Lo/FrameMetrics;

    invoke-direct {v0}, Lo/FrameMetrics;-><init>()V

    sput-object v0, Lo/FrameMetrics;->b:Lo/FrameMetrics;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b()Lo/FrameMetrics;
    .locals 1

    .line 19
    sget-object v0, Lo/FrameMetrics;->b:Lo/FrameMetrics;

    return-object v0
.end method


# virtual methods
.method public e()Lo/DisplayInfo;
    .locals 1

    .line 15
    new-instance v0, Lo/DisplayInfo;

    invoke-direct {v0}, Lo/DisplayInfo;-><init>()V

    return-object v0
.end method

.method public synthetic get()Ljava/lang/Object;
    .locals 1

    .line 6
    invoke-virtual {p0}, Lo/FrameMetrics;->e()Lo/DisplayInfo;

    move-result-object v0

    return-object v0
.end method
