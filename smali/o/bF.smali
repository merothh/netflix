.class public final Lo/bF;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ajS;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/ajS<",
        "Lo/bD;",
        ">;"
    }
.end annotation


# static fields
.field private static final c:Lo/bF;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    new-instance v0, Lo/bF;

    invoke-direct {v0}, Lo/bF;-><init>()V

    sput-object v0, Lo/bF;->c:Lo/bF;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static e()Lo/bF;
    .locals 1

    .line 19
    sget-object v0, Lo/bF;->c:Lo/bF;

    return-object v0
.end method


# virtual methods
.method public b()Lo/bD;
    .locals 1

    .line 15
    new-instance v0, Lo/bD;

    invoke-direct {v0}, Lo/bD;-><init>()V

    return-object v0
.end method

.method public synthetic get()Ljava/lang/Object;
    .locals 1

    .line 6
    invoke-virtual {p0}, Lo/bF;->b()Lo/bD;

    move-result-object v0

    return-object v0
.end method
