.class public final Lo/WindowCallbackWrapper;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ajS;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/ajS<",
        "Lo/ViewPropertyAnimatorRT;",
        ">;"
    }
.end annotation


# static fields
.field private static final d:Lo/WindowCallbackWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    new-instance v0, Lo/WindowCallbackWrapper;

    invoke-direct {v0}, Lo/WindowCallbackWrapper;-><init>()V

    sput-object v0, Lo/WindowCallbackWrapper;->d:Lo/WindowCallbackWrapper;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d()Lo/WindowCallbackWrapper;
    .locals 1

    .line 19
    sget-object v0, Lo/WindowCallbackWrapper;->d:Lo/WindowCallbackWrapper;

    return-object v0
.end method


# virtual methods
.method public b()Lo/ViewPropertyAnimatorRT;
    .locals 1

    .line 15
    new-instance v0, Lo/ViewPropertyAnimatorRT;

    invoke-direct {v0}, Lo/ViewPropertyAnimatorRT;-><init>()V

    return-object v0
.end method

.method public synthetic get()Ljava/lang/Object;
    .locals 1

    .line 6
    invoke-virtual {p0}, Lo/WindowCallbackWrapper;->b()Lo/ViewPropertyAnimatorRT;

    move-result-object v0

    return-object v0
.end method
