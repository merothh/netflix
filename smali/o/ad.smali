.class public final Lo/ad;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ajS;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/ajS<",
        "Lo/aa;",
        ">;"
    }
.end annotation


# static fields
.field private static final c:Lo/ad;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    new-instance v0, Lo/ad;

    invoke-direct {v0}, Lo/ad;-><init>()V

    sput-object v0, Lo/ad;->c:Lo/ad;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static e()Lo/ad;
    .locals 1

    .line 19
    sget-object v0, Lo/ad;->c:Lo/ad;

    return-object v0
.end method


# virtual methods
.method public a()Lo/aa;
    .locals 1

    .line 15
    new-instance v0, Lo/aa;

    invoke-direct {v0}, Lo/aa;-><init>()V

    return-object v0
.end method

.method public synthetic get()Ljava/lang/Object;
    .locals 1

    .line 6
    invoke-virtual {p0}, Lo/ad;->a()Lo/aa;

    move-result-object v0

    return-object v0
.end method
