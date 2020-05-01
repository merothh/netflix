.class public final Lo/InputDevice;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ajS;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/ajS<",
        "Lo/InputEventConsistencyVerifier;",
        ">;"
    }
.end annotation


# static fields
.field private static final b:Lo/InputDevice;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    new-instance v0, Lo/InputDevice;

    invoke-direct {v0}, Lo/InputDevice;-><init>()V

    sput-object v0, Lo/InputDevice;->b:Lo/InputDevice;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static c()Lo/InputDevice;
    .locals 1

    .line 19
    sget-object v0, Lo/InputDevice;->b:Lo/InputDevice;

    return-object v0
.end method


# virtual methods
.method public d()Lo/InputEventConsistencyVerifier;
    .locals 1

    .line 15
    new-instance v0, Lo/InputEventConsistencyVerifier;

    invoke-direct {v0}, Lo/InputEventConsistencyVerifier;-><init>()V

    return-object v0
.end method

.method public synthetic get()Ljava/lang/Object;
    .locals 1

    .line 6
    invoke-virtual {p0}, Lo/InputDevice;->d()Lo/InputEventConsistencyVerifier;

    move-result-object v0

    return-object v0
.end method
