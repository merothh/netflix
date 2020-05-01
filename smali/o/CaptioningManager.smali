.class public final Lo/CaptioningManager;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ajS;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/ajS<",
        "Lo/AccelerateInterpolator;",
        ">;"
    }
.end annotation


# static fields
.field private static final c:Lo/CaptioningManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    new-instance v0, Lo/CaptioningManager;

    invoke-direct {v0}, Lo/CaptioningManager;-><init>()V

    sput-object v0, Lo/CaptioningManager;->c:Lo/CaptioningManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b()Lo/CaptioningManager;
    .locals 1

    .line 19
    sget-object v0, Lo/CaptioningManager;->c:Lo/CaptioningManager;

    return-object v0
.end method


# virtual methods
.method public d()Lo/AccelerateInterpolator;
    .locals 1

    .line 15
    new-instance v0, Lo/AccelerateInterpolator;

    invoke-direct {v0}, Lo/AccelerateInterpolator;-><init>()V

    return-object v0
.end method

.method public synthetic get()Ljava/lang/Object;
    .locals 1

    .line 6
    invoke-virtual {p0}, Lo/CaptioningManager;->d()Lo/AccelerateInterpolator;

    move-result-object v0

    return-object v0
.end method
