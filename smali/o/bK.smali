.class public final Lo/bK;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ajS;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/ajS<",
        "Lo/bJ;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Lo/bK;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    new-instance v0, Lo/bK;

    invoke-direct {v0}, Lo/bK;-><init>()V

    sput-object v0, Lo/bK;->a:Lo/bK;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static c()Lo/bK;
    .locals 1

    .line 19
    sget-object v0, Lo/bK;->a:Lo/bK;

    return-object v0
.end method


# virtual methods
.method public a()Lo/bJ;
    .locals 1

    .line 15
    new-instance v0, Lo/bJ;

    invoke-direct {v0}, Lo/bJ;-><init>()V

    return-object v0
.end method

.method public synthetic get()Ljava/lang/Object;
    .locals 1

    .line 6
    invoke-virtual {p0}, Lo/bK;->a()Lo/bJ;

    move-result-object v0

    return-object v0
.end method
