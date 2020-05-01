.class public final Lo/PathMotion;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ajS;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/ajS<",
        "Lo/Recolor;",
        ">;"
    }
.end annotation


# static fields
.field private static final b:Lo/PathMotion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    new-instance v0, Lo/PathMotion;

    invoke-direct {v0}, Lo/PathMotion;-><init>()V

    sput-object v0, Lo/PathMotion;->b:Lo/PathMotion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static e()Lo/PathMotion;
    .locals 1

    .line 19
    sget-object v0, Lo/PathMotion;->b:Lo/PathMotion;

    return-object v0
.end method


# virtual methods
.method public c()Lo/Recolor;
    .locals 1

    .line 15
    new-instance v0, Lo/Recolor;

    invoke-direct {v0}, Lo/Recolor;-><init>()V

    return-object v0
.end method

.method public synthetic get()Ljava/lang/Object;
    .locals 1

    .line 6
    invoke-virtual {p0}, Lo/PathMotion;->c()Lo/Recolor;

    move-result-object v0

    return-object v0
.end method
