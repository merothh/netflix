.class public final Lo/SurfaceControl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ajS;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/ajS<",
        "Lo/SurfaceSession;",
        ">;"
    }
.end annotation


# static fields
.field private static final d:Lo/SurfaceControl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    new-instance v0, Lo/SurfaceControl;

    invoke-direct {v0}, Lo/SurfaceControl;-><init>()V

    sput-object v0, Lo/SurfaceControl;->d:Lo/SurfaceControl;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lo/SurfaceControl;
    .locals 1

    .line 19
    sget-object v0, Lo/SurfaceControl;->d:Lo/SurfaceControl;

    return-object v0
.end method


# virtual methods
.method public b()Lo/SurfaceSession;
    .locals 1

    .line 15
    new-instance v0, Lo/SurfaceSession;

    invoke-direct {v0}, Lo/SurfaceSession;-><init>()V

    return-object v0
.end method

.method public synthetic get()Ljava/lang/Object;
    .locals 1

    .line 6
    invoke-virtual {p0}, Lo/SurfaceControl;->b()Lo/SurfaceSession;

    move-result-object v0

    return-object v0
.end method
