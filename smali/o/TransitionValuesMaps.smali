.class public final Lo/TransitionValuesMaps;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ajS;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/ajS<",
        "Lo/AndroidException;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Lo/TransitionValuesMaps;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    new-instance v0, Lo/TransitionValuesMaps;

    invoke-direct {v0}, Lo/TransitionValuesMaps;-><init>()V

    sput-object v0, Lo/TransitionValuesMaps;->a:Lo/TransitionValuesMaps;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static e()Lo/TransitionValuesMaps;
    .locals 1

    .line 19
    sget-object v0, Lo/TransitionValuesMaps;->a:Lo/TransitionValuesMaps;

    return-object v0
.end method


# virtual methods
.method public d()Lo/AndroidException;
    .locals 1

    .line 15
    new-instance v0, Lo/AndroidException;

    invoke-direct {v0}, Lo/AndroidException;-><init>()V

    return-object v0
.end method

.method public synthetic get()Ljava/lang/Object;
    .locals 1

    .line 6
    invoke-virtual {p0}, Lo/TransitionValuesMaps;->d()Lo/AndroidException;

    move-result-object v0

    return-object v0
.end method
