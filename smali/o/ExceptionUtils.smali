.class public final Lo/ExceptionUtils;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ajS;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/ajS<",
        "Lo/DisplayMetrics;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Lo/ExceptionUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    new-instance v0, Lo/ExceptionUtils;

    invoke-direct {v0}, Lo/ExceptionUtils;-><init>()V

    sput-object v0, Lo/ExceptionUtils;->a:Lo/ExceptionUtils;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static c()Lo/ExceptionUtils;
    .locals 1

    .line 19
    sget-object v0, Lo/ExceptionUtils;->a:Lo/ExceptionUtils;

    return-object v0
.end method


# virtual methods
.method public b()Lo/DisplayMetrics;
    .locals 1

    .line 15
    new-instance v0, Lo/DisplayMetrics;

    invoke-direct {v0}, Lo/DisplayMetrics;-><init>()V

    return-object v0
.end method

.method public synthetic get()Ljava/lang/Object;
    .locals 1

    .line 6
    invoke-virtual {p0}, Lo/ExceptionUtils;->b()Lo/DisplayMetrics;

    move-result-object v0

    return-object v0
.end method
